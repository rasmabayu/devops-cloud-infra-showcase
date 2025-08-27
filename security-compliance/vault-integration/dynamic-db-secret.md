# Contoh Konsep Vault Dynamic Secret
- Enable database secret engine
- Konfigurasi role untuk mengeluarkan kredensial sementara (TTL pendek)
- Aplikasi menggunakan ServiceAccount K8s -> JWT login ke Vault -> fetch creds
(Lampirkan contoh policy & template sesuai DB yang digunakan di lingkunganmu)
