# Sysadmin Starter Pack

This project contains a Bash script that automates basic system administration tasks.  
The script creates directories, generates files, sets correct permissions, and displays the directory structure in a clean and professional way.

It was built as a practical DevOps/SysAdmin assignment.
## Directory Structure

```
.
├── configs
│   └── app.conf
├── logs
│   └── system.log
├── scripts
│   └── backup.sh
├── setup_environment.sh
```

### Contents

- **configs/app.conf**  
  Main application configuration file.

- **logs/system.log**  
  System log file for capturing script outputs and diagnostics.

- **scripts/backup.sh**  
  Script to perform regular system or application backups.

- **setup_environment.sh**  
  Shell script to set up the initial environment, install dependencies, and configure the system.

## Usage

1. Clone this repository to your local machine:
    ```sh
    git clone https://github.com/nabbi007/sysadmin-starter-pack.git
    cd sysadmin-starter-pack
    ```

2. To set up your environment, run:
    ```sh
    ./setup_environment.sh
    ```

3. To run backups, execute:
    ```sh
    ./scripts/backup.sh
    ```

## Expected Output Example

```
.
├── configs
│ └── app.conf
├── logs
│ └── system.log
└── scripts
 └── backup.sh
Permissions Overview:
-rw-r--r-- 1 user user 22 Oct 27 21:15 logs/system.log
-r--r--r-- 1 user user 24 Oct 27 21:15 configs/app.conf
-rwxr-xr-x 1 user user 48 Oct 27 21:15 scripts/backup.sh
```

## License

This project is licensed under the MIT License.
