# ForwardingDNS - 서버 구축 shell 스크립트 존재 + 예시 환경 파일들도 존재
------------------------
파일들 설명
------------------------
* /etc/named.conf: BIND DNS 서버의 메인 설정 파일로, DNS 서버의 동작을 정의합니다.
* /etc/named.rfc1912.zones: RFC 1912에 맞춘 표준 DNS 영역 설정 파일입니다.
------------------------
* /var/named/example.zone: example.com 도메인의 존 파일로, 해당 도메인의 레코드 정보를 포함합니다.
* /var/named/example.rev: example.com 도메인의 역방향 DNS 조회를 위한 존 파일입니다.
* /var/named/test.zone: test.com 도메인의 존 파일로, 해당 도메인의 레코드 정보를 포함합니다.
------------------------
* /etc/resolv.conf: 시스템의 DNS 서버 설정 파일로, DNS 쿼리를 처리할 서버를 지정합니다.
------------------------

------------------------
Author Information
------------------------
진성은
