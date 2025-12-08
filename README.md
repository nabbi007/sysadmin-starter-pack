# Sysadmin Starter Pack

This project contains a Bash script that automates basic system administration tasks.  
The script creates directories, generates files, sets correct permissions, and displays the directory structure in a clean and professional way.

It was built as a practical DevOps/SysAdmin assignment.

## Features

- Automatically create common directories and files
- Set appropriate file and directory permissions
- Output the directory structure in a readable "tree" format

## Example Output

After running the script, you can expect a directory structure similar to:

```
project-root/
├── bin/
│   └── script.sh
├── logs/
│   └── sysadmin.log
├── tmp/
└── README.md
```

## How to Run

1. Clone the repository:
    ```bash
    git clone https://github.com/nabbi007/sysadmin-starter-pack.git
    cd sysadmin-starter-pack
    ```

2. Make the script executable:
    ```bash
    chmod +x bin/script.sh
    ```

3. Run the script:
    ```bash
    ./bin/script.sh
    ```

4. View the output tree:
    ```bash
    tree .
    ```

## License

This project is licensed under the MIT License.

---

*Made by nabbi007 as a DevOps/SysAdmin practical assignment.*
