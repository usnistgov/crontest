FROM library/postgres:9.6.5

COPY root /var/spool/cron/crontabs
RUN chmod 600 /var/spool/cron/crontabs/root
COPY cron.bash /cron.bash
COPY .pgpass /root/.pgpass
RUN chmod 600 /root/.pgpass
COPY entrypoint.sh /entrypoint.sh
CMD /entrypoint.sh