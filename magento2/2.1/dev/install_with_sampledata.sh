#/bin/bash

magento setup:install \
	--db-host=${MAGENTO_DB_HOST:-"db"} \
	--db-name=${MAGENTO_DB_NAME:-"magento2"} \
	--db-user=${MAGENTO_DB_USER:-"magento2"} \
	--db-password=${MAGENTO_DB_PASS:-"123123"} \
	--backend-frontname=${MAGENTO_ADMIN_FRONTNAME:-"admin"} \
	--admin-user=${MAGENTO_ADMIN_USER:-"admin"} \
	--admin-password=${MAGENTO_ADMIN_PASS:-"123123qa"} \
	--admin-email=${MAGENTO_ADMIN_EMAIL:-"admin@example.com"} \
	--admin-firstname=${MAGENTO_ADMIN_FIRSTNAME:-"Admin"} \
	--admin-lastname=${MAGENTO_ADMIN_LASTNAME:-"Admin"} \
	--cleanup-database \
	--use-sample-data