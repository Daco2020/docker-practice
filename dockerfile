# 기반 이미지
FROM ubuntu

# 사용자가 지정한 명령
RUN apt-get update \
    && apt-get install -y \
    curl \
    python-dev

# 이미지의 작업 폴더 지정(경로)
WORKDIR /root

# 로컬에 존재하는 파일을 이미지 안으로 복사
COPY hello.py .

# 환경변수 주입
ENV version 1.0

# 이미지 실행 시 명령어
CMD ["python", "hello.py", "guest"]