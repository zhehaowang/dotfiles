# Home Raspberry Pi setup

Static IP 192.168.1.221.

### pihole

* Status webpage: port 8080.
* Not configured in DHCP default DNS server.

### DynamicDNS

* zhehaopi.ddns.net, no-ip

### shadowsocks

* Port 24601 (forwarded as-is)

### website

* zhehao.me aliased to https://zhehaopi.ddns.net
* huge http site served on 8081 (not forwarded as-is, open for debugging purposes when haproxy doesn't work out)
* haproxy serving cert zhehaopi.ddns.net on 443 (forwarded as-is)
* `nohup hugo server -D --bind=0.0.0.0 --port=8081 --baseUrl=https://zhehaopi.ddns.net --appendPort=false &`
  * where `baseUrl` is how css resources are located: setting it differently would cause cross-site complaints
  * `appendPort` is significant in that it decides whether port number 8081 is included when locating resource with baseUrl. If it is included we'd require port 8081 on our router to be forwarded to Pi's port 443, while without it 443 on our router is already forwarded as-is.

### certbot

* Port 80 forwarded as-is (for certbot auto renew)
* Port 443 forwarded as-is (for haproxy when not certbot renew'ing)

### ssh reverse tunnel

* Dest port 22022 is forwarded to 22

### email

* postfix set up to use test gmail account with App password following [this](https://medium.com/swlh/setting-up-gmail-and-other-email-on-a-raspberry-pi-6f7e3ad3d0e).
* email to `pi` is forwarded.
* `sendmail [phone-number]@msg.fi.google.com` to send to phone
