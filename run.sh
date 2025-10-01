
# wstunnel secret
read -r -n 64 path_prefix < <(LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom); echo $path_prefix > tunnel



# to check listened ports:
ss -tuln | grep tcp

# to check machine ip
ip -c a | grep inet

# to setup ubuntu firewall
ufw allow ssh
ufw default allow outgoing
ufw default deny incoming
ufw allow 443
ufw allow 20000

ufw enable
ufw reload

ufw deny 20000
ufw reload

ufw status verbose

# specific ports doesn't need to be allowed, docker allows himself

# ufw allow 20001
# ufw allow 20000


# ufw allow out 20001

ufw status numbered

# disable rule with 20000 after vpn setup to prohibit admin ui usage
# ufw delete N 


# wg keys (not needed with UI)
wg genkey > client
wg pubkey < client > client.pub

wg genkey > preshared