```bash
#!/bin/bash

echo "======================================"
echo "      Listening Ports Scanner"
echo "======================================"
echo

# Check if ss is installed
if ! command -v ss >/dev/null 2>&1; then
    echo "Error: 'ss' command is not installed."
    exit 1
fi

echo "Listening TCP/UDP ports:"
echo "--------------------------------------"

sudo ss -tulnp

echo
echo "======================================"
echo "TCP Listening Ports Only"
echo "======================================"

sudo ss -ltnp

echo
echo "======================================"
echo "UDP Listening Ports Only"
echo "======================================"

sudo ss -lunp

echo
echo "Scan completed."
```
