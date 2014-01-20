#! /bin/sh
. /etc/rc.d/init.d/functions
. ./install_fun.sh
basepath=`pwd`/lock
function isinstalled() {
    num=$1
   case $num in
    1) 
     if [ -e $basepath/jdk.lock ];then
        success
     fi 
    ;;
    3) 
     if [ -e $basepath/playframework.lock ];then
        success
     fi 
    ;;
    4)
     if [ -e $basepath/nginx.lock ];then
        success
     fi 
    ;;
    5) 
     if [ -e $basepath/redis.lock ];then
        success
     fi
    ;;
    6)
     if [ -e $basepath/samba.lock ];then
        success
     fi
    ;;
    7)
     if [ -e $basepath/rsync.lock ];then
        success
     fi
    ;;
    8)
     if [ -e $basepath/mysql.lock ];then
        success
     fi
    ;;
    9)
     if [ -e $basepath/qic.lock ];then
        success
     fi
    ;;
    10) 
      if [ -e $basepath/f10.lock ];then
         success
      fi
    ;;
    *)
        failure
    ;;
 esac
}

function ready() {
    echo "开始进行初始化安装，过程可能需要几分钟，请耐心等待..."
    service iptables stop 
    sed -i '6d' /etc/selinux/config
    sed -i '6iSELINUX=disabled' /etc/selinux/config
    yum install -y gcc
    yum install -y gcc-c++
    yum install -y zib-devel
    yum install -y make
    yum install -y zib
    yum install -y unzip
    yum install -y lsof
    yum install -y vim
    mkdir $basepath
    echo "初始安装完成"
    touch $basepath/ready.lock
    sleep 2
}

if [ ! -e $basepath/ready.lock ];then
     ready
else
    continue  
fi   

a="**********welcome to QIC install page*********** \n 
   版本 : QIC 2.0 \n
   作者 : 潘志威 \n
   email : panzw@gtadata.com \n
   *********welcome to QIC install page*********** \n
   1 jdk  `isinstalled 1` \n
   2 elasticsearch \n
   3 playframework `isinstalled 3` \n
   4 nginx `isinstalled 4` \n
   5 redis `isinstalled 5` \n
   6 samba `isinstalled 6` \n
   7 rsync `isinstalled 7` \n
   8 mysql `isinstalled 8` \n
   9 qic `isinstalled 9` \n
  10 f10 `isinstalled 10` \n
   0 退出 "
echo -e $a
sleep 0.1
source /etc/profile
read -p "请输入要安装的服务所对应的序号:" SERVER_ID
if [ $SERVER_ID == 1 ];then
  jdk_ins
elif [ $SERVER_ID == 2 ];then
  elas_ins
elif [ $SERVER_ID == 3 ];then
  play_ins
elif [ $SERVER_ID == 4 ];then
  nginx_ins 
elif [ $SERVER_ID == 5 ];then
  redis_ins
elif [ $SERVER_ID == 6 ];then
  samba_ins
elif [ $SERVER_ID == 7 ];then
  rsync_ins
elif [ $SERVER_ID == 8 ];then
  mysql_ins
elif [ $SERVER_ID == 9 ];then
  qic_ins
elif [ $SERVER_ID == 10 ];then
  f10_ins
elif [ $SERVER_ID == 0 ];then 
  exit 
else
  exit
fi
