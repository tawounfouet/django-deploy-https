FROM nginx:1.23.0-alpine

COPY ./nginx/* /etc/nginx/
COPY ./run.sh /run.sh

ENV APP_HOST=app
ENV APP_PORT=9000

USER root

RUN apk add --no-cache openssl bash
RUN chmod +x /run.sh

VOLUME /vol/static
VOLUME /vol/www

CMD ["/run.sh"]

# cmd to build image from dockerfile with image name and tag
# docker build -t <image_name>:<tag> <path_to_dockerfile>
# docker build -t nginx-proxy-image .