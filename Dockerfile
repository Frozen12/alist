FROM alpine:3.20.0
RUN apk --no-cache add curl bash tar
WORKDIR /opt/alist/

RUN curl -L https://github.com/xhofe/alist/releases/latest/download/alist-linux-musl-$ARCH.tar.gz -o /opt/alist/alist.tar.gz
# Unzip the downloaded file to get the executable file:
RUN tar -zxvf alist.tar.gz && chmod +x alist



EXPOSE 5244

CMD ["./alist admin set Jenia@High && ./alist start"]
