# Golang mini project

Project ini bertujuan untuk membuat sebuah program yang digunakan untuk menerima request dari port 80 (HTTP) dan memberikan response sesuai dengan response yang sudah dibuat.

Beberapa bagian penting dalam program ini adalah

1.  Library yang digunakan
    Aplikasi ini menggunakan beberapa library sebagai pendukung yaitu

    1. net/http : implementasi protokol http
    2. os : fungsionalitas operasi sistem
    3. echo : library untuk framework web golang

2.  Return ke http menggunakan echo untuk generate content

        e.GET("/", func(c echo.Context) error {
                return c.String(http.StatusOK, "Hello, World!\n")
        })

3.  Penentuan port yang digunakan oleh protokol http

        httpPort := os.Getenv("PORT")
        if httpPort == "" {
                httpPort = "80"
        }

Untuk menjalankan program berikut, kita gunakan environment dari docker secara langsung, berikut langkah-langkahnya

1.  Pastikan docker sudah terinstall dan sudah dijalankan di local

        docker system info

2.  Build image dari Dockerfile yang sudah ada

        docker build -t test-go:1 .

3.  Jalankan image hasil build dari Dockerfile sebelumnya

        docker run --rm -p 80:80 --name test-go test-go:1

Dalam project ini juga ada dokumentasi terkait instalasi minikube pada opensuse, bisa klik link berikut [Klik disini](./docs/readme.md)
