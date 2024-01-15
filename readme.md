# Setup project dengan menggunakan docker

1.  Pastikan docker sudah terinstall dan sudah dijalankan di local

        docker system info

2.  Build image dari Dockerfile yang sudah ada

        docker build -t test-go:1 .

3.  Jalankan image hasil build dari Dockerfile sebelumnya

        docker run --rm -p 80:80 --name test-go test-go:1

Dalam project ini juga ada dokumentasi terkait instalasi minikube pada opensuse, bisa klik link berikut [Klik disini](./docs/readme.md)
