# docker-eap
## JBoss EAP 6-7 build from source via and OpenJDK
JBoss source from Git Repo maintained by Alexis Hassler
https://github.com/hasalex/eap-build

### To run example:
    docker run --name=jboss \
    -p 8080:8080 -p9990:9990 \
    -e admin_user="YOUR_USER_NAME" \ 
    -e admin_pw="YOUR_PASS" \
    -e jboss_ver_num="6.4.13" \
    -e type="<domain>" \
    daveposh/jboss-eap
  
**Environment Variables:**

   admin_user <jboss admin console user>
  
   admin_pass <jboss admin console pasword>

  type (optional | domain )
 
  jboss_ver_num  (optional default 7.0.0 | 6.2.X - 7.0.0)
  
**Ports:**

  8080 8230 # default domain offset for http 150

  8443 8593 # default domain offset for http 150
