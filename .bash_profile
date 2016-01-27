source ~/.git-prompt.sh

# http://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


export PS1="\n\n\[$(tput setaf 6)\]\t \$(__git_ps1)\n\$PWD\n\\$ \[$(tput sgr0)\]"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

PATH="/usr/local/mysql/bin/:/Users/tduong/phabricator/arcanist/bin/:/usr/local/bin/flake8/:${PATH}"
export PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
# export VERSIONER_PYTHON_PREFER_64_BIT=no
# export VERSIONER_PYTHON_PREFER_32_BIT=yes
export ARCHFLAGS="-arch x86_64"

# import package syntax: https://serverfault.com/questions/80227/pythonpath-environment-variable-how-do-i-make-every-subdirectory-afterwards/80240#80240
export PYTHONPATH=/Volumes/Disk_Image_Git/em7/G3code/backend:/Volumes/Disk_Image_Git/automation/

# safari web driver requires this variable
export SELENIUM_SERVER_JAR="/Users/tduong/selenium-2.45.0/selenium-server-standalone-2.45.0.jar"


export trashPath=~/trash/
moveToTrashDirectory() {
    sudo cp $1 $trashPath
    sudo rm -rf $1
}
alias myname=myfunction
alias trash=moveToTrashDirectory


alias mountgit="hdiutil mount /Users/tduong/Documents/Disk/Git.sparsebundle ; go2git"
alias unmountgit="hdiutil unmount /Volumes/Disk_Image_Git"


alias cls="clear"
alias md="mkdir"
alias sbl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias profile="sbl ~/.bash_profile"
alias brews="brew search"
alias hgrep="history | grep "
alias refresh="cls ; source ~/.bash_profile"

export git="/Volumes/Disk_Image_Git/em7"
alias go2git="cd $git"
echo "go2git=cd $git"

export atm="$git/../automation"
alias go2atm="cd $atm"
echo "go2atm=cd $atm"


export nl="$git/../gcloud/nhalist"
echo "go2nl =cd $nl"
alias go2nl="cd $nl"

# export VM=thang.vm

export VM=thang.vcenter
function point_to_vm(){
    unset VM
    export VM=$1
    refresh
    echo "Done! Ready to push to $AOSCP"
}
alias point="point_to_vm "

function ssh_as_root_to_vm(){
    echo "ssh $AOSSH"
    ssh $AOSSH
}
alias root="ssh_as_root_to_vm"

export AOSSH=root@$VM
export AOSCP=$AOSSH:/usr/local/silo
export G3_BASE="$git/G3code"
alias s-powerpack='rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/powerpacks/* $AOSCP/data/powerpacks/'
alias push-py='rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/backend/* $AOSCP/proc/'
alias push-php-share='rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/phpshare/* $AOSCP/phpshare/'
alias push-ui='rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/gui/ap/* $AOSCP/gui/ap/'
alias push-api='rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/gui/is/* $AOSCP/gui/is/'

alias push='echo "syncing from $G3_BASE to $AOSCP"; push-ui; push-php-share; push-api; ssh $AOSSH "chown -R s-em7-http:s-em7-http /usr/local/silo/gui/ap/*"; ssh $AOSSH "chown -R s-em7-http:s-em7-http /usr/local/silo/gui/is/*"; ssh $AOSSH "chown -R s-em7-http:s-em7-http /usr/local/silo/phpshare/*"'
alias watch='~/watch.sh'
alias watch-pa='~/watch_parsl.sh'
alias watch-act='~/watch_act.sh'


alias pa="parsl"

echo ""
echo "       --=-=-=-=-=-=-=--       "
echo ""

alias pbot="pybot -L TRACE --variable SUT:tduong_aio --variable ENCODING:xml --variable PREFIX:/api --noncritical=noncritical --exclude=exclude --variable BUILD:40252 --variable COMPARE_BUILD:30115 --variable RELEASE:7.5.4 --loglevel DEBUG:INFO "
echo "pbot robot_testing/api/testsuites/Device/Root.txt"

alias tail_log="ssh root@$VM tail /data/logs/em7php.log -f"
echo "tail_log= ssh root@$VM tail /data/logs/em7php.log -f"

alias tail_error="ssh root@$VM tail /data/logs/phperr.log -f"
echo "tail_error= ssh root@$VM tail /data/logs/phperr.log -f"

alias tail_sql="ssh root@$VM tail /data/logs/mysqli.log -f"
echo "tail_sql= ssh root@$VM tail /data/logs/mysqli.log -f"

echo ""
echo "       --=-=-=-=-=-=-=--       "
echo ""

echo "10.2.9.25       thang.vcenter"


function scp_patch_keys(){
    scp $git/build/patch_keys/*.* $AOSSH:/etc/em7-keys/
    ssh $AOSSH chmod 777 /etc/em7-keys/*.*
}



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias build-ios="ionic build ios"
alias show-ios="ionic emulate ios"
alias go2app="cd /Volumes/Disk_Image_Git/GitHub/worktop/myApp"





export hoatuoinu='{ "enableConsoleLog": true}'








































# The next line enables shell command completion for gcloud.
source '/Users/tduong/google-cloud-sdk/completion.bash.inc'
export PATH="/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/tduong/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/tduong/google-cloud-sdk/completion.bash.inc'
