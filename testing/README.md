# Testing and Validation

## Overview

This directory contains the test plans, test results, and performance measurements for the Secure Self-Hosted NAS project built using Raspberry Pi 5. Testing is performed to verify system functionality, network security, remote access, data storage, and service reliability.

## Testing Objectives

- Verify that all configured services are running correctly.
- Test DNS filtering using Pi-hole and recursive DNS resolution using Unbound.
- Verify secure remote access through Tailscale and Cloudflare Tunnel.
- Validate Cloudflare Access authentication and unauthorized access restrictions.
- Test Jellyfin media streaming and SSD storage reliability.
- Record system resource usage, performance measurements, and test results.

## Testing Scope

The following components are included in the testing process:

| Component | Testing Focus |
|---|---|
| Raspberry Pi 5 | System status and resource usage |
| Docker | Container status and service availability |
| CasaOS | NAS management interface |
| Pi-hole | DNS filtering and ad blocking |
| Unbound | Recursive DNS resolution |
| Tailscale | Private remote connectivity |
| Cloudflare Tunnel | Remote web access |
| Cloudflare Access | Authentication and access control |
| Jellyfin | Media streaming and playback |
| SSD Storage | File access and data persistence |

## Test Documentation

- **[Test Plan](test-plan.md)** — Test cases, procedures, and expected results.
- **[Test Results](test-results.md)** — Actual outcomes and pass/fail status of executed tests.
- **[Performance Results](performance-results.md)** — CPU usage, memory usage, DNS response time, and other performance measurements.

## Testing Methodology

Testing is performed by checking service status, accessing web interfaces, validating DNS responses, testing remote connectivity, and verifying authentication restrictions. Performance testing involves observing system resource utilization and recording measured response times.

Each test should be marked as **Pass**, **Fail**, or **Not Tested** based on the actual outcome. Screenshots or command outputs may be retained as supporting evidence, with sensitive information removed before publication.

## Security Considerations

- Do not publish passwords, API tokens, private keys, or authentication secrets.
- Redact private IP addresses, personal email addresses, and other sensitive information where appropriate.
- Test unauthorized access only against systems and services you own or are authorized to test.

## Current Status

Testing documentation is maintained alongside project development. Results should be updated as tests are executed and verified. Planned or unexecuted tests must remain marked as **Not Tested** until evidence is available.

## Conclusion

This directory provides a structured record of functional, security, reliability, and performance testing for the self-hosted NAS environment. It helps demonstrate the system's implementation, identify issues, and document areas for future improvement.
