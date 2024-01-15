# Instalasi Microk8s pada Opensuse Linux

1.  Pastikan sudah melakukan setup snap pada local environment.

        snap --version

    ![snap version](./asset/1.%20snap%20version.png)

2.  Install microk8s secara langsung menggunakan perintah berikut

        sudo snap install microk8s --classic

3.  Tambahkan user default kita pada group dengan menggunakan perintah berikut

        sudo usermod -aG microk8s $(whoami)

4.  Buat folder konfigurasi dari kubernetes secara manual dan ubah owner dari folder tersebut dengan user kita dengan perintah berikut

        mkdir ~/.kube
        sudo chown -R $(whoami) ~/.kube

5.  Cek status microk8s apakah sudah berjalan atau tidak

        microk8s status

    ![microk8s installation](./asset/2.%20microk8s%20installation.png)

6.  Aktifkan dependency yang dibutuhkan sesuai dengan kebutuhan
