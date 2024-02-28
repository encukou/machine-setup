# Other computers

## Set up Mac Mini

- install OS
  - user `encukou`
  - hostname `mac-mini.lan`
  - enable VNC & SSH (under System Settings, Sharing)
  - `ssh-copy-id` to the machine
  - Install CLI tools (run `python3` for a GUI prompt)
  - Use bash: `chsh -s /bin/bash`
  - Set up homebrew:

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    Don't forget "Next steps" to add Homebrew to PATH

## Set up Raspberry Pi

- Install OS
  - user `encukou`
  - hostname `rpi5.lan`
  - enable SSH & VNC (menu > Preferences > Raspberry Pi Configuration > Interfaces)
  - `ssh-copy-id` to the machine


## Run Ansible

```
ansible-playbook -i inventory.ini playbook.yml
```
