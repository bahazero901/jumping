FROM centos:centos6
MAINTAINER matt.feng@yahoo.com
RUN yum install -y mysql-server wget php php-mbstring php-gd php-xml httpd
WORKDIR /tmp
RUN wget http://ftp.drupal.org/files/projects/drupal-7.56.tar.gz \
    && tar -zxvf drupal-7.56.tar.gz && mv drupal-7.56 /var/www/html \ 
    && cd /var/www/html/drupal-7.56/ \
    && cp sites/default/default.settings.php sites/default/settings.php \
    && chmod a+w sites/default/settings.php \
   
EXPOSE 80 
