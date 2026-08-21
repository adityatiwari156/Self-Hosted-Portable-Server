# 🖥️ Secure Self-Hosted NAS & Private Cloud

### Raspberry Pi 5 • Docker • CasaOS • Pi-hole • Unbound • Tailscale • Cloudflare • Jellyfin • Navidrome • Immich

> **A privacy-focused, low-power self-hosted infrastructure platform built on Raspberry Pi 5, combining private storage, DNS security, secure remote access, containerized applications, photo and video backup, and media streaming into a single modular home server.**

---

## 📌 Overview

Traditional cloud storage platforms provide convenient access to files and media, but they introduce dependency on external infrastructure, recurring storage costs, limited customization, and privacy considerations.

This project explores a **self-hosted alternative** using a **Raspberry Pi 5 with 8 GB RAM** as the primary infrastructure server.

The system combines:

* 🗄️ Network Attached Storage
* ☁️ Private cloud infrastructure
* 🐳 Containerized application deployment
* 🛡️ Network-wide DNS filtering
* 🔎 Recursive DNS resolution
* 🔐 Encrypted remote access
* 🌐 Cloudflare Tunnel
* 🛡️ Cloudflare Zero Trust Access
* 🎬 Self-hosted video streaming
* 🎵 Self-hosted music streaming
* 📸 Automatic photo and video backup
* 📊 Future infrastructure monitoring
* 🏠 Future home automation

The architecture is designed around a **modular and expandable infrastructure model**, allowing additional services to be deployed without redesigning the entire system.

---

# 🏷️ Project Title

## **Design and Implementation of a Secure Self-Hosted NAS with Private Cloud, DNS Security, and Zero Trust Networking using Raspberry Pi 5**

---

# 🏗️ System Architecture

```text
                                INTERNET
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │      Cloudflare     │
                         │  Tunnel + Access    │
                         └──────────┬──────────┘
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │    Raspberry Pi 5   │
                         │       8 GB RAM      │
                         │   Raspberry Pi OS   │
                         └──────────┬──────────┘
                                    │
             ┌──────────────────────┼──────────────────────┐
             │                      │                      │
             ▼                      ▼                      ▼
       ┌──────────┐           ┌──────────┐          ┌───────────┐
       │  Docker  │           │ Pi-hole  │          │ Tailscale │
       └────┬─────┘           └────┬─────┘          └───────────┘
            │                      │
            ▼                      ▼
       ┌──────────┐           ┌──────────┐
       │  CasaOS  │           │ Unbound  │
       └────┬─────┘           └──────────┘
            │
      ┌─────┼───────────────┬───────────────┐
      │     │               │               │
      ▼     ▼               ▼               ▼
   ┌─────┐ ┌─────────┐ ┌──────────┐   ┌──────────┐
   │ NAS │ │Jellyfin │ │Navidrome │   │  Immich  │
   └──┬──┘ └─────────┘ └──────────┘   └──────────┘
      │
      ▼
┌──────────────────────┐
│ SSD Storage          │
│ NVMe-to-SATA HAT     │
└──────────────────────┘
```

---

# 🎯 Objectives

The primary objectives of this project are:

1. Build a **low-power personal NAS** using Raspberry Pi 5.
2. Provide centralized private storage using SSD-based storage.
3. Deploy and manage applications using **Docker and CasaOS**.
4. Implement network-wide DNS filtering using **Pi-hole**.
5. Deploy **Unbound** as a recursive DNS resolver.
6. Provide secure remote connectivity using **Tailscale**.
7. Provide secure web access using **Cloudflare Tunnel**.
8. Protect remotely accessible services using **Cloudflare Access**.
9. Provide personal video streaming through **Jellyfin**.
10. Provide personal music streaming through **Navidrome**.
11. Provide automatic photo and video backup through **Immich**.
12. Design a scalable architecture for future self-hosted services.
13. Investigate high-availability possibilities using a secondary Raspberry Pi Zero 2W.
14. Demonstrate practical concepts from networking, cybersecurity, Linux administration, containerization, and cloud computing.

---

# 🖥️ Hardware

## Primary Server

| Component            | Specification               |
| -------------------- | --------------------------- |
| 🖥️ Server           | Raspberry Pi 5              |
| 🧠 RAM               | 8 GB                        |
| 🐧 Operating System  | Raspberry Pi OS Lite 64-bit |
| 💾 Primary Storage   | SSD                         |
| 🔌 Storage Interface | NVMe-to-SATA Expansion HAT  |
| 🌐 Network           | Gigabit Ethernet            |
| ⚡ Architecture       | ARM64                       |
| 🎯 Primary Role      | Self-hosted infrastructure  |

---

## 💾 Storage Architecture

The Raspberry Pi 5 uses dedicated SSD-based storage connected through an **NVMe-to-SATA expansion HAT**.

The storage architecture is designed to separate operating-system storage from persistent application and user data where possible.

```text
                 Raspberry Pi 5
                       │
                       │ PCIe
                       ▼
             ┌────────────────────┐
             │ NVMe-to-SATA HAT   │
             └─────────┬──────────┘
                       │
              ┌────────┼────────┐
              │        │        │
              ▼        ▼        ▼
            SSD      SSD      HDD
              │        │        │
              └────────┼────────┘
                       ▼
               Persistent Data
```

### Benefits

* Higher reliability than relying exclusively on microSD storage
* Better suitability for continuous server workloads
* Expandable storage architecture
* Centralized application data
* Suitable for media libraries and backups

---

# 🔄 Secondary Node

A **Raspberry Pi Zero 2W** is planned as a lightweight secondary infrastructure node.

### Planned Responsibilities

* 🛡️ Secondary Pi-hole
* 🔐 Secondary Tailscale node
* 🌐 Emergency DNS availability
* 📊 Lightweight monitoring
* 🔄 Future failover experimentation

> ⚠️ The Raspberry Pi Zero 2W is intended as a supporting node and is **not currently a full replacement for the Raspberry Pi 5**.

---

# 🧰 Software Stack

| Technology                     | Purpose                            | Status        |
| ------------------------------ | ---------------------------------- | ------------- |
| 🐧 Raspberry Pi OS Lite 64-bit | Base operating system              | ✅ Implemented |
| 🐳 Docker                      | Containerization                   | ✅ Implemented |
| 🏠 CasaOS                      | NAS & application management       | ✅ Implemented |
| 🛡️ Pi-hole                    | DNS filtering                      | ✅ Implemented |
| 🔎 Unbound                     | Recursive DNS resolver             | ✅ Implemented |
| 🔐 Tailscale                   | Secure remote access               | ✅ Implemented |
| ☁️ Cloudflare Tunnel           | Secure web access                  | ✅ Implemented |
| 🛡️ Cloudflare Access          | Zero Trust authentication          | ✅ Implemented |
| 🎬 Jellyfin                    | Video/media streaming              | ✅ Implemented |
| 🎵 Navidrome                   | Music streaming                    | ✅ Implemented |
| 📸 Immich                      | Photo & video backup               | ✅ Implemented |
| 🖼️ Prism                      | Media/photo backup experimentation | 🔮 Future     |
| 🔄 Syncthing                   | Backup synchronization             | 🔮 Future     |
| ☁️ Nextcloud                   | Private cloud workspace            | 🔮 Future     |
| 🏠 Home Assistant              | Home automation                    | 🔮 Future     |
| 📡 Zigbee                      | Smart-device communication         | 🔮 Future     |
| 📊 Prometheus + Grafana        | Infrastructure monitoring          | 🔮 Future     |
| 🗃️ MongoDB                    | Development database               | 🔮 Future     |
| 🗃️ MariaDB                    | Development database               | 🔮 Future     |
| 🔑 Private Authentication      | Centralized identity               | 🔮 Future     |

---

# ⭐ Key Features

## 🗄️ 1. Self-Hosted NAS

The Raspberry Pi 5 provides centralized storage for personal files and media.

SSD storage is connected through an **NVMe-to-SATA expansion HAT**, providing dedicated storage for continuous server workloads.

### Capabilities

* Centralized file storage
* Local network access
* Personal media storage
* Expandable storage
* Self-hosted data management
* Reduced dependency on third-party cloud storage

---

# 🐳 2. Docker-Based Application Deployment

Docker provides isolated environments for deploying multiple applications on the Raspberry Pi.

### Advantages

* Application isolation
* Modular deployment
* Simplified upgrades
* Persistent volumes
* Easier recovery
* Dependency isolation
* Easy service expansion

Docker allows multiple independent services to run on the same physical server.

---

# 🏠 3. CasaOS Management

CasaOS provides a graphical management layer for the self-hosted environment.

### Capabilities

* 🌐 Web-based dashboard
* 📦 Application management
* 🐳 Docker integration
* 💾 Storage management
* 🛒 Application marketplace
* 📊 Service monitoring
* ⚙️ Simplified administration

CasaOS provides a user-friendly management interface while Docker handles application deployment underneath.

---

# 🛡️ 4. Network-Wide DNS Filtering

**Pi-hole** operates as the network DNS filtering server.

The router can provide Pi-hole as the DNS server to connected devices, allowing centralized filtering across the local network.

### Filtering Capabilities

* 🚫 Advertisements
* 👁️ Trackers
* 📡 Telemetry domains
* 🌐 Unwanted domains
* ⚠️ Selected malicious domains

### DNS Architecture

```text
Client Device
      │
      ▼
    Router
      │
      ▼
   Pi-hole
      │
      ▼
   Unbound
      │
      ▼
 DNS Hierarchy
      │
      ▼
Authoritative DNS
```

---

# 🔎 5. Recursive DNS with Unbound

**Unbound** provides recursive DNS resolution behind Pi-hole.

The architecture allows DNS requests to be handled through the DNS hierarchy rather than depending exclusively on a traditional public recursive resolver.

```text
                    DNS Request
                         │
                         ▼
                      Pi-hole
                         │
                         ▼
                      Unbound
                         │
             ┌───────────┼───────────┐
             ▼           ▼           ▼
          Root        TLD        Authoritative
         Servers      Servers       Servers
             │           │           │
             └───────────┼───────────┘
                         ▼
                     DNS Answer
```

---

# 🔐 6. Secure Remote Access with Tailscale

**Tailscale** provides encrypted remote connectivity to the private infrastructure.

It is used for secure access to internal resources without requiring every service to be publicly exposed.

### Use Cases

* Secure remote administration
* SSH access
* Internal service access
* Remote NAS access
* Secure connectivity between infrastructure nodes

---

# ☁️ 7. Cloudflare Tunnel

Cloudflare Tunnel provides secure access to selected web services without traditional inbound port forwarding.

```text
Remote User
     │
     ▼
 Cloudflare
     │
     ▼
Cloudflare Tunnel
     │
     ▼
 Raspberry Pi 5
     │
     ▼
Self-Hosted Service
```

This provides a controlled path between remote users and selected services running on the private infrastructure.

---

# 🛡️ 8. Cloudflare Access / Zero Trust

**Cloudflare Access** provides an authentication and authorization layer for protected services.

The architecture follows a Zero Trust approach where access is granted based on identity and policy rather than simply trusting network location.

```text
Remote User
     │
     ▼
 Cloudflare
     │
     ▼
 Access Policy
     │
     ▼
 Authentication
     │
     ▼
 Cloudflare Tunnel
     │
     ▼
 Raspberry Pi
     │
     ▼
 Application
```

---

# 🎬 9. Jellyfin — Personal Media Streaming

**Jellyfin** is used as the self-hosted media server.

It provides access to personal video and media libraries across supported devices.

### Capabilities

* 🎥 Video streaming
* 📺 Personal media library
* 🗂️ Media organization
* 🌐 Local network access
* 🔐 Remote access through the secure infrastructure

---

# 🎵 10. Navidrome — Personal Music Server

**Navidrome** provides self-hosted music streaming.

It allows the music collection stored on the NAS to be accessed through compatible clients.

### Capabilities

* 🎵 Music streaming
* 📚 Personal music library
* 🏷️ Metadata-based organization
* 📱 Client compatibility
* 🌐 Local and remote access

Navidrome extends the infrastructure from a simple NAS into a complete **personal media platform**.

---

# 📸 11. Immich — Personal Photo & Video Backup

**Immich** is implemented as the self-hosted photo and video management platform.

It provides a private alternative for automatically backing up personal media.

### Capabilities

* 📱 Mobile photo backup
* 🎥 Video backup
* 🖼️ Photo organization
* 👤 Personal media library
* ☁️ Self-hosted storage
* 🔐 Private ownership of uploaded media

Immich provides an important private-cloud component by allowing personal photos and videos to be stored within the user's own infrastructure.

---

# 🔗 Complete Service Architecture

The current infrastructure can be viewed as several interconnected layers:

```text
┌───────────────────────────────────────────────┐
│                 USER DEVICES                  │
│     PC • Laptop • Phone • TV • Tablet         │
└───────────────────────┬───────────────────────┘
                        │
                        ▼
┌───────────────────────────────────────────────┐
│                 ACCESS LAYER                  │
│                                               │
│     Tailscale • Cloudflare Tunnel             │
│             • Cloudflare Access               │
└───────────────────────┬───────────────────────┘
                        │
                        ▼
┌───────────────────────────────────────────────┐
│              RASPBERRY PI 5                   │
│                  8 GB RAM                     │
│                                               │
│  ┌────────────┐     ┌─────────────────────┐  │
│  │   Docker   │────▶│       CasaOS        │  │
│  └────────────┘     └─────────────────────┘  │
│                                               │
│  ┌──────────┐  ┌─────────┐  ┌────────────┐  │
│  │ Pi-hole  │  │ Unbound │  │  Tailscale │  │
│  └──────────┘  └─────────┘  └────────────┘  │
│                                               │
│  ┌──────────┐ ┌───────────┐ ┌─────────────┐ │
│  │ Jellyfin │ │ Navidrome │ │   Immich    │ │
│  └──────────┘ └───────────┘ └─────────────┘ │
│                                               │
└───────────────────────┬───────────────────────┘
                        │
                        ▼
              ┌──────────────────┐
              │   SSD Storage    │
              │ NVMe-to-SATA HAT │
              └──────────────────┘
```

---

# 🧩 Modular Architecture

A major design principle of this project is **modularity**.

Instead of relying on one monolithic application, individual services perform specific roles.

```text
                    Raspberry Pi 5
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
        ▼                 ▼                 ▼
     Storage           Network         Applications
        │                 │                 │
        │                 │                 ├── Jellyfin
        │                 │                 ├── Navidrome
        │                 │                 ├── Immich
        │                 │                 └── Future Apps
        │                 │
        │                 ├── Pi-hole
        │                 ├── Unbound
        │                 ├── Tailscale
        │                 └── Cloudflare
        │
        └── SSD Storage
```

This design allows services to be:

* Added independently
* Updated independently
* Removed without affecting unrelated services
* Isolated through containers
* Expanded as hardware resources permit

---

# 🔮 Future Expansion

The current system is operational, but the architecture provides room for additional services.

## ☁️ Private Cloud

* Nextcloud
* Syncthing
* Additional backup systems
* Private document management

## 🏠 Home Automation

* Home Assistant
* Zigbee coordinator
* Smart-device integrations
* Local automation

## 📊 Monitoring

* Prometheus
* Grafana
* Network monitoring
* Speed-test monitoring
* Historical performance tracking
* Service health monitoring

## 🔐 Security & Identity

* Centralized authentication
* Additional Zero Trust policies
* Service-level access control
* Security monitoring
* Private identity infrastructure

## 💻 Development

* MongoDB
* MariaDB
* Web applications
* Development environments
* Private Git services

---

# 📊 Current Project Status

| Component                     | Status         |
| ----------------------------- | -------------- |
| Raspberry Pi 5 Infrastructure | 🟢 Operational |
| SSD Storage                   | 🟢 Operational |
| Docker                        | 🟢 Operational |
| CasaOS                        | 🟢 Operational |
| Pi-hole                       | 🟢 Operational |
| Unbound                       | 🟢 Operational |
| Tailscale                     | 🟢 Operational |
| Cloudflare Tunnel             | 🟢 Operational |
| Cloudflare Access             | 🟢 Operational |
| Jellyfin                      | 🟢 Operational |
| Navidrome                     | 🟢 Operational |
| Immich                        | 🟢 Operational |
| Secondary Pi Zero 2W          | 🟡 Planned     |
| Syncthing                     | 🔵 Future      |
| Nextcloud                     | 🔵 Future      |
| Home Assistant                | 🔵 Future      |
| Zigbee                        | 🔵 Future      |
| Prometheus + Grafana          | 🔵 Future      |
| Central Authentication        | 🔵 Future      |
| Advanced Failover             | 🔵 Future      |

### Status Legend

* 🟢 **Implemented / Operational**
* 🟡 **Planned / Under Development**
* 🔵 **Future Expansion**

---

# 🛣️ Roadmap

## ✅ Completed

* [x] Raspberry Pi 5 server deployment
* [x] Raspberry Pi OS Lite 64-bit
* [x] SSD-based storage
* [x] NVMe-to-SATA storage expansion
* [x] Docker deployment
* [x] CasaOS installation
* [x] Pi-hole deployment
* [x] Unbound integration
* [x] Tailscale remote access
* [x] Cloudflare Tunnel
* [x] Cloudflare Access
* [x] Jellyfin deployment
* [x] Navidrome deployment
* [x] Immich deployment

## 🔄 Planned

* [ ] Secondary Raspberry Pi Zero 2W node
* [ ] Automated backup architecture
* [ ] Syncthing deployment
* [ ] Nextcloud deployment
* [ ] Prometheus + Grafana monitoring
* [ ] Network performance dashboard
* [ ] Home Assistant
* [ ] Zigbee integration
* [ ] Centralized authentication
* [ ] Advanced failover architecture

---

# 🧠 Technologies & Concepts Demonstrated

This project provides practical implementation experience across several areas of computer science and IT infrastructure.

### 🐧 Linux Administration

* Raspberry Pi OS
* SSH
* Linux services
* Storage management
* Server administration

### 🌐 Networking

* IP networking
* DNS
* DHCP
* Routing
* VPN
* Remote access
* Network services

### 🛡️ Cybersecurity

* Zero Trust architecture
* Access control
* DNS filtering
* Secure remote connectivity
* Service exposure management

### 🐳 Containerization

* Docker
* Container isolation
* Persistent volumes
* Application deployment
* Service management

### ☁️ Cloud & Self-Hosting

* Private cloud architecture
* Self-hosted applications
* Remote web access
* Distributed service architecture
* Personal data ownership

### 💾 Storage

* NAS architecture
* SSD storage
* Persistent application data
* Media storage
* Backup infrastructure

---

# 🎓 Academic Project

This project was developed as a **Final Year Computer Science Engineering Project**.

It demonstrates the practical integration of:

* Computer Networking
* Cybersecurity
* Linux Administration
* Cloud Computing
* Containerization
* Server Infrastructure
* DNS Architecture
* Remote Access
* Self-Hosted Applications

The project focuses on transforming a low-power single-board computer into a practical **private infrastructure platform** capable of providing services normally associated with cloud infrastructure.

---

# 💡 Why Raspberry Pi 5?

The Raspberry Pi 5 provides a useful platform for experimenting with self-hosted infrastructure because of its:

* ⚡ Low power consumption
* 💰 Low operating cost
* 🧠 8 GB RAM configuration
* 🌐 Gigabit Ethernet
* 🔌 PCIe connectivity
* 🐳 Docker compatibility
* 🐧 Linux support
* 📦 Large self-hosting ecosystem
* 🔧 Expandability

The project demonstrates how inexpensive hardware can be transformed into a capable personal server through appropriate software architecture and networking.

---

# 🔐 Security Philosophy

Security is an important part of the project architecture.

The system attempts to avoid unnecessary public exposure by separating different access mechanisms:

```text
                    INTERNET
                       │
              ┌────────┴────────┐
              │                 │
              ▼                 ▼
       Cloudflare Access    Tailscale
              │                 │
              ▼                 ▼
       Web Applications    Private Network
              │                 │
              └────────┬────────┘
                       ▼
                  Raspberry Pi
```

The architecture follows the principle of **exposing only what is necessary** while keeping internal infrastructure private whenever possible.

---

# 📂 Repository Structure

```text
secure-self-hosted-nas/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│   ├── architecture/
│   ├── networking/
│   ├── security/
│   ├── storage/
│   ├── services/
│   └── troubleshooting/
│
├── docker/
│   ├── casaos/
│   ├── pihole/
│   ├── unbound/
│   ├── jellyfin/
│   ├── navidrome/
│   └── immich/
│
├── configs/
│   ├── networking/
│   ├── dns/
│   ├── cloudflare/
│   └── tailscale/
│
├── scripts/
│
└── project-development-history.md
```

> ⚠️ **Never commit passwords, API keys, Cloudflare tokens, Tailscale authentication keys, private certificates, `.env` files containing secrets, or other sensitive credentials to the repository.**

---

# 📚 Documentation

Detailed documentation for the project can include:

* System architecture
* Network topology
* Storage architecture
* Docker deployment
* CasaOS configuration
* Pi-hole configuration
* Unbound configuration
* Tailscale configuration
* Cloudflare Tunnel configuration
* Cloudflare Access policies
* Jellyfin deployment
* Navidrome deployment
* Immich deployment
* Backup strategy
* Troubleshooting
* Security considerations
* Development history

---

# 🧪 Testing & Validation

The infrastructure can be evaluated through:

### Network Testing

* DNS resolution testing
* DNS filtering verification
* Latency measurements
* Remote connectivity testing
* Tailscale connectivity

### Service Testing

* Docker container health
* CasaOS application availability
* Jellyfin streaming
* Navidrome streaming
* Immich synchronization
* Cloudflare Tunnel connectivity

### Storage Testing

* Read/write performance
* Storage availability
* File integrity
* Media accessibility
* Backup verification

---

# 📈 Future Vision

The long-term objective is to evolve this Raspberry Pi infrastructure into a more complete **personal private cloud and home laboratory**.

Potential future architecture:

```text
                         PERSONAL CLOUD
                               │
       ┌───────────────────────┼───────────────────────┐
       │                       │                       │
       ▼                       ▼                       ▼
   FILE STORAGE            MEDIA CLOUD           HOME SERVICES
       │                       │                       │
   Nextcloud                Jellyfin              Home Assistant
   Syncthing                Navidrome              Zigbee
   Backups                  Immich                 Automation
       │                       │                       │
       └───────────────────────┼───────────────────────┘
                               │
                               ▼
                       Raspberry Pi Cluster
                               │
                  ┌────────────┴────────────┐
                  │                         │
                  ▼                         ▼
             Raspberry Pi 5           Pi Zero 2W
               Primary                  Secondary
```

The ultimate goal is to build a **secure, modular, low-power, self-hosted ecosystem** capable of providing personal cloud, media, networking, security, automation, and development services under direct user control.

---

# 👨‍💻 Project Information

### Project Type

**Final Year Major Project**

### Domain

**Computer Networking • Cybersecurity • Cloud Computing • Linux • Self-Hosting**

### Primary Platform

**Raspberry Pi 5 — 8 GB**

### Architecture

**Self-Hosted • Modular • Containerized • Privacy-Focused**

---

# ⭐ Conclusion

This project demonstrates that a Raspberry Pi 5 can be transformed from a small single-board computer into a capable **private infrastructure server**.

By combining:

> **NAS + Docker + CasaOS + Pi-hole + Unbound + Tailscale + Cloudflare + Jellyfin + Navidrome + Immich**

the system provides a practical foundation for **private storage, secure remote access, DNS security, personal media streaming, and personal photo/video backup**.

The modular architecture also provides a foundation for future expansion into **private cloud collaboration, home automation, monitoring, centralized authentication, automated backups, and high-availability infrastructure**.

---

## ⭐ If you find this project useful

Consider giving the repository a **⭐ Star** and exploring the documentation to learn how the individual components work together.

---

### 🔧 Built With

**Raspberry Pi 5 • Raspberry Pi OS • Linux • Docker • CasaOS • Pi-hole • Unbound • Tailscale • Cloudflare Tunnel • Cloudflare Access • Jellyfin • Navidrome • Immich**

---
