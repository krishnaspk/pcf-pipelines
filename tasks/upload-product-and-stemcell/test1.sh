#!/usr/bin/env bash
set -x
#Declared New Test Org,Space,User & Quota details
export CF_New_Org=test-sample-org
export CF_New_Space=test-sample-space
export CF_New_User=testusr1
export CF_New_Quota=test-samp-org-quota
export CF_New_Space_Quota=test-samp-space-quota
# Generate a password.
export CF_New_USER_PASS=`openssl rand -base64 15`
# CF Login
#cf api "${CF_API}"
cf login -a "${CF_API}" -u "${CF_USERNAME}" -p "${CF_PASSWORD}" -o "${CF_ORG}" -s system
#cf target -o "${CF_ORG}" -s "${CF_SPACE}"
echo -e "login to PCF Eco system successful using $CF_USERNAME\n\n"
#Create User
cf create-user $CF_New_User $CF_New_USER_PASS # internal user
echo -e "New user created for Org $CF_New_Org\n\n" 
echo -e "S.No   Task    Status\n\n" 
echo -e "1.     CreateUser      Success\n\n" 
# New Org creating
cf create-org "${CF_New_Org}"
echo -e "New org $CF_New_Org is created\n\n" 
echo -e "2.     CreateOrg       Success\n\n" 
#Create Space
cf target -o $CF_New_Org
cf create-space $CF_New_Space
echo -e "New space $CF_New_Space is created\n\n" 
echo -e "3.     CreateSpace     Success\n\n" 
#End
