FROM alpine:3.14

RUN apk --no-cache add git \
	&& apk add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
	&& apk add py3-pip

RUN git --version

RUN pip --version

RUN java --version

RUN pip install --ignore-installed distlib pre-commit
