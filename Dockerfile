FROM alpine:3.20.0
RUN apk --no-cache add curl bash tar wget
WORKDIR /opt/alist/

RUN wget "https://github.com/alist-org/alist/releases/download/v3.35.0/alist-linux-amd64.tar.gz" -P "/opt/alist/"
# Unzip the downloaded file to get the executable file:
RUN tar -zxvf /opt/alist/alist-linux-amd64.tar.gz && chmod +x /opt/alist/alist

EXPOSE 5244

# Use a script to handle multiple commands
CMD ["sh", "-c", "/opt/alist/alist admin set Jenia@High && /opt/alist/alist start"]
