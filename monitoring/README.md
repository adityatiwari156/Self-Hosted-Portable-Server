# System Monitoring

## Overview

This directory contains the monitoring documentation for the Secure Self-Hosted NAS project built using Raspberry Pi 5. The purpose of monitoring is to observe system health, resource utilization, network connectivity, DNS services, storage capacity, and the availability of self-hosted applications.

## Monitoring Objectives

- Monitor CPU utilization, RAM usage, system load, and uptime.
- Observe Raspberry Pi temperature and SSD storage capacity.
- Check Docker container status and application availability.
- Verify Pi-hole DNS filtering and Unbound DNS resolution.
- Monitor network connectivity, latency, and Tailscale status.
- Record system performance measurements for future comparison.

## Monitoring Scope

| Component | Monitoring Parameters |
|---|---|
| Raspberry Pi 5 | CPU, RAM, temperature, uptime, and system load |
| SSD Storage | Filesystem usage and available capacity |
| Docker | Container status and service availability |
| CasaOS | Web dashboard accessibility |
| Pi-hole | DNS service status and query activity |
| Unbound | Recursive DNS resolution |
| Tailscale | Connectivity and device status |
| Cloudflare Tunnel | Remote service availability |
| Jellyfin | Application accessibility and media playback |

## Basic Monitoring Commands

The following Linux commands can be used for manual system checks.

| Purpose | Command |
|---|---|
| View CPU and process activity | `top` |
| Check memory usage | `free -h` |
| Check system uptime and load | `uptime` |
| Check CPU temperature | `vcgencmd measure_temp` |
| Check storage capacity | `df -h` |
| List running Docker containers | `docker ps` |
| Check network connectivity | `ping -c 4 1.1.1.1` |
| Test DNS resolution | `dig example.com` |
| Check Pi-hole status | `pihole status` |
| Check Tailscale connectivity | `tailscale status` |

Some commands require the corresponding utility to be installed. The Raspberry Pi temperature command requires `vcgencmd`, and DNS testing with `dig` requires the appropriate DNS utilities.

## Performance Baseline

During normal or idle operation, the following resource usage was reported:

| Metric | Reported Value |
|---|---|
| CPU utilization | Approximately 1% |
| RAM utilization | Approximately 20% |

These figures are reported observations, not independently verified benchmark results. Values may change depending on running containers, media streaming, network activity, and system workload.

Additional measurements, including CPU temperature, SSD performance, DNS response time, network latency, and resource usage under load, should be recorded after testing.

## Monitoring Tools

The current monitoring approach includes manual Linux commands and service-status checks.

The following tools may be considered for future enhancements:

- **Prometheus:** Collect and store time-series metrics.
- **Grafana:** Visualize system and network metrics through dashboards.
- **Node Exporter:** Expose Linux system metrics for Prometheus.
- **Uptime Kuma:** Monitor service availability and uptime.

These tools are planned enhancements unless they have been installed and configured on the system.

## Future Improvements

- Implement automated system health checks.
- Configure alerts for high CPU temperature and low storage space.
- Track DNS response times and network latency over time.
- Create dashboards for CPU, memory, storage, and network metrics.
- Monitor service downtime and recovery after reboot.
- Evaluate a secondary Raspberry Pi node for improved service availability.

## Conclusion

Monitoring helps maintain the reliability, availability, and performance of the self-hosted NAS. This directory provides a central location for monitoring procedures, performance observations, and future monitoring improvements.

