FROM alpine:3.20.0
RUN apk --no-cache add curl bash
WORKDIR /opt/alist/

RUN curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install /opt/alist/ 
EXPOSE 5244

CMD ["./alist admin set Jenia@High && ./alist start"]
