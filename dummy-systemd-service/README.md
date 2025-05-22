# Dummy Systemd Service
A dummy systemd service that logs to a file every 10 seconds. 

What it does:
1. Starts at system boot
2. Writes to a log file in /var/log/dummy-service.log every 10 seconds

## How to install the service
1. **Clone the repository**
    ```
    git clone https://github.com/actuallyarnav/devops-projects.git
    cd dummy-systemd-service
    ```

2. **Run the install script**
    ```
    chmod u+x install.sh
    sudo ./install.sh
    ```
3. **Check the output**
    ```
    cat /var/log/dummy-service.log
    ```
## How to uninstall the service

1. **Run the uninstall script**
    ```
    chmod u+x uninstall.sh
    sudo ./uninstall.sh
    ```

This project is part of [roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps projects.
