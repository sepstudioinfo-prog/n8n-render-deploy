# SEP STUDIO - n8n Deployment on Render

## 🎯 Overview
This repository contains the deployment configuration for **n8n** on **Render** for the SEP STUDIO automation system.

## 🔐 Security Notice
**⚠️ IMPORTANT:** Passwords, API keys, and secrets are NOT stored in this repository. They are set as **Environment Variables** in the Render dashboard.

## 📦 What's Included
| File | Purpose |
|------|---------|
| `Dockerfile` | Container configuration |
| `render.yaml` | Render blueprint |
| `.dockerignore` | Docker ignore file |

## 🚀 Quick Deploy

### 1. Fork/Clone this Repository
```bash
git clone https://github.com/YOUR_USERNAME/n8n-render-deploy.git
```

2. Push to GitHub

```bash
git add .
git commit -m "Initial n8n deployment setup"
git push origin main
```

3. Deploy on Render

1. Go to Render Dashboard
2. Click New + → Blueprint
3. Connect your GitHub repository
4. Click Apply

4. Set Secrets in Render Dashboard

After deployment, go to Environment tab and set:

· N8N_BASIC_AUTH_PASSWORD = [Your chosen password]
· Any other API keys


https://stats.uptimerobot.com/LQP8BVy3Bc
---

SEP STUDIO — Masked. Stacked. Ready.
