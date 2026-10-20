# Test Plan

## 1. Objective

The purpose of testing is to verify the functionality, connectivity, security, and basic performance of the Raspberry Pi 5 self-hosted NAS.

## 2. Functional Testing

| Test ID | Component | Test Procedure | Expected Result |
|---|---|---|---|
| T01 | CasaOS | Open the CasaOS dashboard | Dashboard loads successfully |
| T02 | Docker | Check the running containers | Expected containers are running |
| T03 | Pi-hole | Generate DNS queries from a client | Queries appear in the Pi-hole dashboard |
| T04 | Router DNS | Check the DNS settings on a client | The configured Pi-hole DNS server is used |
| T05 | Unbound | Query a domain through the configured DNS chain | DNS resolution succeeds |
| T06 | DNS Filtering | Query a domain listed in the blocklist | The request is blocked according to the configured policy |
| T07 | Tailscale | Connect from an authorized remote device | The NAS is reachable through the private network |
| T08 | SSH | Connect to the NAS using the intended secure connection | Terminal access works |
| T09 | Cloudflare Tunnel | Open the configured domain | The intended web service is reachable |
| T10 | Cloudflare Access | Test authorized and unauthorized email identities | Access follows the configured policy |
| T11 | Session Timeout | Test access after the configured session duration | Reauthentication is required according to the policy |
| T12 | Jellyfin | Open the media library and play a supported file | Media playback works |
| T13 | SSD Storage | Create, read, and delete a test file | File operations work correctly |
| T14 | Reboot Recovery | Reboot the server and check the services | Required services recover as configured |

## 3. Performance Testing

Performance testing may include:

- CPU utilization
- RAM utilization
- SSD read/write speed
- DNS response time
- Network download and upload speed
- Ping latency and packet loss
- Jellyfin playback performance

Record the test conditions and measured values.

## 4. Security Testing

Security checks include:

- Verify that unauthorized Cloudflare Access requests are denied.
- Confirm that SSH is not unnecessarily exposed to the public internet.
- Check that DNS filtering follows the configured policy.
- Confirm that secrets are not stored in the public GitHub repository.
- Verify that only intended services are exposed externally.

## 5. Test Reporting

Each test should be recorded in `test-results.md` with its actual result.

Use the following statuses:

- Pass: Tested successfully.
- Fail: Tested and did not meet the expected result.
- Not Tested: Test has not yet been performed.

Do not report an expected result as an observed result.
