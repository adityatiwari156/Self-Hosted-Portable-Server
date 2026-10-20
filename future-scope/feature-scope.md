# Feature Scope

## 1. Overview

The Secure Self-Hosted NAS project provides a private storage and cloud environment using Raspberry Pi 5. It combines self-hosted applications, DNS filtering, secure remote access, and centralized system management.

This document describes the implemented features, planned enhancements, and potential future development of the project.

## 2. Implemented Features

The following features have been implemented in the current project:

- **Self-Hosted NAS:** Personal storage and services hosted on Raspberry Pi 5.
- **SSD Storage:** Expanded storage using an SSD connected through an NVMe-to-SATA expansion HAT.
- **CasaOS:** Web-based interface for managing the NAS and supported applications.
- **Docker:** Container-based deployment and management of services.
- **Pi-hole:** DNS-based ad and tracker filtering for network devices.
- **Unbound:** Recursive DNS resolution integrated with the DNS filtering setup.
- **Tailscale:** Private network connectivity for authorized remote devices.
- **Cloudflare Tunnel:** Remote access to configured web services without directly exposing the home network through conventional port forwarding.
- **Cloudflare Access:** Identity-based access protection for the configured remote web service.
- **Jellyfin:** Self-hosted media streaming and management.

## 3. Planned Enhancements

The following features are possible future additions and should be marked as implemented only after deployment and testing.

### 3.1 Monitoring and Observability

- Implement Prometheus for collecting system metrics.
- Integrate Grafana for visual dashboards.
- Monitor CPU, memory, temperature, storage, and network performance.
- Track DNS response times, latency, and packet loss.
- Configure alerts for service downtime and high resource utilization.

### 3.2 Additional Self-Hosted Applications

- **Immich:** Self-hosted photo and video management.
- **Nextcloud:** Private cloud storage and file synchronization.
- **Syncthing:** Automated file synchronization between devices.
- **Navidrome:** Self-hosted music streaming.
- **Home Assistant:** Smart-home management and automation.

### 3.3 Security Improvements

- Introduce centralized authentication or single sign-on (SSO).
- Improve service access policies and authentication management.
- Review container permissions and network isolation.
- Add automated configuration backups and recovery procedures.
- Document security audits and vulnerability assessments.

### 3.4 High Availability and Reliability

- Evaluate Raspberry Pi Zero 2 W as a secondary node for selected services.
- Explore secondary DNS service availability.
- Automate service health checks and recovery.
- Test backup restoration and disaster recovery.
- Evaluate multi-node architecture where hardware and software support it.

### 3.5 Network and Performance Monitoring

- Monitor internet connectivity and network latency.
- Record ping response times and packet loss.
- Measure download and upload speeds periodically.
- Track DNS filtering effectiveness and query activity.
- Compare resource usage under idle and active workloads.

### 3.6 Development and Data Services

- Explore hosting personal websites and web applications.
- Evaluate MariaDB and MongoDB for application data.
- Investigate lightweight AI workloads based on available system resources.
- Document deployment, configuration, and backup procedures for each additional service.

## 4. Scope Limitations

- Performance depends on available CPU, memory, storage, and network bandwidth.
- Raspberry Pi Zero 2 W has limited resources and may not support every planned service effectively.
- High availability requires appropriate service replication, synchronization, and failure handling; a secondary device alone does not guarantee it.
- Remote access depends on correct tunnel configuration, identity policies, and service security.
- Additional applications may require separate storage, backup, and resource planning.

## 5. Development Priorities

The recommended order for future development is:

1. Establish reliable backups and test recovery.
2. Add system and service monitoring.
3. Measure baseline performance and identify bottlenecks.
4. Deploy additional applications as required.
5. Improve authentication and network isolation.
6. Evaluate secondary-node services and high availability.

## 6. Conclusion

The project establishes a foundation for a private, self-hosted NAS with DNS security, controlled remote access, and media streaming. The feature scope provides a roadmap for improving monitoring, application availability, security, automation, and reliability while keeping future plans distinct from the current implementation.

