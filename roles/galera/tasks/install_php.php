---
- name: Update APT Cache
  apt:
    update_cache: yes
    force_apt_get: yes

- name: Remove apt lock file
  file:
    state: absent
    path: "/var/lib/dpkg/lock"

- name: Upgrade all packages to the latest version
  apt:
    name: "*"
    state: latest
    force_apt_get: yes

- name: Install PHP 
  apt: 
    name: 
      - php7.2 
      - libapache2-mod-php7.2
      - php7.2-mysql 
      - php-common
      - php7.2-cli 
      - php7.2-common
      - php7.2-json 
      - php7.2-opcache
      - php7.2-readline

- name : Enable the Apache php7.2
  shell: sudo a2enmod php7.2
  notify:
    - restart apache2

- name : Enable the Apache php7.2
  shell: sudo a2dismod  php7.2
  notify:
    - restart apache2

- name: Install PHP FPM
  apt: 
    name: 
      - php7.2-fpm

- name: nable proxy_fcgi and setenvif module. 
  shell: sudo a2enmod proxy_fcgi setenvif 

- name: Enable the /etc/apache2/conf-available/php7.2-fpm.conf configuration file.
  shell: sudo a2enconf php7.2-fpm
  notify:
    - restart apache2