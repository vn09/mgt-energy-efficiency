cd ~ && wget https://sourceforge.net/projects/net-snmp/files/net-snmp/5.7.3/net-snmp-5.7.3.tar.gz
cd ~ && tar -zxvf net-snmp-5.7.3.tar.gz
cd ~ && mv net-snmp-5.7.3 net-snmp

sudo apt-get install libperl-dev
cd ~/net-snmp/ && ./configure --with-default-snmp-version="3" --with-sys-contact="@@no.where" --with-sys-location="Unknown" --with-logfile="/var/log/snmpd.log" --with-persistent-directory="/var/net-snmp" && make && sudo make install
echo "export LD_LIBRARY_PATH=/usr/local/lib" >> ~/.bashrc
source ~/.bashrc

snmpget --version
