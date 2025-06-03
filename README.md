# Blockcast-Node
# 🚀 Blockcast Node Auto-Installer

> **Created by [0xTuraj](https://github.com/0xTuraj)** — Follow on [X (Twitter)](https://x.com/0xTuraj)

This is a fully automated script to install and run a [Blockcast](https://blockcast.cc/) node on any Ubuntu-based system with **just one command**.

It installs Docker, pulls the official Blockcast node, initializes it, and displays your registration info (Hardware ID, Challenge Key, Location) — all in a clean, colorful, and interactive terminal experience.

---

### 📦 What You Get

✅ Fully configured and running **Blockcast Docker node**  
✅ Automatic **Docker + Docker Compose** setup  
✅ Geolocation fetched and displayed for node context  

---

### ⚙️ Requirements

- Ubuntu 20.04 / 22.04  
- `bash` shell  
- Sudo privileges  
- Internet connection  
- Create an account on [**Blockcast**](https://app.blockcast.network?referral-code=2xxxge)

---

### 🧠 What This Script Does (Step by Step)

1. **Updates system packages** and upgrades if needed  
2. **Installs required tools**: `git`, `curl`, `gnupg`, `jq`, `toilet`, `lolcat`, `pv`, etc.  
3. **Adds the official Docker repository** securely  
4. **Installs Docker Engine and Docker Compose plugin**  
5. **Enables and starts Docker service**  
6. **Clones the Blockcast Docker Compose setup**  
7. **Launches the Blockcast node** with Docker Compose  
8. **Initializes the Blockcast node**  
9. **Fetches your node's geolocation** (city, region, country, coordinates)  
10. **Displays completion message and social links**

---

### 🧪 Installation (Quick Start)

📌 **Just copy and paste this in your terminal and you're done:**

```bash
git clone https://github.com/0xTuraj/blockcast-installer.git && \
cd blockcast-installer && \
chmod +x install_blockcast.sh && \
./install_blockcast.sh
```

---

### 🌍 Result Screenshot

[![Termius Screenshot](https://i.postimg.cc/m2C6Xfyk/Screenshot-20250603-161706-Termius.jpg)](https://i.postimg.cc/m2C6Xfyk/Screenshot-20250603-161706-Termius.jpg)

---

### 📌 What You’ll See After Setup

Once the script finishes, your terminal will display:

- 🆔 **Hardware ID**  
- 🔐 **Challenge Key**  
- 🌐 **City** (based on your IP geolocation)

You’ll need this data to register your node.

---

### 📝 Next Step: Register Your Node

1. 🔗 Visit your [**Blockcast Dashboard**](https://app.blockcast.network?referral-code=2xxxge)  
2. Go to **Manage Nodes** → **Register Node**  
3. Fill in:
   - Hardware ID  
   - Challenge Key  
   - City  
4. Click **Register Node**

🎉 You're done! Your node is now part of the decentralized Blockcast network.

![Post Setup Screenshot](https://i.postimg.cc/8Pmmf1bR/Screenshot-20250603-203121.jpg)

---

### 🙌 Follow Me

If you found this useful, consider following or supporting:

- 🧑‍💻 GitHub: [https://github.com/0xTuraj](https://github.com/0xTuraj)  
- 🐦 Twitter / X: [https://x.com/0xTuraj](https://x.com/0xTuraj)
