#!/bin/bash

# Define the OLT credentials and IP address
OLT_IP="10.31.70.251"  # Replace with the IP address of the OLT
USERNAME="admin"       # Replace with the OLT username
PASSWORD="admin1234"    # Replace with the OLT password

# Define the configuration commands

# Function to send commands via Telnet
configure_olt_telnet() {
    echo "Connecting to OLT at $OLT_IP via Telnet..."

    # Start the Telnet session
    expect <<EOF
    set timeout 20
    spawn telnet $OLT_IP
    expect "Login:"
    send "$USERNAME\r"
    expect "Password:"
    send "$PASSWORD\r"
    expect ">"
    send "enable\r"
    expect "Password:"
    send "$PASSWORD\r"
    send "configure terminal\r"
    expect "epon-olt(config)#"
    send "hostname aradhya_cable\r"
    expect "aradhya_cable(config)#"
    send "vlan 119\r"
    send "exit\r"
    send "vlan 110\r"
    send "exit\r"

    # Save the configuration
    send "write memory\r"
    expect "#"
    send "exit\r"
    expect eof
EOF

    echo "Configuration completed and saved successfully!"
}

# Run the script
configure_olt_telnet