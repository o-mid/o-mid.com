# o-mid.com

Personal portfolio for **Omid Mirzaei** — Senior Full-Stack Engineer (Flutter, crypto, Web3, fintech).

Live: [https://o-mid.com](https://o-mid.com)

## Stack

- Flutter Web
- Riverpod
- easy_localization
- Deployed as static files behind Nginx

## Develop

```bash
fvm use 3.38.6
fvm flutter pub get
make localization
fvm flutter run -d chrome
```

## Build

```bash
fvm flutter build web --release --base-href /
```

Output: `build/web`

## Author

Omid Mirzaei · Dubai · [omidomirzaei@gmail.com](mailto:omidomirzaei@gmail.com)
