# Log-Archive
# 📦 Log Archive Automation Script

> A simple Bash script to automatically archive log files into compressed `.tar.gz` files with timestamp and maintain an archive log.

---

## 📌 Project Overview

This project is a shell script that:

- Takes a directory as input
- Compresses all files into a timestamped `.tar.gz` archive
- Stores archives inside `~/log_archives`
- Maintains an archive history log file

This script helps in basic **log management and automation**, which is a common DevOps task.

---

## 🛠️ Technologies Used

- Bash Scripting
- Linux Commands
- tar (compression utility)
- Cron (optional for scheduling)

---

## ⚙️ How It Works

1. Accepts a log directory as an argument.
2. Checks if the directory exists.
3. Creates a timestamp.
4. Compresses logs into a `.tar.gz` file.
5. Saves archive in: