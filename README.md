# docker-eap
## JBoss EAP 6-7 build from source via and OpenJDK8
JBoss source build script from Git Repo maintained by Alexis Hassler
https://github.com/hasalex/eap-build

### Run example:
    docker run --name=jboss \
    -p 8080:8080 -p 9990:9990 \
    -e admin_user="YOUR_USER_NAME" \
    -e admin_pass="YOUR_PASS" \
    -e jboss_ver_num="6.4.13" \
    -e type="domain" \
    daveposh/jboss-eap
  
_First run will take some time due to the compiling of JBoss_
  
**Environment Variables:**

   admin_user <jboss admin console user>
  
   admin_pass <jboss admin console pasword>

  type (optional | domain )
 
  jboss_ver_num  (optional default 7.0.0 | 6.2.X - 7.0.0)
  
**Ports:**

  8080 8230 # default domain offset for http 150

  8443 8593 # default domain offset for https 150
