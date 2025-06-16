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

- index.html – Portfolio website (hosted using Nginx)
- nginx-monitor.sh – Script to restart Nginx if it is down
- delete-old-logs.sh – Script to delete logs older than 7 days
- crontab-setup.txt – Sample cron entries for automation
- README.md – Project documentation

---

## 🖼️ Screenshots

### 📌 Portfolio Page Hosted via Nginx

![hosted](https://github.com/user-attachments/assets/f22c95f7-e790-4e3a-965b-2fc02b096060)

### 🔁 Auto-Restart Script Output

![new script](https://github.com/user-attachments/assets/06513dfd-e89f-4ff2-ab03-79466e34c402)

![script run sucsses](https://github.com/user-attachments/assets/ad8f5453-044e-4c9f-886d-72e0b469215d)

### 🧹 Log Cleanup Script Execution

![NEW OLD LOG DLETE SH](https://github.com/user-attachments/assets/0bcc362f-1fbd-4993-a99e-b89e9300a9f3)

![cat housekee log](https://github.com/user-attachments/assets/928ef34d-11ed-49a7-9b36-4c9ca2e5ae99)


### 🕒 Cron Job Entries

![cron final -l](https://github.com/user-attachments/assets/27596278-c254-4578-85c8-f322e078f2e1)

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


chmod +x nginx-monitor.sh delete-old-logs.sh
Set up cron jobs using crontab -e.

Set up monitoring alerts (email, push)

Use systemd for more robust service monitoring

📬 Contact
Irfan
LinkedIn: https://www.linkedin.com/in/irfan-khan04
Email: er.irfankhan4@gmail.com

