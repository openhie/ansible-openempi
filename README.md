ansible-openempi
========

This role downloads and installs [openempi](http://www.openempi.org). You must use oracle java when running openempi.  This role by defualt is designed to work with these roles:
* [ansible-java](https://github.com/yatesr/ansible-java)
* [ansible-tomcat-standalone](https://github.com/yatesr/ansible-tomcat-standalone)
* [ansible-postgresql](https://github.com/yatesr/ansible-postgresql)

Role Variables
--------------
```
openempi_install_dir: /opt/openempi
openempi_version: 3.0.0
openempi_download_url: "http://www.openempi.org/openempi-downloads/file_download/?username=odysseas@sysnetint.com&filename=openempi-entity-{{openempi_version}}-openempi-entity.tar.gz"
# Default is for use with yatesr.tomcat-standalone role
openempi_tomcat_dir: "{{tomcat_install_dir}}/apache-tomcat-{{tomcat_version}}"
openempi_java_opts: "-Xms1024m -Xmx1024m -XX:NewSize=256m -XX:MaxNewSize=356m -XX:PermSize=256m -XX:MaxPermSize=356m"
openempi_java_home: "{{java_install_dir}}/jre{{java_version_3}}"
# limited user account that will run openempi and tomcat standalone
openempi_user: openempi
tomcat_user: "{{openempi_user}}"
# Name of tomcat service
tomcat_service: tomcat_standalone
# OpenEMPI DB
openempi_db_name: openempi
openempi_db_user: openempi
openempi_db_password: "openempi"

```

Example Playbook
-------------------------
### playbook.yml

```

---
- hosts: all
  sudo: yes
  roles:
   - ansible-java
   - ansible-tomcat-standalone
   - ansible-postgresql
   - ansible-openempi
  vars:
   tomcat_version: 7.0.61 # Will need to be latest version
   tomcat_user: openempi
   tomcat_service: openempi
```

License
-------

Apache 2.0

Author Information
------------------

Ryan Yates
