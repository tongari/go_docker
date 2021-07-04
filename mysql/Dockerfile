FROM mysql:5.7.31

# Copy the my.cnf
COPY my.cnf /etc/my.cnf
RUN chmod 644 /etc/my.cnf

# Update apt-get.
RUN apt-get update

# Install packages.
RUN apt-get install -y \
    apt-utils \
    locales \
    less

# Set the timezone.
RUN rm -rf /var/lib/apt/lists/* \
    && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen ja_JP.UTF-8 \
    && mv /etc/localtime /etc/localtime.org \
    && ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Add Env.
ENV LC_ALL ja_JP.UTF-8
