# **Spring Cloud Config Server**

## Description

Spring Cloud Config Server를 기반으로 하며, 중앙 집중식 외부 설정 관리를 위해 HashiCorp Vault와 연동합니다.

## 빌드 방식

다음 명령어를 사용하여 이미지를 빌드할 수 있습니다.

```shell
docker build --build-arg TARGETARCH=arm64 -t spring-cloud-config-server:1.0.0 .
```

**환경 변수 및 Build Args:**

1. **`SPRING_APP_NAME`**: Spring 애플리케이션의 이름을 설정합니다. (필수)
2. **`VAULT_HOST`**: 연결할 Vault 서버의 호스트명 또는 IP 주소. (필수)
3. **`VAULT_KV_VERSION`**: 사용중인 Vault의 키-값 저장소 버전.(필수)
4. **`VAULT_BACKEND`**: Vault의 백엔드 경로.(필수)
5. **`VAULT_PROFILE_SEPARATOR`**: 프로필 구분자.(필수)
6. **`VAULT_TOKEN`**: Vault 서버에 액세스하기 위한 토큰. (필수)
7. **`VAULT_PORT`** (기본값: **`443`**): Vault 서버의 포트 번호.
8. **`VAULT_SCHEME`** (기본값: **`https`**): 연결에 사용할 프로토콜.
9. **`SERVER_PORT`** (기본값: **`8080`**): Spring Cloud Config 서버의 포트.

**빌드 중에 사용할 수 있는 Build Args:**

- **`TARGETARCH`**: 빌드하는 호스트 머신의 아키텍처를 지정합니다. 가능한 값은 `amd64`와 `arm64`입니다. 이 값을 통해 해당 아키텍처에 최적화된 이미지를 빌드할 수 있습니다.

**추가 정보:**

Spring Cloud Config Server의 상세한 설정 방법 및 문서는 [Spring 공식 문서](https://spring.io/projects/spring-cloud-config)에서 확인하실 수 있습니다. Vault와의 통합에 대한 더 자세한 내용은 [HashiCorp Vault 공식 문서](https://www.vaultproject.io/docs)를 참조해 주세요.