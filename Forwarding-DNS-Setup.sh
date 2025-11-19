#!/bin/bash
#########################################
# chmod +x Forwarding-DNS-Setup.sh    # 스크립트 실행 권한 부여
# ./Forwarding-DNS-Setup.sh            # 스크립트 실행
#########################################

set -e  # 오류 발생 시 즉시 종료

# BIND와 관련된 패키지 설치 (bind, bind-utils)
yum -q -y bind bind-utils

# 설정 파일을 적절한 위치로 복사
cp -p named.conf /etc/named.conf          # BIND 설정 파일 복사
cp -p named.rfc1912.zones /etc/named.rfc1912.zones  # 존 설정 파일 복사

cp -p example.zone /var/named/example.zone  # example.com 존 파일 복사
cp -p example.rev /var/named/example.rev    # example.com 역방향 존 파일 복사
cp -p test.zone /var/named/test.zone        # test.com 존 파일 복사

# 네트워크 인터페이스 eth0의 DNS 설정 변경
nmcli connection modify eth0 \
  ipv4.dns 192.168.10.20 \        # 기본 DNS 서버 설정 (192.168.10.20)
  +ipv4.dns 8.8.8.8 \             # 보조 DNS 서버 추가 (8.8.8.8)
  ipv4.dns-search example.com      # DNS 검색 도메인 설정 (example.com)

# 네트워크 연결 재시작 (변경 사항 적용)
nmcli connection up eth0
