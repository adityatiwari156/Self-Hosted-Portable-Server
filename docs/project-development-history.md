BASIC NAS
   │
   ▼
RASPBERRY PI 5
   │
   ▼
SSD + NVMe-to-SATA
   │
   ▼
DOCKER
   │
   ▼
CASAOS
   │
   ├──────────────► PI-HOLE ─────► UNBOUND
   │
   ▼
TAILSCALE
   │
   ▼
CLOUDFLARE TUNNEL
   │
   ▼
CLOUDFLARE ACCESS
   │
   ├──────────────► JELLYFIN
   ├──────────────► NAVIDROME
   └──────────────► IMMICH
                       │
                       ▼
              ┌─────────────────┐
              │ SELF-HOSTED     │
              │ PORTABLE SERVER │
              └────────┬────────┘
                       │
                       ▼
                FUTURE CLOUD
