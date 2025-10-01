#sudo apt install wireguard-tools
wg genkey > server
wg pubkey < server > server.pub

wg genkey > client
wg pubkey < client > client.pub

wg genkey > preshared

# secret for wstunnel
read -r -n 64 path_prefix < <(LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom); echo $path_prefix > tunnel
