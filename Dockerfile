ARG TARGETARCH


# arm64 아키텍처에 대한 이미지
FROM arm64v8/openjdk:22-slim-bullseye AS base-arm64
# x86_64 / amd64 아키텍처에 대한 이미지
FROM openjdk:17-jdk-alpine AS base-amd64


# 조건부로 중간 스테이지 선택
FROM base-$TARGETARCH AS base

# JAR 파일을 이미지 내로 복사
COPY build/libs/*.jar app.jar

# 컨테이너가 시작될 때 실행될 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
