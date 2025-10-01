# Stealth VPN

Stealth VPN in Docker. Wireguard as a VPN with wstunnel before it (analog to obfsproxy) to hide VPN traffic.

See wg-easy: https://github.com/wg-easy/wg-easy
See wstunnel: https://github.com/erebe/wstunnel

WireGuard client: https://download.wireguard.com/windows-client/
Wstunnel client: https://github.com/erebe/wstunnel/releases

Note: Wstunnel gets deleted by Windows Defender: https://github.com/erebe/wstunnel/issues/224

How to run:

```bash
# see dockerState/run.sh for running scripts

docker compose up -d

# see client certificates (put them on client side in json files):
docker compose logs -f
```