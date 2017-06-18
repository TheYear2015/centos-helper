#!/bin/sh

yum -y install yum-plugin-protectbase

YUM_REPOS_DIR=/etc/yum.repos.d
REPO_FILE_NAME=""
function checkNewUser_Homedir () {

    # Verify yum repos Directory.
    if [ -d $YUM_REPOS_DIR ];then
        for i in `ls $YUM_REPOS_DIR/`; do
            REPO_FILE_NAME=$YUM_REPOS_DIR/$i
            #sed '/\[*extras\]/a\protect=0' $REPO_FILE_NAME
            #sed '/\[*centosplus\]/a\protect=0' $REPO_FILE_NAME
            #sed '/\[*contrib\]/a\protect=0' $REPO_FILE_NAME
            #sed '/\[*addons\]/a\protect=0' $REPO_FILE_NAME
            #sed '/\[*fasttrack\]/a\protect=0' $REPO_FILE_NAME
            sed '/\[base\]/a\protect=1' $REPO_FILE_NAME
            sed '/\[updates\]/a\protect=1' $REPO_FILE_NAME
        done
    fi
}

checkNewUser_Homedir
