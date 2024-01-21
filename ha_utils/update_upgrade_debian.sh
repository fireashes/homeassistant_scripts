#!/usr/bin/env bash
apt update && apt dist-upgrade -y && apt upgrade -y && apt install -f
apt autoremove
