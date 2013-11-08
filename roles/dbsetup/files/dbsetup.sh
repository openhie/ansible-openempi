#!/bin/sh
# cd to script directory TODO: Change to work with different versions
cd /opt/openempi-2.2.7/conf/
# Create database
psql -h localhost -w -U openempi -d openempi -f create_new_database_schema-2.2.0.sql
psql -h localhost -w -U openempi -d openempi -f update_database_schema-2.2.1.sql
psql -h localhost -w -U openempi -d openempi -f update_database_schema-2.2.3.sql
psql -h localhost -w -U openempi -d openempi -f update_database_schema-2.2.4.sql
psql -h localhost -w -U openempi -d openempi -f update_database_schema-2.2.6.sql
psql -h localhost -w -U openempi -d openempi -f update_database_schema-2.2.7.sql
exit 0
