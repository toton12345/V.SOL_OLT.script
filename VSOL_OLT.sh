#!/bin/bash

# Define the OLT credentials and IP address
OLT_IP="192.168.8.100"  # Replace with the IP address of the OLT
USERNAME="admin"       # Replace with the OLT username
PASSWORD="Xpon@Olt9417#"    # Replace with the OLT password

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
    send "vlan 128 - 500\r"
    send "vlan 1830 - 1831\r"
    send "vlan 1845\r"
    send "exit\r"
    send "interface vlan 119\r"
    send "ip address 10.210.107.81 255.255.255.0\r"
    send "exit\r"
    send "ip route 0.0.0.0 0.0.0.0 10.210.107.1\r"
    send "interface gigabitethernet 0/5\r"
    send "switchport mode hybrid\r"
    send "switchport hybrid vlan 119 tagged\r"
    send "switchport hybrid vlan 128 - 500 tagged\r"
    send "switchport hybrid vlan 1830 - 1831 tagged\r"
    send "switchport hybrid vlan 1849 tagged\r"
    send "exit\r"
    send "interface range epon 0/1-4\r"
    send "switchport mode hybrid\r"
    send "switchport hybrid vlan 125 - 500 tagged\r"
    send "switchport hybrid vlan 1830 - 1831 tagged\r"
    send "switchport hybrid vlan 1849 tagged\r"
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
