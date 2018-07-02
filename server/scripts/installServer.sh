echo "====================  update to ali resource  ==============="
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum makecache


echo "====================  install mysql  ========================"
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum -y update
yum -y install mysql-server


echo "====================  start mysqld  ========================="
systemctl enable mysqld
systemctl start mysqld


echo "====================  install jdk1.8  ======================="
yum -y install java-1.8.0-openjdk*


echo "====================  install iptables ======================"
yum -y install iptables-services.x86_64
mv /etc/sysconfig/iptables /etc/sysconfig/iptables.bak
wget http://learning.happymmall.com/env/iptables



