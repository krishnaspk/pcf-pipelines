#!/usr/bin/env bash
#Declared New Test Org,Space,User & Quota details
#export CF_New_Org=test-sample-org
#export CF_New_Space=test-sample-space
#export CF_New_User=testusr1
#export CF_New_Quota=test-samp-org-quota
#export CF_New_Space_Quota=test-samp-space-quota
export CFspace=$CF_SPACE
cf help create-user
#export CF_New_USER_PASS=`openssl rand -base64 15`
echo "$CF_New_Org , $CF_New_Space , $CF_New_User , $CF_New_Quota , $CF_New_Space_Quota , $CF_ORG"
cf login -a "${CF_API}" -u "${CF_USERNAME}" -p "${CF_PASSWORD}" -o "${CF_ORG}" -s system
cf help -a 
cf target -s system
echo "$CFspace"
echo -e "login to PCF Eco system successful using $CF_USERNAME\n\n"
