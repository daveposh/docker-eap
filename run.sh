#!/bin/sh

##  Build Jboss eap from source git repo https://github.com/hasalex/eap-build
##  Git Repo maintained by Alexis Hassler

JAVA_HOME="$(find /usr/lib/jvm/java-1.8.0* -type f -name javac | tail -n 1 | xargs  dirname)"
PATH="${JAVA_HOME}/bin:${PATH}"


function StartJB {
  if [ -z "$type" ]; then
    type="standalone"
  fi   
  JBOSS_HOME="$(find /apps/jboss/ -maxdepth 1 | tail -1)"
  ${JBOSS_HOME}/bin/${type}.sh -b 0.0.0.0 -bmanagement 0.0.0.0
  tail -f /tmp/eap-build/work/build.log
}

if [ ! -f /apps/runonce ]; then
  cd /tmp
  git clone https://github.com/hasalex/eap-build.git && cd ./eap-build && ./build-eap.sh $jboss_ver_num
  unzip $(find /tmp/eap-build/dist/ -maxdepth 1 | tail -n 1) -d /apps/jboss
  JBOSS_HOME="$(find /apps/jboss/ -maxdepth 1 | tail -1)"
  ${JBOSS_HOME}/bin/add-user.sh $admin_user $admin_pass
  touch /apps/runonce
  StartJB
else
  StartJB
fi


