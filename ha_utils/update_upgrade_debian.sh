#!/usr/bin/env bash
apt update | tee apt_update_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt \
&& apt list --upgradable | tee apt_list_upgradable_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt \
&& apt dist-upgrade -y | tee apt_dist-upgrade_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt \
&& apt upgrade -y | tee apt_upgrade_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt \
&& apt install -f | tee apt_install_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt \
&& apt autoremove -y | tee apt_autoremove_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt
