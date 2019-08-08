# Alilang in docker

## Usage

1. Run the image.

```
docker build -t recolic/alilang -f Dockerfile .
docker run -tid -p 25568:80 -p 25569:1080 -v /dev/shm:/dev/shm recolic/alilang
```

2. Visit http://localhost:25568 and launch alilang. You may just launch a terminal and type `alilang`.
Login and enable the VPN.

3. Use localhost:25569 as socks5 proxy server.

4. Enjoy!

