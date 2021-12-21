FROM direvius/yandex-tank
LABEL maintainer="Nakajiss"
COPY . ./data
RUN yandex.tank
