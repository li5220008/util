#! /bin/sh
filepath=`pwd`

function jdk_ins() {
 source /etc/profile
if [ -n "$JAVA_HOME" ];then
 echo "jdk已经安装"
 sleep 2
 ./qic_install.sh
 else
 echo "jdk is installing..."
 cp $filepath/jdk-6u33-linux-x64.bin  /usr/local
 cd /usr/local
 chmod +x jdk-6u33-linux-x64.bin
 ./jdk-6u33-linux-x64.bin
 if [ $? -eq 1 ];then 
    echo "jdk 安装失败"
    exit 0
 fi
 echo "export JAVA_HOME=/usr/local/jdk1.6.0_33" >> /etc/profile
 echo "export PATH=$PATH:/usr/local/jdk1.6.0_33/bin" >> /etc/profile
 source /etc/profile
 echo "jdk安装完成"
 touch $filepath/lock/jdk.lock
 sleep 2
 cd $filepath
 ./qic_install.sh 
fi
} 

function elas_ins { 
  elasPath="/var/elasticsearch-rtf-master"
  if [ -x "$elasPath" ];then
   echo "elasticsearch已经安装"
   sleep 2
   ./qic_install.sh
  else
   echo "elasticsearch is installing..." 
   cp $filepath/elasticsearch-rtf-master.zip  /var
   cd /var
   unzip elasticsearch-rtf-master.zip
   cd /var/elasticsearch-rtf-master/elasticsearch/bin/service
   chmod +x elas*
   ./elasticsearch install
   echo "elasticsearch安装完成"
   touch $filepath/lock/elas.lock
   sleep 2
   cd $filepath
   ./qic_install.sh
  fi
} 

function play_ins { 
  playPath="/usr/local/play1.2.x_cust"
  if [ -x "$playPath" ];then
    echo "playframework已经安装"
    sleep 2
    ./qic_install.sh
  else
    echo "playframework is installing..."
    cp  $filepath/play.tar.gz  /usr/local/
    cd  /usr/local/
    tar -xzvf play.tar.gz
    echo "export PATH=/usr/local/play1.2.x_cust:$PATH" >> /etc/profile
    source /etc/profile   
    echo "playframework安装完成" 
    touch $filepath/lock/playframework.lock
    sleep 2
    cd $filepath
    ./qic_install.sh
  fi
} 

function nginx_ins {
  nginxpath="/usr/local/nginx"
  if [ -d "$nginxpath" ];then
    echo "nginx已经安装"
    sleep 2
    cd $filepath
    ./qic_install.sh
  else
    echo "nginx is installing..."
    echo "安装pcre"
    sleep 1
    cd $filepath
    tar -xzvf pcre-8.21.tar.gz
    cd pcre-8.21
    ./configure
    make && make install
    echo "安装chunkin"
    sleep 1
    cd $filepath
    unzip chunkin-nginx.zip
    echo "安装nginx"
    sleep 1
    tar -xzvf nginx-1.2.7.tar.gz	     
    cd nginx-1.2.7
    ./configure --add-module=/var/soft/qic_install_tool/chunkin-nginx
    make && make install
    cp  $filepath/conf/nginx.conf  /usr/local/nginx/conf/
    cp  $filepath/shell/nginx  /etc/init.d
    chmod +x /etc/init.d/nginx
    echo "nginx安装完成"
    touch $filepath/lock/nginx.lock
    sleep 2
    cd $filepath
    ./qic_install.sh
  fi
}

function samba_ins {
    yum -y install samba
    echo "samba安装完成"
    sleep 2
    echo "为系统添加用户名密码均为gta的用户,请输入gta"
    sleep 2
    useradd gta 
    passwd gta
    sleep 2
    echo "添加samba用户"
    sleep 2
    echo "添加用户，请输入gta"
    smbpasswd -a gta 
    echo "修改gta密码，请输入gta"
    smbpasswd gta 
    echo "用户添加完成"
    echo "[strategies]" >> /etc/samba/smb.conf
    echo "comment = qic strategies" >> /etc/samba/smb.conf
    echo "path = /var/data/iquantUploadDir" >> /etc/samba/smb.conf
    echo "valid users=gta" >> /etc/samba/smb.conf
    echo "public = yes" >> /etc/samba/smb.conf
    echo "writable = no" >> /etc/samba/smb.conf
    echo "printable = no" >> /etc/samba/smb.conf
    echo "create mask = 0777" >> /etc/samba/smb.conf
    echo "samba安装完成"
    touch $filepath/lock/samba.lock
    sleep 2
    cd $filepath
    ./qic_install.sh
}

function redis_ins {
  redispath="/var/soft/qic_install_tool/redis-2.4.17"
  if [ -d "$redispath" ];then
    echo "redis已经安装"
    sleep 2
    ./qic_install.sh
  else
    echo "redis is installing..."
    sleep 1
    cd $filepath
    tar -xzvf redis-2.4.17.tar.gz
    cd redis-2.4.17
    make install
    cd utils
    echo "提示信息只需按enter即可"
    sleep 2
    ./install_server.sh
    echo "redis安装完成"
    touch $filepath/lock/redis.lock
    sleep 2
    cd $filepath
    ./qic_install.sh
  fi
}

function rsync_ins {
  rsyncdpath="/etc/rsyncd"
  if [ -d "$rsyncdpath" ];then
    echo "rsyncd已经安装配置"
    sleep 2
    ./qic_install.sh
  else
    echo "rsync is installing"
    sleep 2
    mkdir /etc/rsyncd && cd /etc/rsyncd
    touch rsyncd.conf
    echo "# Distributed under the terms of the GNU General Public License v2" >> rsyncd.conf
    echo "# Minimal configuration file for rsync daemon" >> rsyncd.conf
    echo "# See rsync(1) and rsyncd.conf(5) man pages for help" >> rsyncd.conf
    echo "# This line is required by the /etc/init.d/rsyncd script" >> rsyncd.conf
    echo "pid file=/var/run/rsyncd.pid" >> rsyncd.conf
    echo "port=873" >> rsyncd.conf
    echo "uid=nobody" >> rsyncd.conf
    echo "gid=nobody" >> rsyncd.conf
    echo "use chroot=yes" >> rsyncd.conf
    echo "read only=yes" >> rsyncd.conf
    echo "#limit access to private LANs" >> rsyncd.conf
    echo "hosts allow=*" >> rsyncd.conf
    echo "# hosts deny=*" >> rsyncd.conf
    echo "max connections=20" >> rsyncd.conf
    echo "motd file=/etc/rsyncd/rsyncd.motd" >> rsyncd.conf
    echo "#This will give you a separate log file" >> rsyncd.conf
    echo "log file=/var/log/rsync.log" >> rsyncd.conf
    echo "log format=%t %a %m %f %b" >> rsyncd.conf
    echo "syslog facility = local3" >> rsyncd.conf
    echo "timeout = 300" >> rsyncd.conf
    echo "[strategy]" >> rsyncd.conf
    echo "path=/var/data/iquantUploadDir/" >> rsyncd.conf
    echo "list=yes" >> rsyncd.conf
    echo "ignore errors" >> rsyncd.conf
    echo "#auth users=root" >> rsyncd.conf
    echo "secrets file=/etc/rsyncd/rsyncd.secrets" >> rsyncd.conf
    touch rsyncd.motd
    echo "++++++++++++++++++++++++++++++++++++++++++++++" >> rsyncd.motd
    echo "Welcome to iquant web server" >> rsyncd.motd
    echo "2002------2020" >> rsyncd.motd
    echo "++++++++++++++++++++++++++++++++++++++++++++++" >> rsyncd.motd
    touch rsyncd.secrets
    echo "root:111111" >> rsyncd.secrets
    echo "web:111111" >> rsyncd.secrets
    chmod 600 rsyncd.secrets
    echo "/usr/bin/rsync --daemon --config=/etc/rsyncd/rsyncd.conf" >> /etc/rc.local
    /usr/bin/rsync --daemon --config=/etc/rsyncd/rsyncd.conf
    echo "软硬件环境配置完毕"
    touch $filepath/lock/rsync.lock
    sleep 2
    cd $filepath
    ./qic_install.sh
  fi
}

function mysql_ins {
    mysqlpath="/usr/local/mysql-5.5.28"
  if [ -d "$mysqlpath" ];then
    echo "mysql已经安装"
    sleep 2
    ./qic_install.sh
  else
    echo "mysql is installing..."
    sleep 2
    yum remove mysql mysql-*
    groupadd mysql
    yum install ncurses-devel
    yum install bison
    cd $filepath
    tar -zxvf cmake-2.8.6.tar.gz
    cd cmake-2.8.6
    ./configure
    make
    make install
    useradd -g mysql mysql -s /bin/false
    mkdir -p /var/data/mysql
    chown -R mysql:mysql /var/data/mysql
    mkdir -p /usr/local/mysql
    cd $filepath
    cp  mysql-5.5.28.tar.gz /usr/local/ && cd /usr/local
    tar zxvf mysql-5.5.28.tar.gz
    cd mysql-5.5.28
    /usr/local/bin/cmake . -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/var/data/mysql  -DSYSCONFDIR=/etc
    make 
    make install
    cd  /usr/local/mysql  
    cp $filepath/conf/my.cnf.cnf  /etc/my.cnf
    ./scripts/mysql_install_db --user=mysql
    cp ./support-files/mysql.server  /etc/rc.d/init.d/mysqld
    chmod 755 /etc/init.d/mysqld
    chkconfig mysqld on
    sed -i '46d' /etc/rc.d/init.d/mysqld 
    sed -i '46d' /etc/rc.d/init.d/mysqld

    sed -i '46ibasedir=/usr/local/mysql' /etc/rc.d/init.d/mysqld
    sed -i '47idatadir=/var/data/mysql' /etc/rc.d/init.d/mysqld
    service mysqld start
    echo "export PATH=$PATH:/usr/local/mysql/bin" >> /etc/profile
    echo "mysql安装完成"
    touch $filepath/lock/mysql.lock	
    sleep 2 
    cd $filepath
    ./qic_install.sh
  fi   
} 
 
function qic_ins {
  qicpath="/var/myApp/QIC"
  if [ -d "$qicpath" ];then
    echo "qic已经安装"
    sleep 2
    ./qic_install.sh
  else
    read -p "请输入qsm数据库服务器ip:" qsmip
    echo "$qsmip qsmDbserver" >> /etc/hosts
    read -p "请输入qic?_db数据库服务器ip:" qicip
    echo "$qicip qicDbServer" >> /etc/hosts
    read -p "请输入gta_data数据库服务器ip:" gtadata
    echo "$gtadata gtaDataDbServer" >> /etc/hosts
    echo "qic is installing..."
    sleep 2
    cd /var/myApp
    unzip qic.zip
    cd  /var/myApp/qic/sso
    play deps
    cd  /var/myApp/qic/iquantServer
    play deps
    cd  /var/myApp/qic/iquantClient
    play deps
    cp $filepath/shell/sso  /etc/init.d
    chmod +x /etc/init.d/sso
    cp $filepath/shell/qic  /etc/init.d
    chmod +x /etc/init.d/qic
    echo "qic安装完成"
    touch $filepath/lock/qic.lock
    sleep 2
    cd $filepath
    ./qic_install.sh	
  fi
}  

function f10_ins { 
    f10path="/var/myApp/f10"
    if [ -d "$f10path" ];then
      echo "f10已经安装" 
      sleep 2
      ./qic_install.sh
    else
      echo "f10 is installing..."
      read -p "请输入search服务安装服务器的ip:" full
      echo "$full fulltextSearchAppServer" >> /etc/hosts
      read -p "请输入elasticsearch服务安装的ip:" elas
      echo "$elas elasticsearchServer" >> /etc/hosts
      read -p "请输入资讯服务队列变化redis的ip:" fullsearch
      echo "$fullsearch fullserachRecordChangeQueueRedisServer" >> /etc/hosts
      read -p "请输入F10变化队列redis的ip:" dbrecord
      echo "$dbrecord dbRecordChangeQueueRedisServer" >> /etc/hosts
      sleep 2
      cd $filepath
      cp f10.tar.gz /var/myApp
      tar –xzvf  f10.tar.gz
      cd  /var/myApp/f10/Trunk/f10Scheduling
      play deps
      cd  /var/myApp/f10/Trunk/f10
      play deps
      cd  /var/myApp/f10/Trunk/search
      play deps
      cp $filepath/shell/f10  /etc/init.d
      chkconfig  f10  on	
      cp $filepath/shell/qsearch  /etc/init.d
      chkconfig   qsearch  on
      echo "f10安装完成"
      touch $filepath/lock/f10.lock
      sleep 2
      cd $filepath
      ./qic_install.sh
    fi
} 
