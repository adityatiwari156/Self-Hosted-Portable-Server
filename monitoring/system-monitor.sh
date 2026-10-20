#!/bin/bash

# Secure Self-Hosted NAS - System Monitoring Script
# Platform: Raspberry Pi OS Lite
# Purpose: Display basic system health information

set -u

echo "=========================================="
echo "     NAS SYSTEM MONITORING REPORT"
echo "=========================================="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo

# System uptime and load
echo "----- SYSTEM STATUS -----"
uptime
echo

# CPU load
echo "----- CPU LOAD -----"
if [ -r /proc/loadavg ]; then
    awk '{print "Load Average (1/5/15 min): " $1 " / " $2 " / " $3}' /proc/loadavg
fi
echo

# Memory usage
echo "----- MEMORY USAGE -----"
free -h
echo

# CPU temperature (Raspberry Pi)
echo "----- CPU TEMPERATURE -----"
if command -v vcgencmd >/dev/null 2>&1; then
    vcgencmd measure_temp
elif [ -r /sys/class/thermal/thermal_zone0/temp ]; then
    awk '{printf "CPU Temperature: %.1f C\n", $1 / 1000}' 
        /sys/class/thermal/thermal_zone0/temp
else
    echo "Temperature reading unavailable."
fi
echo

# Disk usage
echo "----- FILESYSTEM USAGE -----"
df -h
echo

# Docker container status
echo "----- DOCKER CONTAINERS -----"
if command -v docker >/dev/null 2>&1; then
    if docker info >/dev/null 2>&1; then
        docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'
    else
        echo "Docker is installed, but the daemon is unavailable or access is denied."
    fi
else
    echo "Docker is not installed."
fi
echo

# Pi-hole status
echo "----- PI-HOLE STATUS -----"
if command -v pihole >/dev/null 2>&1; then
    pihole status 2>&1 || echo "Unable to retrieve Pi-hole status."
else
    echo "Pi-hole command not found on the host."
fi
echo

# Tailscale status
echo "----- TAILSCALE STATUS -----"
if command -v tailscale >/dev/null 2>&1; then
    tailscale status 2>&1 || echo "Unable to retrieve Tailscale status."
else
    echo "Tailscale command not found on the host."
fi
echo

echo "=========================================="
echo "Monitoring check completed."
echo "=========================================="
