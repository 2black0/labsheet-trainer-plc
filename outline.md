# Pengenalan Sistem Kendali

## Dasar-dasar Sistem Kendali

Menjelaskan definisi, tujuan, serta konsep dasar sistem kendali, termasuk sistem terbuka dan tertutup, komponen utama (sensor, aktuator, plant, controller), serta peran sistem kendali dalam berbagai aplikasi teknik dan industri.

## Simulasi dan Implementasi Sistem Kendali

Menguraikan pentingnya simulasi dalam pengembangan sistem kendali, manfaat implementasi praktis, serta gambaran umum perangkat lunak dan perangkat keras yang umum digunakan dalam eksperimen dan aplikasi nyata.

## Bahasa Pemrograman Python untuk Sistem Kendali

Memperkenalkan Python sebagai bahasa pemrograman yang efisien dan populer untuk simulasi sistem kendali, termasuk keunggulan, pustaka-pustaka utama, dan alasan pemilihannya untuk aplikasi teknik.

## Ruang Lingkup dan Organisasi Buku

Menguraikan cakupan materi buku, struktur bab, serta alur pembelajaran yang akan diikuti untuk memudahkan mahasiswa dan dosen dalam memahami dan mengimplementasikan sistem kendali berbasis Python.

# Persiapan Simulasi Berbasis Python

## Instalasi dan Pengelolaan Lingkungan Python

Panduan langkah demi langkah instalasi Python menggunakan Anaconda, pengelolaan virtual environment dengan conda, serta tips menjaga lingkungan kerja yang terstruktur dan terisolasi.

### Instalasi Anaconda

Langkah instalasi distribusi Anaconda sebagai fondasi lingkungan Python yang lengkap untuk sains data dan simulasi teknik.

### Pengelolaan Virtual Environment dengan Conda

Penjelasan tentang pembuatan, aktivasi, dan pengelolaan virtual environment agar setiap proyek terpisah dan mudah dikendalikan dependensinya.

## Instalasi dan Penggunaan Library Utama

Panduan instalasi library penting seperti NumPy, Matplotlib, Jupyter Notebook, dan python-control, serta penjelasan singkat fungsinya dalam simulasi sistem kendali.

### Instalasi Library

Langkah instalasi library utama menggunakan conda dan pip, serta tips troubleshooting instalasi.

## Pengantar Penggunaan Jupyter Notebook

Penjelasan tentang Jupyter Notebook sebagai lingkungan pemrograman interaktif untuk simulasi, dokumentasi, dan visualisasi hasil eksperimen.

## Pengantar Penggunaan NumPy

Dasar-dasar penggunaan NumPy untuk operasi numerik, manipulasi array/matriks, dan peranannya dalam pemodelan sistem kendali.

## Pengantar Penggunaan Matplotlib

Dasar penggunaan Matplotlib untuk visualisasi data, pembuatan grafik respons sistem, dan analisis hasil simulasi.

## Pengantar Penggunaan python-control

Pengenalan python-control untuk pemodelan, analisis, dan simulasi sistem kendali linier, serta contoh penggunaannya untuk transfer function dan state-space.

# Pemodelan Sistem

## Konsep Dasar dan Langkah Pemodelan Sistem

Menjelaskan proses identifikasi, penyederhanaan, dan penurunan model matematis dari sistem fisik ke bentuk yang dapat dianalisis dan disimulasikan.

## Representasi Model Sistem

Membahas dua bentuk utama representasi model sistem: fungsi alih (transfer function) dan model ruang keadaan (state-space).

### Fungsi Alih (Transfer Function)

Penjelasan tentang transfer function, cara pembentukan dari persamaan diferensial, dan penggunaannya dalam analisis sistem linier.

### Model Ruang Keadaan (State-Space)

Penjelasan tentang model state-space, keunggulan untuk sistem MIMO dan orde tinggi, serta konversi dari/ke transfer function.

## Diagram Blok Sistem Kendali

Penggunaan diagram blok untuk merepresentasikan hubungan antar komponen, analisis hubungan seri, paralel, dan umpan balik.

### Hubungan Seri

Penjelasan dan contoh sistem dengan blok yang dihubungkan secara seri.

### Hubungan Paralel

Penjelasan dan contoh sistem dengan blok yang dihubungkan secara paralel.

### Hubungan Umpan Balik (Feedback)

Penjelasan dan contoh sistem dengan jalur umpan balik, serta implikasinya terhadap kestabilan dan performa.

## Contoh Pemodelan Sistem Fisik

Studi kasus pemodelan sistem nyata yang sering ditemui di teknik.

### Sistem Mekanik (Massa-Pegas-Redam)

Model matematis dan representasi sistem mekanik dasar.

### Sistem Elektrik (Rangkaian RC)

Model matematis dan transfer function rangkaian RC.

### Sistem Proses Industri (Tangki Air)

Pemodelan sistem proses industri berbasis neraca massa/energi.

### Sistem Motor DC

Pemodelan dan analisis sistem motor DC.

## Validasi Model

Teknik validasi model melalui simulasi dan perbandingan dengan data eksperimen atau sistem nyata.

# Analisis Domain Waktu

## Konsep Dasar Analisis Domain Waktu

Penjelasan mengapa respons waktu penting untuk menilai performa sistem kendali, serta hubungan antara input, output, dan waktu.

## Jenis Respons Domain Waktu

Klasifikasi respons sistem terhadap berbagai jenis masukan.

### Respons Step

Analisis respons sistem terhadap masukan step dan parameter kinerjanya.

### Respons Impuls

Analisis respons sistem terhadap masukan impuls.

### Respons Ramp

Analisis respons sistem terhadap masukan ramp.

### Respons terhadap Sinyal Arbitrer

Analisis respons sistem terhadap masukan acak atau periodik.

## Parameter Kinerja Domain Waktu

Definisi dan perhitungan rise time, settling time, overshoot, error steady-state, dan parameter penting lainnya.

## Analisis Sistem Orde 1 dan Orde 2

Analisis karakteristik dan respons sistem orde 1 dan orde 2 yang sering dijumpai di aplikasi nyata.

### Sistem Orde 1

Karakteristik dan analisis sistem orde satu.

### Sistem Orde 2

Karakteristik dan analisis sistem orde dua.

### Perbandingan Karakteristik dan Aplikasi

Perbandingan performa dan aplikasi sistem orde 1 dan orde 2.

# Analisis Domain Frekuensi

## Konsep Dasar Analisis Domain Frekuensi

Penjelasan pentingnya analisis frekuensi untuk kestabilan dan desain sistem kendali, serta hubungan antara domain waktu dan frekuensi.

## Representasi dan Parameter Kinerja Domain Frekuensi

Pengantar magnitude, phase, bandwidth, resonant peak, gain margin, dan phase margin.

### Bode Plot

Konsep, interpretasi, dan cara membaca Bode plot.

### Nyquist Plot

Konsep, interpretasi, dan aplikasi Nyquist plot untuk analisis kestabilan.

### Nichols Chart

Penggunaan Nichols chart dalam desain dan evaluasi sistem kendali.

# Analisis Kestabilan Sistem

## Konsep Kestabilan Sistem Dinamis

Definisi kestabilan, tipe-tipe kestabilan, dan pentingnya kestabilan dalam sistem kendali.

## Analisis Pole dan Zero Sistem

Definisi, interpretasi, dan pengaruh letak pole-zero terhadap respons dan kestabilan sistem.

### Definisi dan Interpretasi Pole-Zero

Penjelasan matematis dan fisik pole dan zero.

### Pengaruh Pole-Zero terhadap Respons Sistem

Dampak lokasi pole dan zero pada karakteristik waktu dan frekuensi.

### Visualisasi Pole-Zero pada Domain s

Cara memetakan dan menginterpretasi pole-zero pada bidang s.

## Kriteria Kestabilan Routh-Hurwitz

Metode analisis kestabilan sistem linier tanpa perlu menghitung pole secara eksplisit.

### Penyusunan Tabel Routh-Hurwitz

Langkah-langkah membuat tabel Routh-Hurwitz dari persamaan karakteristik.

### Syarat Kestabilan Berdasarkan Routh-Hurwitz

Kondisi yang harus dipenuhi agar sistem stabil menurut kriteria Routh-Hurwitz.

### Contoh Analisis Kestabilan Sistem dengan Routh-Hurwitz

Studi kasus penerapan tabel Routh-Hurwitz pada sistem nyata.

## Analisis Kinerja Error Sistem

Penjelasan dan perhitungan berbagai jenis error pada sistem kendali.

### Error Steady-State (ess)

Definisi dan perhitungan error steady-state untuk berbagai tipe sistem.

### Error Tipe Sistem (Tipe 0, 1, 2, dst)

Klasifikasi sistem berdasarkan tipe dan dampaknya pada error steady-state.

### Perhitungan Error Integral

Pengukuran performa sistem menggunakan kriteria integral error.

#### Integral of Absolute Error (IAE)

#### Integral of Squared Error (ISE)

#### Integral of Time-weighted Absolute Error (ITAE)

#### Integral of Time-weighted Squared Error (ITSE)

# Sistem Kendali PID

## Konsep Dasar dan Struktur PID

Penjelasan prinsip kerja, struktur, dan peran masing-masing komponen PID (P, I, D).

## PID dalam Domain Laplace

Representasi matematis PID dalam domain Laplace dan aplikasinya pada sistem kendali.

### Membuat Kontroler PID

Langkah-langkah membangun kontroler PID dalam bentuk transfer function.

### Simulasi Sistem dengan PID

Simulasi dan analisis performa sistem tertutup dengan kontroler PID.

## Tuning Parameter PID

Metode penentuan parameter PID yang optimal untuk berbagai aplikasi.

### Metode Tuning Klasik

Tuning manual, Ziegler-Nichols, Cohen-Coon, dan metode klasik lainnya.

### Metode Tuning Modern dan Otomatis

Tuning berbasis optimasi, metaheuristik, dan pembelajaran mesin.

### Evaluasi dan Perbandingan Metode Tuning

Analisis kelebihan, kekurangan, dan aplikasi praktis berbagai metode tuning PID.

# Simulasi Robot dengan Sistem Kendali PID

## Instalasi dan Setup Awal Webots

Panduan instalasi dan konfigurasi awal simulator Webots untuk eksperimen robotika.

### Instalasi Webots

Langkah instalasi perangkat lunak Webots.

### Setup Proyek dan Robot di Webots

Pengaturan proyek, pemilihan robot, dan penempatan sensor/aktuator.

## Pemrograman Dasar Robot Wall-Following

Dasar pemrograman sensor dan aktuator pada robot wall-following.

### Pembacaan Sensor Jarak

Teknik membaca data sensor jarak untuk navigasi robot.

### Kontrol Motor Diferensial

Pengaturan kecepatan motor untuk manuver robot.

## Implementasi dan Perbandingan Controller

Implementasi dan analisis perbandingan antara berbagai algoritma kendali.

### Bang-Bang Controller untuk Wall-Following

Desain, implementasi, dan analisis performa bang-bang controller.

### PID Controller untuk Wall-Following

Desain, implementasi, tuning, dan analisis performa PID controller.

### Tuning PID untuk Wall-Following

Proses tuning parameter PID pada aplikasi robot wall-following.

## Analisis Performa dan Troubleshooting

Evaluasi performa sistem, identifikasi masalah umum, dan solusi troubleshooting pada simulasi robot wall-following.
