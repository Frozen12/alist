FROM alpine:3.20.0
RUN apk --no-cache add curl bash tar wget
WORKDIR /opt/alist/

RUN wget "https://github.com/alist-org/alist/releases/download/v3.35.0/alist-linux-amd64.tar.gz"
# Unzip the downloaded file to get the executable file:
RUN tar -zxvf alist-linux-amd64.tar.gz && chmod +x alist



EXPOSE 5244

CMD ["./alist admin set Jenia@High && ./alist start"]
