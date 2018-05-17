# Amazon Web Services 로 시작하는 클라우드 입문


## 클라우드의 역할

### 시스템 기반과 기존 인프라의 문제점

- 시스템 기반이란?

- Note: 업무 시스템으로 이용되고 있는 주요 서버

- 데이터 센터 보유의 문제점

### 클라우드 시스템이란?

- 클라우드의 서비스 체계

- 클라우드는 만능인가?

- Note: 클라우드 퍼스트(Cloud First)

### 주요 클라우드 서비스

- Amazon Web Services

- Microsoft Azure

- IBM SoftLayer / Bluemix

- Google Cloud Platform

- 사쿠라 클라우드

- 니프트 클라우드

### 클라우드 서비스의 활용 사례

- 빅 데이터

- 업무 시스템으로 클라우드 활용

- 모바일 앱의 백 엔드 기능

- 재해 복구(Disaster Recovery) 시스템

## AWS 기본과 계정 등록

### Amazon Web Services에서 제공하는 서비스

- 컴퓨팅 관련 서비스

- 스토리지 & 콘텐츠 전송 관련 서비스

- 데이터베이스 관련 서비스

- 네트워크 관련 서비스

- 기타 서비스

### AWS 클라우드 디자인 패턴

- Multi-Server 패턴(서버의 다양화)

- Scale Up 패턴(서버의 확장/축소)

- DB Replication 패턴(데이터베이스 복제)

- Functional Firewall 패턴(계층별 접속)

### AWS 데이터 센터

- 리전(Region)

- Availability Zone(AZ)

### AWS 계정 등록 및 사용

- AWS 계정 등록

- AWS의 요금 체계와 무료 이용 한도

### AWS 개발 도구

- AWS 관리 콘솔

- Note: Web 관리 콘솔의 바로가기(Short Cut) 생성

- AWS 명령 라인 인터페이스(CLI, Command Line Interface)

- 소프트웨어 개발 키트(SDK, Software Development Kit)

- 통합 개발 환경(IDE, Integrated Development Environment)의 플러그인(Plug-In)

## Web 서버 구축

### Web의 구조와 HTTP 통신의 기본

- Web 애플리케이션?

- Web 서버에 대한 Request(요청)과 Response(응답)

- Web 서버에 접속과 URL 서식

- IP 주소와 도메인 이름

- HTTP 통신의 구조

- Note: Well Known PORT

### S3를 사용한 Web 사이트 구축

- Amazon Simple Storage Service(Amazon S3)란?

- S3의 기본 영어

- S3를 사용한 Web 사이트 구축

- Note: 기밀 정보 관리

### EC2를 사용한 Web 서버 구축

- Amazon Elastic Compute Cloud(Amazon EC2)란?

- Note: 사이징(Sizing)의 어려움

- EC2의 기본 용어

- EC2 인스턴스 가동

- EC2 인스턴스 상태 확인

- Web 서버 설치

- Note: 키 파일 관리

- Note: 패키지 관리 시스템

- Web 콘텐츠 업로드와 동작 확인

- Note: SCP

- EC2 인스턴스의 시작/정지/재가동/삭제

### ELB를 사용한 부하 분산

- 커스텀 AMI에 의한 EC2 인스턴스 생성

- ELB에 의한 부하 분산 시스템 구축

- ELB 동작 확인

### Elastic IP를 사용한 독자 도메인으로 사이트 운용

- 고정 IP 주소(Elastic IP) 할당

- Note: Elastic IP 주소 제한

- Route 53에 의한 DNS 서버 설정

### CloudFront를 사용한 데이터 전달

- CloudFront란?

- CloudFront를 사용한 Web 콘텐츠 배포

## Web 애플리케이션 서버 구축

### Web 애플리케이션 아키텍처 기본

- Web 시스템 아키텍처

- AWS에서 Web 시스템 아키텍처

- Note: 서버리스(Serverless) 아키텍처

### 애플리케이션 개발 환경 구축

- 통합 개발 환경

- Eclipse와 AWS Toolkit 설치

- AWS Toolkit의 설정

- Note: 인증 정보 관리

### MySQL에 의한 데이터베이스 서버 구축

- Amazon Relational Database Service(RDS)란

- Note: 관계형 데이터베이스

- Note: ADO.NET

- Note: IOPS

- 보안 그룹 생성

- Parameter Group 생성

- Note: Option Group과 Subnet Group

- RDS 인스턴스 생성

- Note: RDS 무료 이용 한도

- 데이터 등록(AWS Toolkit에 의한 실행)

- 데이터 등록(MySQL 명령 라인에서 SQL 실행)

### Tomcat을 이용한 Web 애플리케이션 서버 구축

- Apache Tomcat이란?

- 보안 그룹 생성

- EC2 인스턴스 시작

- Note: AWS 관리 콘솔에서 EC2 인스턴스를 생성하는 경우

- Apache Tomcat 설치

- JDBC 드라이버 설치

- Note: JDBC란?

- Web 애플리케이션 Deploy

- Tomcat 8 기동

- Web 애플리케이션 동작 홧인

- Web 애플리케이션 서버용 AMI 생성

## 네트워크 구축

### 네트워크 기초 기술

- 네트워크 Address(Network Address)

- Note: IP Address의 고갈

- Note: 네트워크 Address 부문과 호스트 Address 부문에 대한 생각

- 네트워크 프로토콜(Protocol)

- 방화벽(Firewall)과 라우터(Router)

### 보안 그룹(Security Group)에 의한 패킷 필터링

- 보안 그룹

- 보안 정책(Security Policy)의 검토

- Note: 방화벽 설정

- EC2 보안 그룹 수정 절차

- RDS 보안 그룹 수정 절차

- 보안 설정에 대한 동작 홧인

### VPC에 의한 가상 네트워크 구축

- Amazon VPC란?

- 네트워크 구성의 검토

- 가상 네트워크(VPC) 생성

- 가상 라우터(인터넷 게이트웨이) 생성

- 방화벽(보안 그룹) 생성

- 서버(인스턴스 생성)

- Load Balancer 생성

- 관리를 위한 네트워크 구성

- Maintenance 환경 동작 확인

## AWS Security

### Security 기초 기술

- Security란?

- Note: Web 애플리케이션에 대한 대표적인 공격

- 물리적 보안 대책

- 계정 관리

- 데이터 암호화

- 사용자 교육

- 보안 감사

- Note: 제3자 인증에 대해서

- AWS 공유 책임 모델

### IAM을 이용한 사용자 계정 관리

- IAM은?

- AWS 사용자 계정

- 다요소 인증(MFA, Multi Factor Authentication) 설정

- Note: 원 타임 패스워드(OTP, One Time Password)

- IAM 계정 생성

- IAM 그룹 작성

- 패스워드 정책의 설정

### 데이터 암호화

- EC2 인스턴스에 SSH 접속

- Note: 키 페어 Import

- S3 데이터 암호화

- RDS 데이터 암호화

## 시스템 운용

### 시스템 운용의 기본

- Note: SLA(Service Level Agreement)

- 용량 관리

- 가용성 관리

- 구성 관리/변경 관리

- 서비스 운용

- Note: 통합 운용 관리 도구

### CloudWatch에 의한 감시

- CloudWatch란?

- EC2 인스턴스에 대한 실시간 감시

### CloudFormation에 의한 구성 관리

- CloudFormation이란?

- Note: AWS에 의한 구성 관리

- WordPress 환경의 자동 구성

### 데이터의 백업과 복구

- EC2의 데이터 백업과 복구

- RDS의 데이터 백업과 복구

### 과금 관리

- 이용 요금의 확인

## Docker 컨테이너 운영 환경 구축

### Docker란?

- Docker란?

- Note: 소프트웨어 이식성(Portability)

- 가상화 기술이란?

- Note: 소프트웨어의 상호 운용성(Interoperability)

- Docker의 기능

### Docker 설치

- Docker에서 제공하는 컴포넌트

- Note: Docker for Windows/Mac

- Windows 클라이언트에 설치

- Docker에서 “Hello World”

### Docker 이미지 생성

- Dockerfile이란?

- Dockerfile 생성

- Note: 참조 구현이란?

- Dockerfile의 Docker 이미지 생성

### Docker 이미지 생성

- Docker Hub 계정 등록

- Docker Hub에 공개

- Note: Docker에서 Java를 실행할 때 주의사항

### AWS에서 Docker 컨테이너 실행

- EC2를 사용하는 방법

- ECS를 사용하는 방법

- Elastic Beanstalk를 사용하는 방법

### EC2에서 Docker 실행 환경의 구축

- EC2에 대한 Docker 설치

- Note: 명령어로 Docker의 실행 환경을 구축하려면

- Docker 컨테이너 실행

- Docker 컨테이너의 기본 조작

### EC2 Container Service에 의한 Docker 실행 환경 구축

- EC2 Container Service란?

- Docker 클러스터 구축

- Docker 클러스터 운용

