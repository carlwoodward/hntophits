
# Set the working application directory
working_directory "/var/www/hntophits"

# Unicorn PID file location
pid "/var/www/hntophits/pids/unicorn.pid"

# Path to logs
stderr_path "/var/www/hntophits/log/unicorn.log"
stdout_path "/var/www/hntophits/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.hntophits.sock"

# Number of processes
worker_processes 2

# Time-out
timeout 30
