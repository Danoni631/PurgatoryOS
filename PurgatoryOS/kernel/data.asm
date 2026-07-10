prompt          db "PurgatoryOS# ", 0
msg_welcome     db "=== PurgatoryOS Server Edition v1.0 ===", 0x0d, 0x0a, "Type 'help' for commands.", 0x0d, 0x0a, 0
msg_unknown     db "Unknown command. Try 'help'.", 0x0d, 0x0a, 0
msg_help_text   db "Available commands:", 0x0d, 0x0a, "  help   - Show this text", 0x0d, 0x0a, "  status - Check server vitals", 0x0d, 0x0a, "  reboot - Restart server", 0x0d, 0x0a, 0
msg_status_text db "Server Vitals: ONLINE | Uptime: Stable | CPU: Real Mode 16-bit", 0x0d, 0x0a, 0
msg_serial_log  db "[LOG] Status checked via local console.", 0x0d, 0x0a, 0

cmd_help        db "help", 0
cmd_status      db "status", 0
cmd_reboot      db "reboot", 0
cmd_shutdown    db "shutdown", 0

cmd_buffer      times 64 db 0