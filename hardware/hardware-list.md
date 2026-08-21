┌─────────────────────────────────────────────────────┐
│                 🖥️ PRIMARY SERVER                  │
├─────────────────────────────────────────────────────┤
│                                                     │
│  🍓 Raspberry Pi 5                                  │
│     └─ 8 GB RAM                                     │
│                                                     │
│  💾 SSD Storage                                     │
│     └─ Primary persistent data storage              │
│                                                     │
│  🔌 NVMe-to-SATA Expansion HAT                     │
│     └─ Expandable SATA storage interface            │
│                                                     │
│  🌐 Gigabit Ethernet                               │
│     └─ Primary network connectivity                 │
│                                                     │
└────────────────────────┬────────────────────────────┘
                         │
                         │ Secondary / Support Node
                         ▼
┌─────────────────────────────────────────────────────┐
│                🔄 SECONDARY NODE                    │
├─────────────────────────────────────────────────────┤
│                                                     │
│  🍓 Raspberry Pi Zero 2W                            │
│     ├─ Secondary DNS node                           │
│     ├─ Remote-access support                        │
│     └─ Future failover & monitoring                 │
│                                                     │
└─────────────────────────────────────────────────────┘
