sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install  make automake gcc gcc-c++ kernel-devel
yum -y install htop psmisc sysstat git-core vim curl atop
yum -y update

# Fix up networking
rm -f /etc/udev/rules.d/70-persistent-net.rules
ln -s /dev/null /etc/udev/rules.d/80-net-name-slot.rules

# Cleanup MAC and UUID
sed -E -i '/^(HWADDR|UUID)/d' /etc/sysconfig/network-scripts/ifcfg-e*
