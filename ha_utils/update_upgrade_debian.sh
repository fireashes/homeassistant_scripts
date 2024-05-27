#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BACKUP_DIR=$( realpath "${SCRIPT_DIR}/../ha_backup")
echo SCRIPT_DIR = "${SCRIPT_DIR}"
echo BACKUP_DIR = "${BACKUP_DIR}"
apt update               | tee "${BACKUP_DIR}/`date +%Y.%m.%d.%H.%M.%S.%3N`_apt_update.txt" \
&& apt list --upgradable | tee "${BACKUP_DIR}/`date +%Y.%m.%d.%H.%M.%S.%3N`_apt_list_upgradable.txt" \
&& apt dist-upgrade      | tee "${BACKUP_DIR}/`date +%Y.%m.%d.%H.%M.%S.%3N`_apt_dist-upgrade_y.txt" \
&& apt upgrade -V        | tee "${BACKUP_DIR}/`date +%Y.%m.%d.%H.%M.%S.%3N`_apt_upgrade_V.txt" \
&& apt upgrade           | tee "${BACKUP_DIR}/`date +%Y.%m.%d.%H.%M.%S.%3N`_apt_upgrade_y.txt" \
&& apt install -f        | tee "${BACKUP_DIR}/`date +%Y.%m.%d.%H.%M.%S.%3N`_apt_install_f.txt" \
&& apt autoremove        | tee "${BACKUP_DIR}/`date +%Y.%m.%d.%H.%M.%S.%3N`_apt_autoremove_y.txt"

