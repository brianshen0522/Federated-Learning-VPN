# federated learning vpn manual

## install
install wireguard
```
sudo apt install wireguard -y
```

## setup service
put vpn.service in /etc/systemd/system/
```
sudo cp vpn.service /etc/systemd/system/
```
put vpn.sh in /usr/bin/, make it executable
```
sudo cp vpn.sh /usr/bin/
sudo chmod +x /usr/bin/vpn.sh
```

change vpn profile name to wg0.conf, put it in /etc/wireguard
```
sudo cp WireGuard.conf /etc/wireguard/wg0.conf
```

edit profile
```
AllowedIPs = 0.0.0.0/0, 10.44.0.1/32
change it to
AllowedIPs = 192.168.211.16, 10.44.0.1/32
```

make a link for resolve
```
sudo ln -s /usr/bin/resolvectl /usr/local/bin/resolvconf
```

prepare service
```
sudo systemctl daemon-reload
sudo systemctl enable vpn.service
sudo systemctl restart vpn.service
```

## get vpn profile
vpn management link: http://211.73.81.220:8081/
credential user = admin, password = Skile143

### client naming policy
1. organization name abbreviation at the begin(e.g. ntunhs, ntcu)
2. whatever you want

![](https://i.imgur.com/AaITLQD.png)

![](https://i.imgur.com/aZj5FNq.png)
**!!!profile file will ONLY be downloadable here, please properly keep!!!**
