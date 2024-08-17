#!/bin/bash# Set terminal colorecho -e "\033[0;32m"# Green textecho"==================================="echo"Made by Khairul Istiyak"echo"==================================="# Define paths
HOSTS_FILE="/etc/hosts"
BACKUP_FILE="${HOSTS_FILE}.bak"# Block Facebook and YouTubeblock_sites() {
    echo"==================================="echo"Made by Khairul Istiyak"echo"==================================="# Backup the original hosts fileif [ ! -f "$BACKUP_FILE" ]; thencp"$HOSTS_FILE""$BACKUP_FILE"fi# Block Facebook and YouTube
    grep -v "127.0.0.1 www.facebook.com""$HOSTS_FILE" | \
    grep -v "127.0.0.1 facebook.com" | \
    grep -v "127.0.0.1 www.youtube.com" | \
    grep -v "127.0.0.1 youtube.com" > "$HOSTS_FILE"echo"127.0.0.1 www.facebook.com" >> "$HOSTS_FILE"echo"127.0.0.1 facebook.com" >> "$HOSTS_FILE"echo"127.0.0.1 www.youtube.com" >> "$HOSTS_FILE"echo"127.0.0.1 youtube.com" >> "$HOSTS_FILE"echo"Facebook and YouTube have been blocked successfully."
}

# Unblock Facebook and YouTubeunblock_sites() {
    echo"==================================="echo"Made by Khairul Istiyak"echo"==================================="# Restore the original hosts file from backupif [ -f "$BACKUP_FILE" ]; thencp"$BACKUP_FILE""$HOSTS_FILE"rm"$BACKUP_FILE"echo"Facebook and YouTube have been unblocked successfully."elseecho"Backup file not found. Cannot unblock sites."fi
}

# Display menu and handle choiceswhiletrue; doecho"==================================="echo"Made by Khairul Istiyak"echo"==================================="echo"1. Block Facebook and YouTube"echo"2. Unblock Facebook and YouTube"echo"3. Exit"echo"==================================="read -p "Choose an option (1, 2, or 3): " choice

    case$choicein
        1) block_sites ;;
        2) unblock_sites ;;
        3) exit ;;
        *) echo"Invalid choice. Please choose 1, 2, or 3." ;;
    esacecho"Press any key to continue . . ."read -n 1
done
