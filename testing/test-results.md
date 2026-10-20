# Test Results

## 1. Overview

This document records the testing status of the Secure Self-Hosted NAS project implemented using Raspberry Pi 5, Docker, CasaOS, Pi-hole, Unbound, Tailscale, Cloudflare Tunnel, Cloudflare Access, and Jellyfin.

The purpose of testing is to verify service availability, DNS security, remote access, authentication, storage reliability, and overall system functionality.

## 2. Test Environment

| Item | Configuration |
|---|---|
| Primary device | Raspberry Pi 5 (8 GB RAM) |
| Operating system | Raspberry Pi OS Lite 64-bit |
| Storage | SSD with NVMe-to-SATA expansion HAT |
| Container management | Docker |
| NAS management | CasaOS |
| DNS filtering | Pi-hole |
| Recursive DNS | Unbound |
| Private remote access | Tailscale |
| Remote web access | Cloudflare Tunnel |
| Access control | Cloudflare Access |
| Media server | Jellyfin |

## 3. Functional Test Results

| Test ID | Test Case | Expected Result | Status |
|---|---|---|---|
| TR-01 | Check Raspberry Pi system status | System operates normally |  Tested |
| TR-02 | Check Docker containers | Required containers are running |  Tested |
| TR-03 | Access CasaOS dashboard | Dashboard is accessible to an authorized user |  Tested |
| TR-04 | Test Pi-hole DNS filtering | Configured blocklists block matching domains |  Tested |
| TR-05 | Test Unbound DNS resolution | Recursive DNS queries resolve successfully |  Tested |
| TR-06 | Test network DNS configuration | Client devices use the intended DNS server |  Tested |
| TR-07 | Test Tailscale connectivity | Authorized devices connect privately |  Tested |
| TR-08 | Test remote SSH access | SSH works through the configured secure access method |  Tested |
| TR-09 | Test Cloudflare Tunnel | Configured web service is reachable remotely |  Tested |
| TR-10 | Test Cloudflare Access authentication | Authorized users can authenticate successfully | Tested |
| TR-11 | Test unauthorized access | Unauthorized users are denied access |  Tested |
| TR-12 | Test Cloudflare Access session timeout | Access requires reauthentication according to the configured policy |  Tested |
| TR-13 | Test Jellyfin playback | Supported media plays successfully |  Tested |
| TR-14 | Test SSD data persistence | Stored test files remain available after a reboot |  Tested |
| TR-15 | Test service recovery after reboot | Configured services return to the expected state |  Tested |

## 4. Performance Results

The following resource usage figures were reported during normal or idle operation. They are not independently measured or benchmarked here.

| Metric | Reported Observation |
|---|---|
| CPU usage | Approximately 1% |
| RAM usage | Approximately 20% |
| DNS response time | 1ms |
| Network throughput | 1Gb/s |
| Storage read/write speed | 300/260m/s |
| System load under stress | 27% |

Performance may vary with the number of active users, running containers, media streaming, and network conditions.

## 5. Security Validation

| Test ID | Security Check | Expected Result | Status |
|---|---|---|---|
| SEC-01 | Verify Cloudflare Access restrictions | Only permitted identities can access protected services |  Tested |
| SEC-02 | Verify private remote connectivity | Tailscale access is limited to authorized devices and users |  Tested |
| SEC-03 | Review exposed services | Only intended services are accessible externally |  Tested |
| SEC-04 | Review repository configuration files | No passwords, private keys, or API tokens are published |  Tested |

## 6. Test Execution Notes

Update each test after performing it on the actual system.

- **Pass:** The observed result matches the expected result.
- **Fail:** The observed result does not match the expected result.
- **Not Tested:** The test has not yet been performed or verified.

For failed tests, record the issue, troubleshooting steps, and final outcome. Screenshots and command outputs may be stored in the project's `screenshots/` folder after removing sensitive information.

## 7. Conclusion

This document provides a structured record of functional, security, and performance validation for the Secure Self-Hosted NAS project. The final assessment should be completed after the listed tests have been executed and their results documented.

