# Flutter Web portfolio (archive)

Flutter Web portfolio for **Omid Mirzaei**, Senior Full-Stack Engineer (Flutter · Crypto · Web3 · Fintech).

**Live (Flutter archive):** [https://o-mid.github.io/o-mid.com/](https://o-mid.github.io/o-mid.com/)

> The current main site at [https://o-mid.com](https://o-mid.com) is a Next.js portfolio ([o-mid/website](https://github.com/o-mid/website)).  
> **This repository** is the Flutter Web version, kept public so you can clone it, study the structure, or reuse the approach.

## Why Flutter Web

This project uses **Flutter Web** so the portfolio is built with the same stack as the mobile products in the CV: Dart, Flutter widgets, Riverpod, and a single codebase that compiles to a static web app.

You get:

- Responsive layout (mobile / tablet / desktop)
- Section-based portfolio (about, experience, projects, contact)
- Asset-driven content (translations + project images)
- A production `build/web` output you can host as static files

## Stack

| Piece | Detail |
| ----- | ------ |
| SDK | Flutter **3.38.6** via [FVM](https://fvm.app/) (see `.fvmrc`) |
| Language | Dart |
| State | Riverpod |
| i18n | easy_localization |
| Platforms | Web (primary), plus Android / iOS / desktop folders from Flutter |
| Deploy | Static `build/web` on **GitHub Pages** (`gh-pages` branch) |

## Requirements

- [FVM](https://fvm.app/) (or Flutter 3.38.6 on your PATH)
- Chrome (or another browser) for `flutter run -d chrome`

## Clone and run

```bash
git clone https://github.com/o-mid/o-mid.com.git
cd o-mid.com

fvm use 3.38.6
fvm flutter pub get

# regenerate localisation keys if you edit translation JSON
make localization

fvm flutter run -d chrome
```

Without FVM (if you already have Flutter 3.38.6):

```bash
flutter pub get
make localization
flutter run -d chrome
```

## Build for production

```bash
fvm flutter build web --release --base-href /o-mid.com/ --no-wasm-dry-run --no-tree-shake-icons
```

For a root-hosted deploy (custom domain), use `--base-href /` instead.

Output directory: **`build/web`**

This repo deploys that folder to GitHub Pages via `.github/workflows/deploy.yaml`. Live site: [https://o-mid.github.io/o-mid.com/](https://o-mid.github.io/o-mid.com/).

## Customise content

Personal details, experience, and projects live mainly under:

- `assets/translations/en.json`
- `assets/images/` (including project covers)
- `resume/` for the CV PDF

Update those, rebuild, and push to `main` (Actions publishes Pages).

## Useful make / flutter commands

| Command | Purpose |
| ------- | ------- |
| `fvm flutter pub get` | Install packages |
| `make localization` | Codegen for easy_localization |
| `fvm flutter run -d chrome` | Local web run |
| `fvm flutter build web --release --base-href /o-mid.com/` | Production static build for GitHub Pages |
| `fvm flutter analyze` | Static analysis |

## Related

- Current site (Next.js): [o-mid/website](https://github.com/o-mid/website) → [https://o-mid.com](https://o-mid.com)
- This Flutter archive live: [https://o-mid.github.io/o-mid.com/](https://o-mid.github.io/o-mid.com/)

## Author

Omid Mirzaei · Dubai · [omidomirzaei@gmail.com](mailto:omidomirzaei@gmail.com)

## License

See [LICENSE.md](LICENSE.md).

This repo is public. Clone it and use Flutter Web for your own portfolio if you want the same approach.
