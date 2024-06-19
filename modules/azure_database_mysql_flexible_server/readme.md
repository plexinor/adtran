# Pre-reqchecks:
The MYSQL-ADMIN-USER key must create in the node level key vault with the username like <bu>admin because terraform won't accept _ and @ values or special charachters.

The secret or the password of the above user will be stored in the node keyvault with the secret name DATAHUB-SQLDB-SECRET

# Functionality of this module
The azure database mysql flexible server will create with the database names AMC, metastoredb and same as server name.

The private endpoint will create with the specified network details.

The diagnostic setting will create for this mysql flexible server for alllogs, audit logs and metric logs.

The hive metastore tables will create on metastoredb.

#Post Activities 
Disable public network on azure database mysql flexible server.

