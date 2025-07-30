# 🚀 Static LinkedIn-style Homepage Deployment with Nginx

This repository contains a **static mockup of the LinkedIn homepage** and a deployment script to install and configure it using **Nginx** on an **Ubuntu VM**.

---

## 📁 Contents

- `index.html` — A simple, static HTML page inspired by the LinkedIn homepage.
- `deploy_static_page.sh` — A shell script that installs Nginx (if needed), deploys the HTML page, and starts the web server.

---

## 📦 Requirements

- Ubuntu-based Linux VM
- `sudo` access
- Internet connection

---

## 🛠️ Installation & Deployment

Clone this repository and run the deployment script:

```bash
git clone https://github.com/<your-username>/<your-repo-name>.git
cd <your-repo-name>
sudo bash deploy_static_page.sh
```

> ⚠️ Replace `<your-username>` and `<your-repo-name>` with your actual GitHub details.

---

## 🌐 Accessing the Website

After successful deployment, open a browser and visit:

```
http://<your-vm-ip-address>
```

Replace `<your-vm-ip-address>` with the IP address of your Ubuntu VM.

---

## ✅ Example

If your VM IP is `192.168.1.100`, go to:

```
http://192.168.1.100
```

---

## 🧾 License

This project is for educational and demo purposes only. No LinkedIn branding or assets are used.

---

Happy hosting! 🎉
