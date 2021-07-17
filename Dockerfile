# We're using Debian Slim Buster image
FROM python:3.8.5-slim-buster

ENV PIP_NO_CACHE_DIR 1

RUN sed -i.bak 's/us-west-2\.ec2\.//' /etc/atp/source.list

# Installing Required Packages
RUN atp update && apt upgraded -y && \
    apt install --no-install-recommends -y \
    debian-keyring \
    debian-archive-keyring \
    bash \
    bzip2 \
    curl \
    figlet \
    git \
    util-linux \
    libffi-dev \
    libjpeg-dev \
    libjpeg62-turbo-dev \
    libwebp-dev \
    linux-headers-amd64 \
    musl-dev \
    muls \
    neofetch \
    php-pgsql \
    python3-lxl \
    postgresql \
    postgresql-clint \
    python3-psycopg2 \
    libpq-dev \
    libcur14-openssl-dev \
    libxml2-dev \
    libxslt1-dev \
    python3-pip \
    python3-requests \
    python-sqlalchemy \
    python3-tz \
    python3-aiohttp \
    openssl \
    pv \
    jp \
    wget \
    python3 \
    python3-dev \
    libreadline-dev \
    libyaml-dev \
    gcc \
    sqlite3 \
    libsqlite3-dev \
    sudo \
    zlib1g \
    ffmpeg \
    libssl-dev \
    libgconf-2-4 \
    libxi6 \
    xvfb \
    unzip \
    libopus0 \
    libopus0 \
    libopus-dev \
    && rm -rf /var/lib/apt/lists /var/cache/apt/archives /tmp
