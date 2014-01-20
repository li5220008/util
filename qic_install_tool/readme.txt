#ntp时间同步
/usr/sbin/ntpdate time-b.timefreq.bldrdoc.gov
service ntpd start
xshell要能上传文件服务端安装:yum -y install lrzsz(centos)  ubantu age-get install lrzsz
----------------------------------------------------------------------
1. 去掉linux服务器的ssh反向解析域名(主要是解决 ssh 第一次登陆很慢的问题)

a. 
vi /etc/ssh/sshd_config   找到 #UseDNS yes 把这行的注释去掉, 把yes改成no
UseDNS no  (注意这里的no不能大写)

b. 
重启 ssh服务
# /etc/rc.d/init.d/sshd restart

cat /etc/sysconfig/network   记录了主机名. (HOSTNAME)

要把相应的主机名对应的ip地址写入到 /etc/hosts 文件里去. 
127.0.0.1   101-103(主机名)


http://blog.163.com/qiushuhui1989@126/blog/static/270110892011824114147246/  centos 6关闭ipv6  
-----------------------------------------------------------------------
让CentOS系统时间同步
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  #设置为上海时间
ntpdate us.pool.ntp.org  #同步

没有安装ntpdate的可以yum一下:
yum install -y ntpdate

加入定时计划任务，每隔10分钟同步一下时钟
crontab -e
0-59/10 * * * * /usr/sbin/ntpdate us.pool.ntp.org | logger -t NTP
-----------------------------------------------------------------------

yum install fonts-chinese
yum install fonts-ISO8859-2 
http://blog.csdn.net/cnpdn/article/details/5645765

nohup ./start.sh &>/dev/null &    放入后台运行

nohup 

a. 检查时间是否对:
  date
修改时间
  date -s "2012-07-30 14:39:20"
把修改的时间写入CMOS
  clock -w 


0. 先删除掉系统带的yum的mysql5.1
   yum remove mysql mysql-*

1. 下载cmake, mysql5.5.25a

   wget http://www.cmake.org/files/v2.8/cmake-2.8.8.tar.gz
   wget http://mysql.mirror.kangaroot.net/Downloads/MySQL-5.5/mysql-5.5.25a.tar.gz
   
2. 安装cmake
   # 安装c 编译器
   yum install gcc
   
   # 安装 c++ 编译器
   yum install gcc-c++
   
   # 在CentOS下需要安装ncurses-devel
   yum install ncurses-devel
   
   # 安装 bison
   yum install bison 
   
   tar zxvf cmake-2.8.8.tar.gz
	cd cmake-2.8.8
	./configure
	make           #编译
	make install   #安装
	
这样就把 cmake 安装到了  /usr/local/bin/cmake  
/usr/local/bin/cmake
-- Installing: /usr/local/bin/cpack
-- Installing: /usr/local/bin/ctest
-- Installing: /usr/local/man/man1/cmake.1
Installing: /usr/local/share/cmake-2.8/Modules/
	
3、安装MySQL
  groupadd mysql  #添加mysql组
  useradd -g mysql mysql -s /bin/false  #创建用户mysql并加入到mysql组，不允许mysql用户直接登录系统
  mkdir -p /var/data/mysql  #创建MySQL数据库存放目录
  chown -R mysql:mysql /var/data/mysql   #设置MySQL数据库目录权限
  mkdir -p /usr/local/mysql #创建MySQL安装目录
  cd /usr/local/soft
  tar zxvf mysql-5.5.25.tar.gz  #解压
  cd mysql-5.5.25
  cmake . -DCMAKE_INSTALL_PREFIX=/usr/local/mysql  -DMYSQL_DATADIR=/var/data/mysql  -DSYSCONFDIR=/etc   #配置
  make #编译
  make install  #安装
  cd /usr/local/mysql
  cp ./support-files/my-huge.cnf  /etc/my.cnf   #拷贝配置文件（注意：如果/etc目录下面默认有一个my.cnf，直接覆盖即可）
  vi /etc/my.cnf   #编辑配置文件,在 [mysqld] 部分增加下面一行
  datadir = /var/data/mysql  #添加MySQL数据库路径
  :wq  #保存退出
  ./scripts/mysql_install_db --user=mysql  #生成mysql系统数据库
  cp ./support-files/mysql.server  /etc/rc.d/init.d/mysqld  #把Mysql加入系统启动
  chmod 755 /etc/init.d/mysqld   #增加执行权限
  chkconfig mysqld on  #设置开机启动
  vi /etc/rc.d/init.d/mysqld  #编辑
  basedir = /usr/local/mysql   #MySQL程序安装路径
  datadir = /var/data/mysql  #MySQl数据库存放目录
  service mysqld start  #启动
  vi /etc/profile   #把mysql服务加入系统环境变量：在最后添加下面这一行
  export PATH=$PATH:/usr/local/mysql/bin
  :wq! #保存退出
  
  下面这两行把myslq的库文件链接到系统默认的位置，在编译类似PHP等软件时可以不用指定mysql的库文件地址。
  ln -s /usr/local/mysql/lib/mysql /usr/lib/mysql
  ln -s /usr/local/mysql/include/mysql /usr/include/mysql
  shutdown -r now     #需要重启系统，等待系统重新启动之后继续在终端命令行下面操作
  mysql_secure_installation    #设置Mysql密码
  根据提示按Y 回车
  然后输入2次密码
  继续按Y 回车，直到设置完成
  或者直接修改密码/usr/local/mysql/bin/mysqladmin -u root -p password "123456" #修改密码
  service mysqld restart  #重启
  到此，mysql安装完成！
	
关闭mysql在linux下的表名区分大小写:
  vi /etc/my.cnf
  
  在 [mysqld]下面增加两行
lower_case_table_names = 1
skip-name-resolve  #这个是去掉mysql的从ip地址反向解析域名
	
	
================================
移除 openjdk
yum remove java-1.6.0-openjdk

编辑:
/etc/profile

export JAVA_HOME=/usr/local/jdk1.6.0_33
export ANT_HOME=/usr/local/ant184
export M2_HOME=/usr/local/maven304
export PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin:$M2_HOME/bin

执行生效:
source /etc/profile

yum install gcc
yum install gcc-c++
yum install ncurses-devel
yum install bison


==============================
参考:
安装mysql http://ylw6006.blog.51cto.com/470441/883598  
http://www.osyunwei.com/archives/4199.html   http://www.jz123.cn/text/2937389.html    http://ylw6006.blog.51cto.com/470441/883598  http://dev.mysql.com/doc/refman/5.5/en/linux-installation.html

安装mysql:   http://htnecro.iteye.com/blog/1007597

mysql 配制参数
http://www.ha97.com/4110.html

yum 命令
http://www.cnblogs.com/chuncn/archive/2010/10/17/1853915.html


=======================检查每个进程打开的文件数限制
1. 使用 ulimit -n  查看当前系统允许每个进程打开的文件数(这里的文件数, 包括socket连接)

默认为 1024,  不过这个值一般不能满足于我们做为服务器的配置. 

2. 修改. 

  vi  /etc/security/limits.conf
在文件的最后一行加上. 
  *  -  nofile  65535
  
解释:
* 代表针对所有用户       
noproc 是代表最大进程数       
nofile 是代表最大文件打开数 

  vi /etc/sysctl.conf
在最后一行加上:  
  fs.file-max=65536


参考:  http://www.ibm.com/developerworks/cn/linux/l-cn-ulimit/
http://blog.sina.com.cn/s/blog_485acedb0100cwc5.html

---云服务的配制
Max open file descriptors(startApp.sh )
 ulimit  -n 3000000
 
System wide secngs for file descriptors(/etc/sysctl.conf)
fs.nr_open = 6291456 
fs.file-max = 6291456 

System wide limit for open files per user
(/etc/security/ limits.conf )
 * hard    nofile   6291456




================
mysql 配制文件  /etc/my.cnf 



------------------------------------
lsb_release -a  # 查看发行版本信息

free 查看内存使用

/proc 下面的
cat /proc/meminfo   #查看内存信息

cat /proc/cpuinfo   #查看cpu信息

dmidecode | grep cpu


----------------------------------------
安装 redis 

下载 http://redis.googlecode.com/files/redis-2.4.17.tar.gz
解压, 执行 make install 这样会把redis安装到 /usr/local/bin 下. 然后进入 util目录, 执行install_server.sh 可按步骤来配制redis
redis  配制信息:
执行文件放在: /usr/local/bin   下面, 包含  redis-benchmark  redis-check-aof  redis-check-dump  redis-cli  redis-server
端口:  6379
配制文件:  /etc/redis/6379.conf
log 文件:  /var/log/redis_6379.log
数据目录:  /var/lib/redis/6379
后台运行,pid文件为:  /var/run/redis_6379.pid
要改 /etc/redis/6379.conf 里的 loglevel 为 notice. 
会放入到 /etc/init.d/redis_6379 自动启动文件. 启动的级别为3,4,5
启动redis   service redis_6379 start   停止  service redis_6379 stop

vi /etc/sysctl.conf  加上 vm.overcommit_memory = 1
或者  执行 sysctl vm.overcommit_memory=1

--------------------------使用Redmon 对redis进行监控. Redmon是个ruby程序
1. 安装ruby 
#get root access
$su -
$ cd /tmp
 
#Remove old Ruby
$ yum remove ruby
 
# Install dependencies
$ yum groupinstall "Development Tools"
$ yum install zlib zlib-devel
$ yum install openssl-devel
$ wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz
$ tar xzvf yaml-0.1.4.tar.gz
$ cd yaml-0.1.4
$ ./configure
$ make
$ make install
 
# Install ruby
# 使用toabao的源, 在天朝的环境里你才能安装上
$ wget http://ruby.taobao.org/mirrors/ruby/ruby-1.9.3-p362.tar.gz
$ tar zxf ruby-1.9.3-p362.tar.gz
$ cd ruby-1.9.3-p362
$ ./configure
$ make
$ make install
 

#修改源指向taobao的
$ gem sources -r https://rubygems.org/
$ gem sources -a http://ruby.taobao.org/
$ gem sources -l
# 请确保只有 ruby.taobao.org

# Update rubygems
$ gem update --system
$ gem install bundler
 
#Test ruby and rubygems are working
#Close shell and reopen for changes to take effect
$ruby -v
$gem --version
 
# Rails
$ yum install sqlite-devel
$ gem install rails
$ gem install sqlite3

#安装  Redmon
gem install redmon

使用查看帮助
redmon -h

Usage: /Users/sean/codez/steelThread/redmon/vendor/ruby/1.9.1/bin/redmon (options)
    -a, --address ADDRESS            The thin bind address for the app (default: 0.0.0.0)
    -n, --namespace NAMESPACE        The root Redis namespace (default: redmon)
    -i, --interval SECS              Poll interval in secs for the worker (default: 10)
    -p, --port PORT                  The thin bind port for the app (default: 4567)
    -r, --redis URL                  The Redis url for monitor (default: redis://127.0.0.1:6379)
    -s, --secure CREDENTIALS         Use basic auth. Colon separated credentials, eg admin:admin.
        --no-app                     Do not run the web app to present stats
        --no-worker                  Do not run a worker to collect the stats

$ redmon
>> Thin web server (v1.3.1 codename Triple Espresso)
>> Maximum connections set to 1024
>> Listening on 0.0.0.0:4567, CTRL+C to stop
[12-03-10 15:49:40] listening on http#0.0.0.0:4567

然后直接在浏览器里
http://ip:4567/ 
就可以看到redis的情况了. 

gem env  可以查看ruby的安装情况. 




