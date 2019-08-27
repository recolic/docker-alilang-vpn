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

## Recommand: Alilang in VM (Only windows alilang supports VPN, linux alilang doesn't)

Download virtualbox image from https://recolic.net/go/bsImage . Follow the GUIDE.txt on desktop.

Note, the VM usually need 1GB RAM and 1 Core CPU, and it's better to give it 2 Core CPU for the first run.
