<!-- $theme: gaia -->

docker 개요
===

---
  1. 경량 컨테이너
     1. 하이퍼바이저
        1. AWS등의 서비스
        2. HW 레벨 격리
        1. xen, kvm

---
  1. 경량 컨테이너 - cont.
     1. 경량 컨테이너 : 하이퍼바이져가 없다
        ![](https://image.slidesharecdn.com/why-docker-website-130719212914-phpapp01-131208123039-phpapp01/95/hypervisor-versus-linux-containers-with-docker-25-638.jpg)
        1. host와 동일 os, 가볍다, 재시동시간이 짧다
        1. 구동환경의 제약이 적다 : vm 위에서도, 개발환경 / 실운영 환경을 똑같이,  virtualbox, aws, digital ocean
          
---
  1. 패키징
     1. git과 유사한 image 관리방식
     1. github := dockerhub
     1. image 변형/합성이 가능
     1. Dockerfile : script
     1. docker build / push / pull
    
---
  1. docker-machine
     1. boot2docker, docker for windows/mac 의 통합버전
     1. docker 실행을 위한 환경 구성