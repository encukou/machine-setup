# Machine setup

Manual steps:

- Clone this repo:

      $ mkdir dev && cd dev && git clone https://github.com/encukou/machine-setup

- Run ansible:

      $ sudo echo
      $ ansible-playbook-3 ~/dev/machine-setup/playbook.yml

- Clone all my Git repos

      $ cd dev/machine-setup/clone-all-github/
      $ python3 -v venv __venv__
      $ . __venv__/bin/activate
      (venv)$ python clone-all.py 

- Generate SSH key (interactive):

      $ ssh-keygen

- Register SSH keys:

    - https://admin.fedoraproject.org/accounts
    - https://github.com/

- Migrate KeepassX file
- Migrate banking cert
- Migrate Gnome settings (WIP)
- Migrate Firefox settings (TBD)

- Run Fedora packager setup:

      $ fedora-packager-setup

- Do company setup

- Set up `devpi`:

      python3 -m venv ~/dev/devpi/__venv__
      devpi --init
