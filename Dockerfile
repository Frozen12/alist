FROM curlimages/curl:latest
WORKDIR /opt/alist/

RUN curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install /opt/alist/ 
EXPOSE 5244

CMD ["sh", "-c", "./alist admin set Jrnia@High && ./alist 
