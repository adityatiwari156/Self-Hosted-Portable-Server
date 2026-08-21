# 🖥️ Secure Self-Hosted NAS & Private Cloud

### Raspberry Pi 5 • Docker • CasaOS • Pi-hole • Unbound • Tailscale • Cloudflare • Jellyfin

> **A privacy-focused, low-power self-hosted infrastructure platform built on Raspberry Pi 5 — combining private storage, DNS security, secure remote access, containerized applications, and media streaming into a single modular home server.**

---

## 🚀 Overview

Traditional cloud platforms provide convenient access to files and media, but they also introduce **third-party infrastructure dependency, recurring storage costs, limited customization, and privacy considerations**.

This project explores a self-hosted alternative using a **Raspberry Pi 5 (8 GB)** as the primary infrastructure server.

The system combines:

* 🗄️ **Network Attached Storage**
* ☁️ **Private Cloud Infrastructure**
* 🐳 **Containerized Applications**
* 🛡️ **Network-Wide DNS Filtering**
* 🔎 **Recursive DNS Resolution**
* 🔐 **Encrypted Remote Access**
* 🌐 **Cloudflare Zero Trust Access**
* 🎬 **Self-Hosted Media Streaming**
* 📊 **Future Infrastructure Monitoring**
* 🏠 **Future Home Automation**

The architecture is designed to be **modular, scalable, and expandable**, allowing new services to be added without redesigning the entire infrastructure.

---

# 🏗️ Project Architecture

```text
                         INTERNET
                             │
                             ▼
                    ┌─────────────────┐
                    │    Cloudflare   │
                    │ Tunnel + Access │
                    └────────┬────────┘
                             │
                             ▼
                    ┌─────────────────┐
                    │  Raspberry Pi 5 │
                    │     8 GB RAM    │
                    └────────┬────────┘
                             │
             ┌───────────────┼────────────────┐
             │               │                │
             ▼               ▼                ▼
        ┌─────────┐     ┌──────────┐    ┌──────────┐
        │  Docker │     │  Pi-hole │    │ Tailscale│
        └────┬────┘     └────┬─────┘    └──────────┘
             │               │
             ▼               ▼
        ┌─────────┐      ┌─────────┐
        │ CasaOS  │      │ Unbound │
        └────┬────┘      └─────────┘
             │
       ┌─────┼──────────────┐
       │     │              │
       ▼     ▼              ▼
   ┌──────┐ ┌────────┐ ┌──────────┐
   │ NAS  │ │Jellyfin│ │  Future  │
   │Storage│ │ Media  │ │ Services │
   └──────┘ └────────┘ └──────────┘
       │
       ▼
 ┌──────────────────┐
 │ SSD Storage      │
 │ NVMe-to-SATA HAT │
 └──────────────────┘
```

---

# 🎯 Objectives

The project aims to:

1. Build a **low-power personal NAS** using Raspberry Pi 5.
2. Provide centralized private storage using SSD-based storage.
3. Deploy and manage applications using **Docker and CasaOS**.
4. Implement **network-wide DNS filtering** using Pi-hole.
5. Deploy **Unbound** for recursive DNS resolution.
6. Provide secure remote connectivity using **Tailscale**.
7. Publish selected services securely using **Cloudflare Tunnel**.
8. Protect exposed applications using **Cloudflare Access / Zero Trust**.
9. Provide personal media streaming through **Jellyfin**.
10. Build a modular foundation for future self-hosted services.
11. Explore **high-availability and failover concepts** using a secondary Raspberry Pi Zero 2W.
12. Apply practical concepts from **Linux administration, networking, cybersecurity, virtualization/containerization, and cloud computing**.

---

# 🖥️ Hardware

## Primary Server

| Component            | Specification               |
| -------------------- | --------------------------- |
| 🖥️ Server           | Raspberry Pi 5              |
| 🧠 RAM               | 8 GB                        |
| 💿 Operating System  | Raspberry Pi OS Lite 64-bit |
| 💾 Storage           | SSD                         |
| 🔌 Storage Interface | NVMe-to-SATA Expansion HAT  |
| 🌐 Network           | Gigabit Ethernet            |
| ⚡ Architecture       | Low-power ARM server        |
| 🎯 Primary Role      | Self-hosted infrastructure  |

---

## 🔄 Secondary Node

A **Raspberry Pi Zero 2W** is being considered as a lightweight secondary infrastructure node.

### Planned Responsibilities

* 🛡️ Secondary Pi-hole
* 🔐 Secondary Tailscale node
* 🌐 Emergency DNS availability
* 📊 Lightweight monitoring
* 🔄 Future failover experimentation

> ⚠️ The Pi Zero 2W is intended as a **supporting/secondary node**, not a complete replacement for the Raspberry Pi 5.

---

# 🧰 Software Stack

| Technology                     | Purpose                      | Status            |
| ------------------------------ | ---------------------------- | ----------------- |
| 🐧 Raspberry Pi OS Lite 64-bit | Base operating system        | ✅ Implemented     |
| 🐳 Docker                      | Containerization             | ✅ Implemented     |
| 🏠 CasaOS                      | NAS & application management | ✅ Implemented     |
| 🛡️ Pi-hole                    | DNS filtering                | ✅ Implemented     |
| 🔎 Unbound                     | Recursive DNS resolver       | ✅ Implemented     |
| 🔐 Tailscale                   | Secure remote access         | ✅ Implemented     |
| ☁️ Cloudflare Tunnel           | Secure web access            | ✅ Implemented     |
| 🛡️ Cloudflare Access          | Zero Trust authentication    | ✅ Implemented     |
| 🎬 Jellyfin                    | Media streaming              | 🟢 Currently Used |
| 🎵 Navidrome                   | Music streaming              | 🔮 Future         |
| 📸 Immich                      | Photo & video backup         | 🔮 Future         |
| 🖼️ Prism                      | Media backup experimentation | 🔮 Future         |
| 🔄 Syncthing                   | Backup synchronization       | 🔮 Future         |
| ☁️ Nextcloud                   | Private cloud workspace      | 🔮 Future         |
| 🏠 Home Assistant              | Home automation              | 🔮 Future         |
| 📡 Zigbee                      | Smart-device communication   | 🔮 Future         |
| 📊 Prometheus + Grafana        | Infrastructure monitoring    | 🔮 Future         |
| 🗃️ MongoDB                    | Development database         | 🔮 Future         |
| 🗃️ MariaDB                    | Development database         | 🔮 Future         |
| 🔑 Private Authentication      | Centralized identity         | 🔮 Future         |

---

# ⭐ Key Features

## 🗄️ 1. Self-Hosted NAS

The Raspberry Pi 5 provides centralized storage for personal files and media.

SSD storage is connected through an **NVMe-to-SATA expansion HAT**, providing dedicated storage for continuous server workloads rather than relying exclusively on the operating-system microSD card.

### Benefits

* Centralized storage
* Local network file access
* Expandable storage architecture
* Reduced dependency on third-party cloud providers
* Complete control over stored data

---

## 🐳 2. Docker-Based Application Deployment

Docker provides isolated environments for running multiple services on the same Raspberry Pi.

### Advantages

* Application isolation
* Modular deployment
* Simplified upgrades
* Persistent volumes
* Easier recovery
* Reduced dependency conflicts
* Easy service expansion

This allows the Raspberry Pi to function as a **multi-service home server** rather than being limited to a single application.

---

## 🏠 3. CasaOS Management

CasaOS provides a graphical management layer over the self-hosted infrastructure.

### Capabilities

* 🌐 Web-based dashboard
* 📦 Application management
* 🐳 Docker integration
* 💾 Storage management
* 🛒 Application marketplace
* 📊 Service monitoring
* ⚙️ Simplified administration

CasaOS makes the infrastructure easier to manage while Docker handles application isolation underneath.

---

## 🛡️ 4. Network-Wide DNS Filtering

**Pi-hole** operates as the network DNS filtering server.

Network clients can use Pi-hole as their DNS resolver, allowing filtering to be applied centrally rather than configuring every device individually.

### Filtering capabilities include:

* 🚫 Advertisements
* 👁️ Trackers
* 📡 Telemetry domains
* 🌐 Unwanted domains
* ⚠️ Selected malicious domains

### DNS Flow

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

## 🔎 5. Recursive DNS Resolution

**Unbound** is deployed behind Pi-hole to provide recursive DNS resolution.

Instead of relying entirely on a traditional public recursive resolver, Unbound can perform DNS resolution through the DNS hierarchy.

```text
Client
   │
   ▼
Pi-hole
   │
   ▼
Unbound
   │
   ├── Root Servers
   │
   ├── TLD Servers
   │
   └── Authoritative Servers
```

This provides greater control over the DNS architecture and forms an important part of the project's **privacy and networking layer**.

---

## 🔐 6. Secure Remote Access with Tailscale

Tailscale provides encrypted remote connectivity to the private infrastructure without requiring direct public exposure of internal services.

It is used for:

* Secure remote administration
* Private network access
* Remote SSH
* Access to internal services
* Secure connectivity between nodes

---

## ☁️ 7. Cloudflare Tunnel + Zero Trust

Selected web applications can be made remotely accessible through **Cloudflare Tunnel** without directly exposing the home server to the public internet through traditional port forwarding.

**Cloudflare Access** adds an authentication layer to protected applications.

```text
Remote User
     │
     ▼
Cloudflare
     │
     ▼
Cloudflare Access
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

This architecture forms the project's **Zero Trust access layer**.

---

## 🎬 8. Self-Hosted Media Streaming

**Jellyfin** provides personal media streaming from the self-hosted infrastructure.

The Raspberry Pi acts as the central media server, allowing authorized devices to access the user's personal media library over the network or through secure remote connectivity.

---

# 🧩 Modular Architecture

One of the core design principles of this project is **modularity**.

Instead of building one large monolithic application, individual services perform specific functions:

```text
                    Raspberry Pi 5
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
     Storage           Network          Applications
        │                 │                 │
      NAS            Pi-hole           Jellyfin
        │             Unbound             │
      SSDs            Tailscale          CasaOS
                       Cloudflare          │
                                          Docker
```

This architecture allows new services to be added independently.

---

# 🔮 Future Expansion

The infrastructure is designed to support additional services such as:

### ☁️ Private Cloud

* Nextcloud
* Syncthing
* Immich
* Additional backup services

### 🎵 Media

* Navidrome
* Additional media management tools
* Automated media organization

### 🏠 Home Automation

* Home Assistant
* Zigbee coordinator
* Smart-device integrations
* Local automation

### 📊 Monitoring

* Prometheus
* Grafana
* Network monitoring
* Speed-test monitoring
* Service health monitoring

### 🔐 Infrastructure & Security

* Centralized authentication
* Additional Zero Trust controls
* Service-level access policies
* Security monitoring

### 💻 Development

* MongoDB
* MariaDB
* Web applications
* Development environments
* Private Git services

---

# 📈 Project Status

| Area                          | Status         |
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
| Secondary Pi Node             | 🟡 Planned     |
| Immich                        | 🔵 Planned     |
| Nextcloud                     | 🔵 Planned     |
| Home Assistant                | 🔵 Planned     |
| Monitoring Stack              | 🔵 Planned     |
| Central Authentication        | 🔵 Planned     |

**Legend:**
🟢 Implemented / Operational
🟡 Under consideration
🔵 Future development

---

# 🧠 Technologies & Concepts Demonstrated

This project provides hands-on implementation of:

```text
Linux Administration
        │
        ├── Raspberry Pi OS
        ├── SSH
        └── Server Management

Networking
        │
        ├── DNS
        ├── DHCP
        ├── Routing
        ├── VPN
        └── Remote Access

Cybersecurity
        │
        ├── Zero Trust
        ├── Access Control
        ├── DNS Filtering
        └── Secure Remote Connectivity

Containerization
        │
        ├── Docker
        ├── Containers
        └── Persistent Volumes

Self-Hosting
        │
        ├── NAS
        ├── Cloud Services
        ├── Media Server
        └── Infrastructure Services
```

---

# 🎓 Academic Project

This project was developed as a **final-year Computer Science engineering project** to demonstrate the practical integration of:

* Computer Networking
* Linux System Administration
* Cybersecurity
* Cloud Computing
* Containerization
* Server Infrastructure
* DNS Architecture
* Remote Access Technologies

The project focuses on transforming a low-power single-board computer into a practical **private infrastructure platform**.

---

# 🛣️ Roadmap

* [x] Raspberry Pi 5 server deployment
* [x] SSD-based storage
* [x] Docker deployment
* [x] CasaOS installation
* [x] Pi-hole deployment
* [x] Unbound integration
* [x] Tailscale remote access
* [x] Cloudflare Tunnel
* [x] Cloudflare Access
* [x] Jellyfin deployment
* [ ] Secondary Pi Zero 2W node
* [ ] Automated backups
* [ ] Immich deployment
* [ ] Nextcloud deployment
* [ ] Prometheus + Grafana monitoring
* [ ] Home Assistant
* [ ] Zigbee integration
* [ ] Centralized authentication
* [ ] Advanced failover architecture

---

# 📂 Project Documentation

Detailed documentation covering the architecture, installation, configuration, troubleshooting, testing, and development history is maintained within this repository.

> **The goal is not simply to build a NAS, but to demonstrate how a Raspberry Pi can be transformed into a complete, secure, modular, and extensible private infrastructure platform.**

---

## 👨‍💻 Project

**Secure Self-Hosted NAS & Private Cloud using Raspberry Pi 5**

**Focus:** Networking • Cybersecurity • Linux • Self-Hosting • Cloud Infrastructure • Containerization

---

⭐ **If you find this project useful, consider starring the repository.**
