~~~
cd /var/lib
git clone https://github.com/aminamid/gitb.git
cd gitb
./00_install.sh
./01_update.sh 3.7
~~~

~~~
30 3 * * *       bash -l -c "service gitbucket stop 2>&1 | logger -t gitb_stop -p local0.info ; rsync -avz --delete root@host.dom.com:/vol1/gitbucket/data /var/lib/gitb/ 2>&1 | logger -t gitb_sync -p local0.info ; service gitbucket start 2>&1 | logger -t gitb_start -p local0.info ;"
~~~
