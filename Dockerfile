FROM ubuntu:24.04
ARG PUSH_URL=https://github.com/kangwenhang/Photos.git
ARG PUSH_BRANCH=main
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    LANG=zh_CN.UTF-8 \
    LC_ALL=C \
    SHELL=/bin/bash \
    DEBIAN_FRONTEND=noninteractive \
    PS1="\u@\h:\w \$ " \
    dir_root=/photos
SHELL ["/bin/bash", "-c"]
WORKDIR ${dir_root}
RUN apt-get upgrade \
    && apt-get update \
    && apt-get install -y bash \
                          git \
                          curl \
                          wget \
                          cron \
                          tzdata \
                          tar \
                          jq \
                          vim \
                          busybox \
                          rsyslog \
                          sudo \
                          postfix \
                          rsync \
                          nodejs \
                          npm \
                          python3 \
                          pip \
                          gcc \
                          libssl-dev \
                          libjpeg-dev \
                          zlib1g-dev \
                          libffi-dev \
                          libheif-dev \
                          libde265-dev \
    && npm config set strict-ssl false \
    && npm install -g pm2 \
    && mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED.bk \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* \
    && git clone -b ${PUSH_BRANCH} ${PUSH_URL} ${dir_root}/repo \
    && cp -rf ${dir_root}/repo/* ${dir_root} \
    && pip install -r /photos/requirements.txt \
    && sed -i 's/$PrivDrop/# $PrivDrop/g' /etc/rsyslog.conf \
    && sed -i '/imklog/s/^/#/' /etc/rsyslog.conf \
    && sed -i 's/#cron/cron/g' /etc/rsyslog.d/50-default.conf \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && ln -sf /bin/bash /bin/sh \
    && chmod +x ${dir_root}/docker/docker-entrypoint.sh
ENTRYPOINT ["./docker/docker-entrypoint.sh"]