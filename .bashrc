obsidian() {
  docker exec -e DISPLAY=:99 obsidian \
    /opt/obsidian/obsidian --no-sandbox "$@" 2>&1 \
    | grep -v "ERROR:dbus/bus.cc"
}
