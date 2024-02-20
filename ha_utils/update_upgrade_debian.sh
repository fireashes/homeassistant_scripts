#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BACKUP_DIR=$( realpath "${SCRIPT_DIR}/../ha_backup")
echo SCRIPT_DIR = "${SCRIPT_DIR}"
echo BACKUP_DIR = "${BACKUP_DIR}"
apt update | tee "${BACKUP_DIR}/apt_update_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt" \
&& apt list --upgradable | tee "${BACKUP_DIR}/apt_list_upgradable_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt" \
&& apt dist-upgrade -y | tee "${BACKUP_DIR}/apt_dist-upgrade_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt" \
&& apt upgrade -V | tee "${BACKUP_DIR}/apt_upgrade_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt" \
&& apt upgrade -y | tee -a "${BACKUP_DIR}/apt_upgrade_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt" \
&& apt install -f | tee "${BACKUP_DIR}/apt_install_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt" \
&& apt autoremove -y | tee "${BACKUP_DIR}/apt_autoremove_`date +%Y.%m.%d.%H.%M.%S.%3N`.txt"
