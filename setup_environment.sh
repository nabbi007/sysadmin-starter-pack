#!/usr/bin/env bash
# ===============================================
# Script Name : setup_environment.sh
# Purpose     : SysAdmin Starter Pack Assignment
# Author      : Iliasu Abubakar
# Platform    : Amazon Linux 2
# ===============================================

set -e

BASE_DIR="$HOME/devops_challenge"
DIRS=("logs" "configs" "scripts")

echo "==============================================="
echo "Starting SysAdmin Environment Setup..."
echo "Target Directory: $BASE_DIR"
echo "==============================================="

# Ensure base directory exists
if [ ! -d "$BASE_DIR" ]; then
    mkdir -p "$BASE_DIR"
    echo "Created base directory: devops_challenge"
else
    echo "Base directory already exists"
fi

cd "$BASE_DIR" || exit 1

echo
echo "---- Creating Directories ----"

# Create directories with safe checks
for dir in "${DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "[SKIP] $dir already exists"
    else
        mkdir "$dir"
        echo "[OK] Created directory: $dir"
    fi
done

# File paths
LOG_FILE="logs/system.log"
CONF_FILE="configs/app.conf"
BACKUP_FILE="scripts/backup.sh"

echo
echo "---- Creating Files ----"

# Create logs/system.log
if [ -f "$LOG_FILE" ]; then
    echo "[SKIP] $LOG_FILE already exists"
else
    echo "System initialized successfully" > "$LOG_FILE"
    echo "[OK] Created $LOG_FILE"
fi

# Create configs/app.conf
if [ -f "$CONF_FILE" ]; then
    echo "[SKIP] $CONF_FILE already exists"
else
    cat <<EOF > "$CONF_FILE"
# Application Configuration
app_name=devops_app
env=production
EOF
    echo "[OK] Created $CONF_FILE"
fi

# Create scripts/backup.sh
if [ -f "$BACKUP_FILE" ]; then
    echo "[SKIP] $BACKUP_FILE already exists"
else
    cat <<EOF > "$BACKUP_FILE"
#!/usr/bin/env bash
# Backup script (demo)
echo "Backup completed."
EOF
    echo "[OK] Created $BACKUP_FILE"
fi

echo
echo "---- Setting Permissions ----"

chmod 644 "$LOG_FILE"
chmod 444 "$CONF_FILE"
chmod 755 "$BACKUP_FILE"

echo "[OK] Permissions applied"

echo
echo "---- Verifying Output ----"

# Install tree if missing (Amazon Linux 2 friendly)
if ! command -v tree >/dev/null 2>&1; then
    echo "Installing 'tree' command..."
    sudo yum install tree -y
fi

echo
echo "Directory Structure:"
tree .

echo
echo "File Permissions:"
ls -lR .

echo
echo "==============================================="
echo "Setup completed successfully ✅"
echo "==============================================="
