# CL-PKC-Authentication-System
使用Ubuntu2204 ，先安装  
g++  
openssl 3.0.10  
gmp 6.2.1  
jsoncpp 1.9.5  
再安装  
Python 3.10.12  
Djangdjango.0  
django-apscheduler    0.6.2  
django-cors-headers   4.3.1  
gmpy2    2.1.5  
fastecdsa  2.2.3  
cryptography   3.4.8  
（如果cryptography使用时报错就需要使用openssl1.1.1l重新安装）  
然后安装前端Vue依赖：  
npm：8.19.4  
Node.js：16.20.0 LTS  
vue-cli：4.5.19  
数据库：   
mysql  8.0.39  
mysql设置账户root密码default123  
这里需要导入django_db.sql   
django_ap_db.sql  
登录ap_server需要在as数据库nodetable中修改ip  
运行的时候可以指定ip如  
as:python manage.py runserver192.168.3.17:8000  
前端运行：npm run dev  
也可以指定运行：
VUE_APP_BASE_API="http://你的后端IP:端口" npm run dev  
记得将前后端ip端口对应，在相应代码中也需要修改
