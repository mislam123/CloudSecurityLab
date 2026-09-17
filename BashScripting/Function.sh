system_info() {
    echo "===== System Information ====="
    hostname
    uptime
    whoami
}

echo " Important function variables "

| Variable | Meaning                         |
| -------- | ------------------------------- |
| `$1`     | First argument                  |
| `$2`     | Second argument                 |
| `$3`     | Third argument                  |
| `$#`     | Number of arguments             |
| `$@`     | All arguments                   |
| `$?`     | Exit status of previous command |





echo "veribles uses like these .. below example"
show_args() {
    echo "Number of arguments: $#"
    echo "First: $1"
    echo "Second: $2"
}