#!/usr/bin/env bash
# https://github.com/home-assistant/os-agent/tree/main#using-home-assistant-supervised-on-debian
# https://github.com/home-assistant/os-agent/releases/latest
wget "https://github.com/home-assistant/os-agent/releases/download/1.6.0/os-agent_1.6.0_linux_x86_64.deb"
dpkg -i os-agent_1.0.0_linux_x86_64.deb

gdbus introspect --system --dest io.hass.os --object-path /io/hass/os

