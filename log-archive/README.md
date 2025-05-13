# Log Archive Tool
A bash script to archive log files. 

What it does:
1. Creates a directory at "$HOME/log-archive", if not created already
2. Compresses the supplied log files in a tar.gz file
3. Saves the file in the log-archive directory

## How to run the script
1. **Clone the repository**
    ```
    git clone https://github.com/actuallyarnav/devops-projects.git
    cd log-archive
    ```

2. **Make the script executable**
    ```
    chmod u+x log-archive.sh
    ```
3. **Execute the script**  
    ```
    ./log-archive.sh {directory}
    ```
This project is part of [roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps projects.
