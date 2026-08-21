┌──────────────────────────────────────────────────────────────┐
│                    PROJECT EVOLUTION                         │
│        From Basic NAS → Portable Private Server              │
└──────────────────────────────────────────────────────────────┘

      🗄️
      │
      ▼
┌───────────────┐
│   BASIC NAS   │
│ File Storage  │
└───────┬───────┘
        │
        ▼
┌────────────────────┐
│   RASPBERRY PI 5   │
│     8 GB RAM       │
│   Primary Server   │
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│   SSD STORAGE      │
│ Fast & Persistent  │
│     Data Layer     │
└─────────┬──────────┘
          │
          ▼
┌──────────────────────┐
│  NVMe-to-SATA HAT    │
│ Expandable Storage   │
│      Interface       │
└──────────┬───────────┘
           │
           ▼
┌────────────────────┐
│       DOCKER       │
│ Containerized      │
│ Application Layer  │
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│      CASAOS        │
│ Server & App       │
│    Management      │
└─────────┬──────────┘
          │
          ├──────────────────────┐
          ▼                      ▼
┌─────────────────┐      ┌─────────────────┐
│    PI-HOLE      │      │     UNBOUND     │
│ DNS Filtering   │─────▶│ Recursive DNS   │
└─────────────────┘      └─────────────────┘
          │
          ▼
┌────────────────────┐
│     TAILSCALE      │
│ Secure Remote VPN  │
│    Private Access  │
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│  CLOUDFLARE TUNNEL │
│ Secure Web Access  │
│  Without Port      │
│     Exposure       │
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│  CLOUDFLARE ACCESS │
│   ZERO TRUST       │
│ Authentication &   │
│   Access Control   │
└─────────┬──────────┘
          │
          ├──────────────────┬──────────────────┐
          ▼                  ▼                  ▼
     🎬 JELLYFIN       🎵 NAVIDROME        📸 IMMICH
     Video Streaming   Music Streaming    Photo & Video
                                            Backup
          │                  │                  │
          └──────────────────┼──────────────────┘
                             ▼
                  ┌──────────────────────┐
                  │  SELF-HOSTED CLOUD   │
                  │                      │
                  │  Private • Portable  │
                  │  Modular • Secure    │
                  └──────────┬───────────┘
                             │
                             ▼
                  🔮 FUTURE EXPANSION
                  ─────────────────────
                  Nextcloud • Syncthing
                  Home Assistant • Zigbee
                  Prometheus • Grafana
                  Authentication • Backup
