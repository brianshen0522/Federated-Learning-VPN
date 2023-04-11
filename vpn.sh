#!/bin/bash

systemctl restart systemd-resolved.service
wg-quick up wg0
