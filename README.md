# ForwardingDNS - 서버 구축 스크립트와 예시 환경 파일들 존재
------------------------
파일들 설명
------------------------
* /etc/named.conf: BIND DNS 서버의 메인 설정 파일로, DNS 서버의 동작을 정의.
* /etc/named.rfc1912.zones: RFC 1912에 맞춘 표준 DNS 영역 설정 파일.
------------------------
* /var/named/example.zone: example.com 도메인의 존 파일로, 해당 도메인의 레코드 정보를 포함.
* /var/named/example.rev: example.com 도메인의 역방향 DNS 조회를 위한 존 파일.
* /var/named/test.zone: test.com 도메인의 존 파일로, 해당 도메인의 레코드 정보를 포함.
------------------------
* /etc/resolv.conf: 시스템의 DNS 서버 설정 파일로, DNS 쿼리를 처리할 서버를 지정.
------------------------

------------------------
Author Information
------------------------
진성은
