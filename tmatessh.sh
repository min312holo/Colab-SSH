pkill -9 tmate
apt install screen
wget -nc https://github.com/tmate-io/tmate/releases/download/2.4.0/tmate-2.4.0-static-linux-i386.tar.xz &> /dev/null
tar --skip-old-files -xvf tmate-2.4.0-static-linux-i386.tar.xz &> /dev/null
rm -f nohup.out; bash -ic 'nohup ./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock new-session -d & disown -a' >/dev/null 2>&1
./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock wait tmate-ready
./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock display -p "Connect with SSH address: #{tmate_ssh}"
./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock display -p "Connect with web: #{tmate_web}"
