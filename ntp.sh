#!/bin/sh
sudo ntpdate 1.cn.pool.ntp.org && sudo hwclock --systohc --utc
