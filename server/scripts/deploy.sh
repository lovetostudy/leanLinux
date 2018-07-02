echo "==================  delete the old ROOT.war file  ========"
rm /developer/apache-tomcat-8.5.32/webapps/ROOT.war

echo "==================  move war file to tomcat  ============="
mv /product/ftpuser/magnetive_valve.war /developer/apache-tomcat-8.5.32/webapps/ROOT.war

echo "==================  remove ROOT dir  ====================="
rm -rf /developer/apache-tomcat-8.5.32/webapps/ROOT

echo "==================  shutdown tomcat service  ============="
/developer/apache-tomcat-8.5.32/bin/./shutdown.sh

echo "==================  sleep 10s  ==========================="
for i in {1..10}
do
	echo $i"s"
done

echo "==================  start tomcat  ========================"
/developer/apache-tomcat-8.5.32/bin/./startup.sh
