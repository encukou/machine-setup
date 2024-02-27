# Other computers

## Set up Mac Mini

- install OS
  - user `encukou`
  - hostname `mac-mini.lan`
  - enable VNC & SSH (under System Settings, Sharing)
  - Install CLI tools (run `python3` for a GUI prompt)
  - Use bash: `chsh -s /bin/bash`

## Set up Raspberry Pi

- Install OS
  - user `encukou`
  - hostname `rpi5.lan`
  - enable SSH & VNC (menu > Preferences > Raspberry Pi Configuration > Interfaces)


## Run Ansible

```
ansible-playbook -i inventory.ini playbook.yml
```
