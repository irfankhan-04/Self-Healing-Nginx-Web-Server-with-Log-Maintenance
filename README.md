# 🛠️ Self-Healing Nginx Web Server with Log Maintenance

This project demonstrates how to deploy a static portfolio website using **Nginx** on a **Linux-based AWS EC2 instance**, along with automation scripts to ensure high availability and clean log management.

---

## 🚀 Project Overview

- ✅ Hosted a static HTML portfolio site using **Nginx** on an EC2 instance.
- 🔁 Created a **self-healing Bash script** that automatically restarts Nginx if it goes down.
- ⏰ Configured a **cron job** to run the health check script every minute.
- 🧹 Developed a **log cleanup script** that deletes Nginx log files older than 7 days.
- 📅 Scheduled the cleanup script to run daily via cron for disk maintenance.

---

## 🧰 Tools & Technologies

- Linux (Amazon EC2)
- Nginx Web Server
- Bash Scripting
- Crontab (Task Scheduler)
- Systemd
- SSH

---

## 📁 Project Structure

-├── index.html # Portfolio website (hosted using Nginx)
-├── nginx-monitor.sh # Script to restart Nginx if it is down
-├── delete-old-logs.sh # Script to delete logs older than 7 days
-├── crontab-setup.txt # Sample cron entries for automation
-├── images/ # Folder containing screenshots
-└── README.md # Project documentation

yaml
Copy
Edit

---

## 🖼️ Screenshots

### 📌 Portfolio Page Hosted via Nginx

![Portfolio Screenshot](./images/portfolio.png)

### 🔁 Auto-Restart Script Output

![Auto Restart](./images/nginx-restart.png)

### 🧹 Log Cleanup Script Execution

![Log Cleanup](./images/log-cleanup.png)

### 🕒 Cron Job Entries

![Cron Job](./images/cron-setup.png)

---

## 📝 Sample Cron Jobs

```bash
# Check and restart Nginx every minute
* * * * * /home/ec2-user/nginx-monitor.sh >> /home/ec2-user/nginx-monitor.log 2>&1

# Delete old logs daily at 1 AM
0 1 * * * /home/ec2-user/delete-old-logs.sh >> /home/ec2-user/log-cleanup.log 2>&1
📌 How to Use
Launch an EC2 instance and install Nginx.

Upload your index.html to /usr/share/nginx/html/.

Upload both scripts to your instance and make them executable:

bash
Copy
Edit
chmod +x nginx-monitor.sh delete-old-logs.sh
Set up cron jobs using crontab -e.

💡 Future Improvements
Add SSL using Let's Encrypt

Set up monitoring alerts (email, push)

Use systemd for more robust service monitoring

📬 Contact
Irfan
LinkedIn: linkedin.com/in/your-profile
Email: your.email@example.com

pgsql
Copy
Edit

---

### ✅ What to Do Now

1. Create a folder called `images/` in your GitHub repo.
2. Upload all your screenshots to that folder.
3. Replace the `portfolio.png`, `nginx-restart.png`, etc., with your actual file names.

Let me know if you want help writing the commit message or Git instructions to push this to GitHub!
