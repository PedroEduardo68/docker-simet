FROM debian:bookworm
WORKDIR /tmp
COPY . .
RUN mkdir url
RUN apt-get update
RUN apt-get install sudo wget bash nano systemctl -y
RUN wget https://download.simet.nic.br/medidores/simet-ma/linux/simet-ma.run
RUN chmod +x /tmp/simet-ma.run
RUN sudo ./simet-ma.run
RUN /etc/init.d/simet-lmapd start
RUN /etc/init.d/simet-ma start
RUN chmod 777 runstart.sh
RUN /opt/simet/bin/simet_view_results.sh --url >> /tmp/url/url.txt
CMD ["/bin/bash", "./runstart.sh"]
