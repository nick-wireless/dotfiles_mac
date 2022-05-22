echo "Hello from .zshenv"

function exists() {
  command -v $1 >/dev/null 2>&1 
  
  # more explicitely written
  # command -v $1 >/dev/null 2>/dev/null
}