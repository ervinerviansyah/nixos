# Dotfiles untuk NixOS dan Home Manager

Ini adalah konfigurasi pribadi saya untuk **NixOS** dan **Home Manager**. Anda bebas menggunakannya tanpa syarat apa pun. Tidak perlu menyebut nama saya atau menyertakan lisensi. Silakan ambil, modifikasi, dan gunakan sesuai kebutuhan Anda.

## Struktur Direktori
Proyek ini terorganisir dalam beberapa direktori utama:

```
.
├── flake.nix                # File utama untuk flakes
├── hosts/                   # Konfigurasi spesifik untuk setiap host
│   ├── my-laptop/
│   │   ├── configuration.nix
│   │   └── hardware-configuration.nix
│   └── my-desktop/
│       ├── configuration.nix
│       └── hardware-configuration.nix
├── home-manager/            # Konfigurasi Home Manager
│   ├── home.nix
│   └── modules/             # Modul-modul Home Manager
├── base/                    # Konfigurasi dasar sistem
│   ├── base.nix
│   ├── users.nix
│   └── services.nix
└── assets/                  # Dokumentasi dan aset pendukung
    ├── screenshots/
    └── docs/
        └── setup-guide.md
```

### Penjelasan:
- **`flake.nix`**: File utama yang mendefinisikan input, output, dan bagaimana modul-modul diimpor.
- **`hosts/`**: Berisi konfigurasi spesifik untuk setiap host (misalnya laptop atau desktop).
- **`home-manager/`**: Berisi konfigurasi Home Manager, termasuk modul-modul seperti package manager, editor, dll.
- **`base/`**: Berisi konfigurasi dasar sistem yang digunakan oleh semua host.
- **`assets/`**: Berisi dokumentasi tambahan, screenshot, atau file pendukung lainnya.

## Cara Menggunakan
Berikut adalah langkah-langkah untuk menggunakan konfigurasi ini:

### 1. Clone Repository
Pertama, clone repository ini ke mesin Anda:
```bash
git clone https://github.com/namarepo/dotfiles.git
cd dotfiles
```

### 2. Terapkan Konfigurasi
#### Untuk NixOS:
Jika Anda ingin menerapkan konfigurasi NixOS, jalankan:
```bash
sudo nixos-rebuild switch --flake .#<hostname>
```
Ganti `<hostname>` dengan nama host yang ingin Anda konfigurasi (misalnya `my-laptop`).

#### Untuk Home Manager:
Jika Anda hanya ingin menggunakan konfigurasi Home Manager, jalankan:
```bash
home-manager switch --flake .#<username>
```
Ganti `<username>` dengan nama pengguna Anda.

### 3. Modifikasi Sesuai Kebutuhan
- Anda dapat mengedit file-file di direktori `hosts/`, `home-manager/`, atau `base/` sesuai kebutuhan Anda.
- Misalnya, tambahkan package baru di `home-manager/modules/packages-system.nix` atau ubah konfigurasi desktop di `home-manager/modules/desktop-environment.nix`.

## Dokumentasi Tambahan
Untuk dokumentasi lebih lanjut, silakan lihat:
- **Direktori `assets/docs/`**: Berisi panduan setup dan tutorial.
- **File `assets/docs/setup-guide.md`**: Panduan langkah demi langkah untuk mengatur konfigurasi ini dari awal.

Contoh isi `setup-guide.md`:
```markdown
# Panduan Setup

1. Pastikan Nix sudah terinstal di sistem Anda.
2. Aktifkan eksperimental features untuk flakes:
   ```bash
   nix.settings.experimental-features = [ "nix-command" "flakes" ];
   ```
3. Clone repository ini dan terapkan konfigurasi menggunakan perintah:
   ```bash
   sudo nixos-rebuild switch --flake .#<hostname>
   ```
```

## Lisensi
Proyek ini dirilis di bawah **Unlicense**, yang berarti Anda dapat melakukan apa saja dengan konfigurasi ini tanpa batasan apa pun. Tidak ada atribusi yang diperlukan. Lihat file [LICENSE](LICENSE) untuk detail lebih lanjut.

Selamat menggunakan! 🚀
```

