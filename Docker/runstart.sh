(crontab -l; echo "1 0 * * * echo " " >> /tmp/url/url.txt") | crontab -;
(crontab -l; echo "2 0 * * * echo "Renewal" >> /tmp/url/url.txt") | crontab -;
(crontab -l; echo "3 0 * * * date >> /tmp/url/url.txt") | crontab -;
(crontab -l; echo "5 0 * * * /opt/simet/bin/simet_view_results.sh --url >> /tmp/url/url.txt") | crontab -;
sudo -u nicbr-simet /opt/simet/bin/simet-ma_run.sh;
echo " " >> /tmp/url/url.txt
echo "Starting" >> /tmp/url/url.txt
date >> /tmp/url/url.txt
/opt/simet/bin/simet_view_results.sh --url >> /tmp/url/url.txt;
sleep infinity;