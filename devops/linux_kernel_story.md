# 리눅스 커널 이야기


## 시스템 구성 정보 확인하기

- 커널 정보 확인하기

- CPU 정보 확인하기

- 메모리 정보 확인하기

- 디스크 정보 확인하기

- 네트워크 정보 확인하기

- 요약

## top을 통해 살펴보는 프로세스 정보들

- 시스템의 상태 살피기

- VIRT, RES, SHR ..?

- 프로세스의 상태 보기

- 프로세스의 우선순위

- 요약

## Load Average와 시스템 부하

- Load Average의 정의

- Load Average 계산 과정

- CPU Bound vs I/O Bound

- vmstat으로 부하의 정체 확인하기

- Load Average가 시스템에 끼치는 영향

- Case Study - OS 버전과 Load Average

- 요약

## free 명령이 숨기고 있는 것들

- 메모리 사용량 확인하기

- buffers와 cached 영역

- /proc/meminfo 읽기

- Slab 메모리 영역

- Case Study - Slab 메모리 누수

- 요약

## Swap, 메모리 증설의 포인트

- Swap 영역

- 버디 시스템

- 메모리 재할당 과정

- Vm.swappiness와 vm.vfs_cache_pressure

- 메모리 증설의 포인트

- Case Study - gdb를 이용해서 메모리 누수 잡기

- 요약

## NUMA, 메모리 관리의 새로운 세계

- NUMA 아키텍처

- 리눅스에서의 NUMA 확인

- 메모리 할당 정책별 특징

- Nomad를 이용한 메모리 할당 관리

- Vm.zone_reclaim_mode 커널 파라미터

- NUMA 아키텍처의 메모리 할당 정책과 워크로드

- 요약

## TIME_WAIT 소켓이 서비스에 미치는 영향

- TCP 통신 과정

- TIME_WAIT 소켓의 문제점

- 클라이언트에서의 TIM_WAIT

- Net.ipv4.tcp_tw_reuse

- ConnectionPool 방식 사용하기

- 서버 입장에서의 TIME_WAIT 소켓

- net.ipv4.tcp_tw_recycle

- Keepalive 사용하기

- TIME_WAIT 상태의 존재 이유

- Case Study - nginx upstream에서 발생하는 TIME_WAIT

- 요약

## TCP Keepalive를 이용한 세션 유지

- TCP Keepalive란

- TCP Keepalive의 파라미터들

- TCP Keepalive와 좀비 커넥션

- TCP Keepalive와 HTTP Keepalive

- Case Study - MQ 서버와 로드 밸런서

- 요약

## TCP 재전송과 타임아웃

- TCP 재전송과 RTO

- 재전송을 결정하는 커널 파라미터

- 재전송 추적하기

- RTO_MIN 값 변경하기

- 애플리케이션 타임아웃

- 요약

## dirty page가 I/O에 끼치는 영향

- dirty page란

- dirty page 관련 커널 파라미터

- 백그라운드 동기화

- dirty page 설정과 I/O 패턴

- 요약

## I/O 작업이 지나가는 관문, I/O 스케줄러

- I/O 스케줄러의 필요성

- I/O 스케줄러 설정

- Cfq I/O 스케줄러

- Deadline I/O 스케줄러

- Noop I/O 스케줄러

- cfq와 deadline의 성능 테스트

- I/O 워크로드 살펴보기

- 요약

## 애플리케이션 성능 측정과 튜닝

- 애플리케이션 만들기

- 성능 테스트 시작

- CPU 성능 최적화하기

- 네트워크 소켓 최적화하기

- nginx를 통해 reverse proxy 설정하기

- 요약

## 커널 디버깅을 위한 커널 컴파일

- 커널 소스 컴파일하기

- printk() 함수 추가하기

- printk() 함수로 Load Average 계산 과정 살펴보기

- 요약

## strace를 통한 애플리케이션 분석

- strace의 기본 사용법

- Hostname 명령 분석하기

- 요약

## tcmpdump와 와이어샤크를 통한 TCP 패킷 분석

- tcpdump의 사용법

- 와이어샤크 사용법

- 요약

