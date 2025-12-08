# Sysadmin Starter Pack

A collection of basic scripts and configuration files to help system administrators get started quickly with system setup, backups, and logging.

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

## License

This project is licensed under the MIT License.
