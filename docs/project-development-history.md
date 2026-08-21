flowchart TD

    A["🗄️ Basic NAS<br/>File Storage"]
    B["🍓 Raspberry Pi 5<br/>8 GB RAM<br/>Primary Server"]
    C["💾 SSD Storage<br/>Fast & Persistent Data Layer"]
    D["🔌 NVMe-to-SATA HAT<br/>Expandable Storage Interface"]
    E["🐳 Docker<br/>Containerized Application Layer"]
    F["🏠 CasaOS<br/>Server & App Management"]

    G["🛡️ Pi-hole<br/>Network-wide DNS Filtering"]
    H["🔎 Unbound<br/>Recursive DNS"]
    I["🔐 Tailscale<br/>Secure Remote VPN"]
    J["☁️ Cloudflare Tunnel<br/>Secure Web Access"]
    K["🛡️ Cloudflare Access<br/>Zero Trust Authentication"]

    L["🎬 Jellyfin<br/>Video Streaming"]
    M["🎵 Navidrome<br/>Music Streaming"]
    N["📸 Immich<br/>Photo & Video Backup"]

    O["☁️ Self-Hosted Cloud<br/>Private • Portable • Modular • Secure"]

    P["🔮 Future Expansion<br/>Nextcloud • Syncthing • Home Assistant<br/>Zigbee • Prometheus • Grafana • Authentication • Backup"]

    A --> B
    B --> C
    C --> D
    D --> E
    E --> F

    F --> G
    G --> H
    H --> I
    I --> J
    J --> K

    K --> L
    K --> M
    K --> N

    L --> O
    M --> O
    N --> O

    O --> P
