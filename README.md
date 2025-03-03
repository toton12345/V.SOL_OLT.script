# OLT Configuration Automation Script

This repository contains a Bash script to automate the configuration of a VSOL OLT (Optical Line Terminal) via Telnet. The script uses `expect` to handle the interactive Telnet session and applies a predefined set of configuration commands.

---

## **Features**
- Automates the configuration of an OLT via Telnet for BSNL ( Data Voice)
- It supports multiple configuration commands like vlan, hostname, and port configuration.
hostname-aradhya_cable

management Vlan-119
internet Vlan-128-500
voice vlan-1830,1831,1849

management IP-10.210.107.81
subnet musk-255.255.255.0
gatway-10.210.107.1

GE-5(uplink port) all vlan tag to uplink port

pon-1 only internet vlan and voice vlan tag to the downlink port
pon-2 only internet vlan and voice vlan tag to the downlink port
pon-3 only internet vlan and voice vlan tag to the downlink port
pon-4 only internet vlan and voice vlan tag to the downlink port

- Saves the configuration after applying changes.

---

## **Prerequisites**
- **Bash**: The script is written in Bash and requires running a Bash shell.
- **Expect**: The script uses `expect` to handle the interactive Telnet session.
- **Telnet**: Ensure Telnet is installed and the OLT is reachable via Telnet.

---

## **Installation**
1. Change the login IP, username, password, management IP, VLAN ID, hostname, interface according to your ISP.
2. then RUN

Author
RUPAM BAIDYA
GitHub:(https://github.com/toton12345)

Email: rupambaidya2012@gmail.com
