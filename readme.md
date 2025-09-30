# Stealth VPN

See Shapeshifter build in: https://github.com/DenisNovac/shapeshifter-dispatcher

I was only able to run the Open Source OpenVPN client which supports SOCKS 5 proxy: https://github.com/OpenVPN/openvpn-gui 
("OpenVPN Connect" client doesn't support SOCKS5 and therefore doesn't work with Shapeshifter).

See bat files for understanding how to run Windows clients.

How to run:

```bash
# see dockerState/run.sh for running scripts

docker compose up -d

# see client certificates (put them on client side in json files):
docker compose logs -f
```