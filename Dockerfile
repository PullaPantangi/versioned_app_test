FROM nginx:alpine

# Copy app versions
COPY apps/ /usr/share/nginx/html

# Copy nginx template
COPY nginx.conf.template /etc/nginx/templates/nginx.conf.template

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

