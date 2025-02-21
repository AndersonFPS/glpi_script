echo "#------------------------------------------#"
echo  "INSTALANDO OCS INVENTORY SERVER" 
echo "#------------------------------------------#"

apt -y install ocsinventory-server

clear
echo "#------------------------------------------#"
echo  "CONFIGURANDO OCS INVENTORY" 
echo "#------------------------------------------#"

sed -i 's/^PerlSetEnv OCS_DB_NAME.*/PerlSetEnv OCS_DB_NAME ocsweb/' /etc/apache2/conf-available/ocsinventory-server.conf
sed -i 's/^PerlSetEnv OCS_DB_LOCAL.*/PerlSetEnv OCS_DB_LOCAL localhost/' /etc/apache2/conf-available/ocsinventory-server.conf

a2enconf ocsinventory-server
systemctl restart apache2

clear
echo "#------------------------------------------#"
echo "INSTALAÇÃO CONCLUÍDA! ACESSE O GLPI E O OCS INVENTORY PELO NAVEGADOR."
echo "#------------------------------------------#"
