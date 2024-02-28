# Other computers

## Set up Mac Mini

- install OS
  - user `encukou`
  - hostname `mac-mini.lan`
  - enable VNC & SSH (under System Settings, Sharing)
  - `ssh-copy-id` to the machine
  - Install CLI tools: run `python3` for a GUI prompt, which might appear
    BEHIND the terminal window (!)
  - Use bash: `chsh -s /bin/bash`
  - Set up homebrew:

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    The command will print out "Next steps" to add Homebrew to PATH; do that.

## Set up Raspberry Pi

- Install OS
  - user `encukou`
  - hostname `rpi5.lan`
  - enable SSH & VNC (menu > Preferences > Raspberry Pi Configuration > Interfaces)
  - `ssh-copy-id` to the machine


## Run Ansible

The rest of setup is machine-readable, but it's still mostly
“notes for future me”.
You'll need to adjust things.

```
ansible-playbook -i inventory.ini playbook.yml
```
