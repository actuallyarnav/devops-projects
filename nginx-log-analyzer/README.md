# Nginx log analyzer 
A bash script to analyse a nginx log file and display results

What it displays:
1. Top 5 IP addresses with the most requests
2. Top 5 most requested paths
3. Top 5 response status codes
4. Top 5 user agents

## How to run the script
1. **Clone the repository**
    ```
    git clone https://github.com/actuallyarnav/devops-projects.git
    cd nginx-log-analyzer
    ```

2. **Make the script executable**
    ```
    chmod u+x analyze.sh
    ```
3. **Execute the script, and provide the log file as an argument**  
    ```
    ./analyze.sh [log file]
    ```
This project is part of [roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps projects.
