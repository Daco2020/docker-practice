# 기반 이미지
FROM ubuntu

# 사용자가 지정한 명령
RUN apt-get update \
    && apt-get install -y \
    curl \
    python-dev-is-python3

# 사용할 수 있는 매개변수를 정의한다.
ARG version=1.0

# 이미지의 작업 폴더 지정(경로)
WORKDIR /root

# 로컬에 존재하는 파일을 이미지 안으로 복사
COPY hello.py .

# 환경변수 주입
ENV version $version

# 이미지 실행 시 명령어 # 여기서 'guest'는 sys.argv[1]가 된다.
# CMD ["python", "hello.py", "guest"]

# 실행 명령이 override 되지 않고 실행
ENTRYPOINT ["python", "hello.py"]