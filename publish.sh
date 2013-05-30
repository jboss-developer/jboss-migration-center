#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

# Define

# team email subject
EMAIL_SUBJECT="Migration Center released at \${PRODUCTION_URL}"
# EAP team email To ?
EMAIL_TO="jboss-migration@redhat.com"
EMAIL_FROM="\"Migration Center Publish Script\" <jboss-migration@redhat.com>"

JBORG_DIR="migration"
JBORG_REPO="filemgmt.jboss.org:www_htdocs"

STAGING_URL="${JBORG_DIR}.jboss.org/staging"
STAGING_DIR="${JBORG_DIR}/staging"

PRODUCTION_DIR="${JBORG_DIR}"
PRODUCTION_URL="${PRODUCTION_DIR}.jboss.org/"


notify_email()
{
   echo "***** Performing Migration Center release notifications"
   echo "*** Notifying jboss-migration list"
   subject=`eval echo $EMAIL_SUBJECT`
   echo "Email from: " $EMAIL_FROM
   echo "Email to: " $EMAIL_TO
   echo "Subject: " $subject
   # send email using sendmail
   printf "Subject: $subject\nSee \$subject :)\n" | /usr/bin/env sendmail -f "$EMAIL_FROM" "$EMAIL_TO"
}


shallow_clean() {
  echo "**** Cleaning site  ****"
  rm -rf $DIR/_site
  echo "**** Cleaning asciidoc cache  ****"
  rm -rf $DIR/_tmp/asciidoc
}

deep_clean() {
  echo "**** Cleaning site  ****"
  rm -rf $DIR/_site
  echo "**** Cleaning caches  ****"
  rm -rf $DIR/_tmp/lanyrd
  rm -rf $DIR/_tmp/remote_partial
  rm -rf $DIR/_tmp/datacache
  rm -rf $DIR/_tmp/restcache
  rm -rf $DIR/_tmp/asciidoc
}

production() {
  deep_clean
  echo "**** Generating site ****"
  bundle exec awestruct -Pproduction

  echo "**** Publishing site to http://${PRODUCTION_URL} ****"
  rsync -Pqr --protocol=28 --delete-after --exclude=presentations $DIR/_site/* ${JBORG_DIR}@${JBORG_REPO}/${PRODUCTION_DIR}

  shallow_clean
  
  read -p "Do you want to send release notifcations to $EMAIL_TO[y/N]? " yn
  case $yn in
      [Yy]* ) notify_email;;
      * ) exit;
  esac
}

staging() {
  deep_clean
  echo "**** Generating site ****"
  bundle exec awestruct -Pstaging

  echo "**** Publishing site to http://${STAGING_URL} ****"
  rsync -Pqr --protocol=28 --delete-after --exclude=presentations $DIR/_site/* ${JBORG_DIR}@${JBORG_REPO}/${STAGING_DIR}

  shallow_clean
}

clear_staging() {
  echo "**** Removing staging site from http://${STAGING_URL}"
  rm -rf _site
  mkdir _site
  rsync -Pqr --protocol=28 --delete $DIR/_site/ ${JBORG_DIR}@${JBORG_REPO}/${STAGING_DIR}
}


usage() {
  cat << EOF
usage: $0 options

This script publishes the Migration Center, either to staging or to production

OPTIONS:
   -s      Publish staging version of the site to http://${STAGING_URL}
   -p      Publish production version of the site to http://${PRODUCTION_URL}
   -c      Clear out all caches
   -r      Remove the staging version of the site from http://${STAGING_URL} - please do this after using staging
EOF
}

while getopts "spchr" OPTION

do
     case $OPTION in
         s)
             staging
             exit
             ;;
         r)
             clear_staging
             exit
             ;;
         p)
             production
             exit
             ;;
         c)
             deep_clean
             exit
             ;;
         h)
             usage
             exit
             ;;
         [?])
             usage
             exit
             ;;
     esac
done

usage
