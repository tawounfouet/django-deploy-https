FROM certbot/certbot:v1.27.0

COPY certity-init.sh /opt/
RUN chmod +x /opt/certity-init.sh

ENTRYPOINT []
CMD ["certbot", "renew"]

# cmd to run container from image with name and tag
# docker run -d --name <container_name> -v <host_path>:<container_path> <image_name>:<tag>
# docker run -d --name cerbot-ssl .