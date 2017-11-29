# crontest
Testing a cron based backup for docker based databases

# Backup Container
I originally started to write my own backup container, but I found a nice image that existed.  It's built based on the postgresql:9.4 image, so it can be rebuilt to match the version that we are using.  Just change the FROM line in the dockerfile.  The project source is located at https://github.com/istepanov/docker-pg_dump but I added the code in (just in case it disappears).