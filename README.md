# SIMET IN DOCKER 


In this repository, SIMET was installed in a Docker container. To facilitate maintenance, a Docker Compose file was also created.

To execute the software, simply run:


```bash
Docker-compoe up -d
```

The links are stored in /Links/url.txt and are generated every day at 00:05 AM.

Command to generate the link:
```bash
/opt/simet/bin/simet_view_results.sh --url >> /tmp/url/url.txt
```

Command to run SIMET:
```bash
sudo -u nicbr-simet /opt/simet/bin/simet-ma_run.sh;
```