#sudo apt install wireguard-tools
wg genkey > server
wg pubkey < server > server.pub

wg genkey > client
wg pubkey < client > client.pub

wg genkey > preshared