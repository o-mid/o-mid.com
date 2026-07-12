# o-mid.com

Personal site for **Omid Mirzaei** — Senior Full-Stack Engineer (Flutter, crypto, Web3, fintech).

Live: [https://o-mid.com](https://o-mid.com)

## Stack

- Static HTML / CSS / JS
- No framework, no build step
- Served by Nginx on a VPS

## Structure

```
index.html
css/styles.css
js/main.js
assets/omid.jpg
resume/Omid_Mirzaei_CV.pdf
deploy/nginx-o-mid.com.conf
```

## Local preview

```bash
cd o-mid.com
python3 -m http.server 8080
# open http://localhost:8080
```

## Deploy

Upload site files to `/var/www/o-mid.com` on the VPS, enable the Nginx vhost in `deploy/nginx-o-mid.com.conf`, then issue TLS with Certbot once DNS points to the server.

## Author

Omid Mirzaei · [omidomirzaei@gmail.com](mailto:omidomirzaei@gmail.com) · [LinkedIn](https://www.linkedin.com/in/omid-mirzaei/) · [GitHub](https://github.com/o-mid)
