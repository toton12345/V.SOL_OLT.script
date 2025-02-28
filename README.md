# OLT Configuration Automation Script

This repository contains a Bash script to automate the configuration of an VSOL OLT (Optical Line Terminal) via Telnet. The script uses `expect` to handle the interactive Telnet session and applies a predefined set of configuration commands.

---

## **Features**
- Automates the configuration of an OLT via Telnet for BSNL ( Data +Voice )
- Supports multiple configuration commands Like vlan,hostname,port configuration.
- Saves the configuration after applying changes.

---

## **Prerequisites**
- **Bash**: The script is written in Bash and requires a Bash shell to run.
- **Expect**: The script uses `expect` to handle the interactive Telnet session.
- **Telnet**: Ensure Telnet is installed and the OLT is reachable via Telnet.

---

## **Installation**
1.Change the login IP,usernmae,password, management Ip, VLAN id, hostname, port no according to provide your ISP.

2. Clone the repository:
   ```bash
   git clone https://github.com/your-username/olt-config-automation.git
   cd olt-config-automation
   ./file.sh
   run the file.

   Author
RUPAM BAIDYA
GitHub:(https://github.com/toton12345)

Email: rupambaidya2012@gmail.com
