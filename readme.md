# Stealth VPN

Stealth VPN in Docker. Wireguard as a VPN with wstunnel before it (analog to obfsproxy) to hide VPN traffic.

Previously it was written with OpenVPN + Shapeshifter (see commits history).

See `docker-compose.yml`. Default UI password is `test123`.

In given configuration Wireguard traffic will be visible only on internal Docker subnet between machines `10.5.0.2` and `10.5.0.3` but it will be hidden completely on outside networks.

For real environments be sure to generate new keys:

```bash
# wstunnel secret
read -r -n 64 path_prefix < <(LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom); echo $path_prefix

# wireguard UI secret
# be sure to change any $ to $$ and not use quotes '' in the compose
docker run ghcr.io/wg-easy/wg-easy wgpw test123
```

See wg-easy: https://github.com/wg-easy/wg-easy
See wstunnel: https://github.com/erebe/wstunnel

WireGuard client: https://download.wireguard.com/windows-client/
Wstunnel client: https://github.com/erebe/wstunnel/releases

Note: Wstunnel gets deleted by Windows Defender: https://github.com/erebe/wstunnel/issues/224
