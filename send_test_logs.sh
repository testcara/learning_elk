python3 << 'EOF'
import socket
try:
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(("127.0.0.1", 5043))
  payload=b'{"user_id":9999, "level":"INFO","msg":"connect and test"}\n'
  s.sendall(payload)
  print("--send ok--")
  s.close()
except Exception as e:
  print(f"error: {e}")
EOF
