@echo off

echo Starting WSTUNNEL proxy. Leave this windows(s) open.
wstunnel -V
echo ===
echo ===
echo ***
echo ***

:: listen locally on udp 999 and forward to wireguard 10.5.0.2:51820 on proxy server 192.168.1.7:1443
wstunnel client --local-to-remote "udp://999:10.5.0.2:51820?timeout_sec=0" --log-lvl DEBUG --http-upgrade-path-prefix "JfvybOEvEya4KjrF1qlwkyEINMy4713wJ7YlLoWV4yAV2hnqMgCgvoQrOn0ui2zL" --websocket-ping-frequency-sec 30 wss://192.168.1.7:1443
pause