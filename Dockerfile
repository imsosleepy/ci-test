# jdk: amazon 구글에 검색
FROM amazoncorretto:17.0.9

WORKDIR /app

# 내 PC -> 도커 이미지 안으로 옮기는 작업
COPY build/libs/*-SNAPSHOT.jar app.jar

# 누군가 이 이미지를 실행시켰을 떄, 자동시작되는 명령어
ENTRYPOINT ["java","-jar","app.jar"]