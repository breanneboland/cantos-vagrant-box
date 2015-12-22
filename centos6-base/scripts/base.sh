sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install  make automake gcc gcc-c++ kernel-devel
yum -y install htop psmisc sysstat git-core vim curl atop
yum -y update
