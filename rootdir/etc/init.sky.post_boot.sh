#
# Copyright (C) 2024 StatiXOS
# SPDX-License-Identifier: Apache-2.0
#

# Custom tuning for Sky

# Runtime fs tuning
echo 128 > /sys/block/sda/queue/read_ahead_kb
echo 128 > /sys/block/sda/queue/nr_requests
echo 1 > /sys/block/sda/queue/iostats
echo 128 > /sys/block/dm-0/queue/read_ahead_kb
echo 128 > /sys/block/dm-1/queue/read_ahead_kb
echo 128 > /sys/block/dm-2/queue/read_ahead_kb
echo 128 > /sys/block/dm-3/queue/read_ahead_kb
echo 128 > /sys/block/dm-4/queue/read_ahead_kb
echo 128 > /sys/block/dm-5/queue/read_ahead_kb
echo 128 > /sys/block/dm-6/queue/read_ahead_kb
echo 128 > /sys/block/dm-7/queue/read_ahead_kb
echo 128 > /sys/block/dm-8/queue/read_ahead_kb
echo 128 > /sys/block/dm-9/queue/read_ahead_kb

# cpuset
echo 0-1 > /dev/cpuset/background/cpus
echo 0-3 > /dev/cpuset/system-background/cpus
echo 1-2 > /dev/cpuset/audio-app/cpus

# Setup runtime schedTune
echo "walt" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "walt" > /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
echo 20000 > /sys/devices/system/cpu/cpu0/cpufreq/walt/down_rate_limit_us
echo 5000 > /sys/devices/system/cpu/cpu6/cpufreq/walt/down_rate_limit_us

