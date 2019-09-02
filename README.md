# Machine setup

Manual steps:

- Clone this repo:

      $ mkdir dev && cd dev && git clone https://github.com/encukou/machine-setup

- Run ansible:

      $ sudo echo
      $ ansible-playbook-3 ~/dev/machine-setup/playbook.yml

- Clone all my Git repos

      - put a GitHub token in token.txt

      $ cd dev/machine-setup/clone-all-github/
      $ python3 -m venv __venv__
      $ . __venv__/bin/activate
      (venv)$ python -m pip install -r requirements.txt
      (venv)$ python clone-all.py 

- Generate & set up keys (interactive):

      $ ssh-keygen

      $ gpg --gen-key
      $ gpg --list-keys
      $ git config --file $HOME/.config/git/config user.signingkey <KEY - e.g. 9E172F37>

- Register SSH keys:

    - https://admin.fedoraproject.org/accounts
    - https://github.com/

- Migrate KeepassX file
- Migrate banking cert
- Apply Gnome settings (adjust to current taste):

      $ ./gnome-settings.sh

- Migrate Firefox settings (TBD)

- Run Fedora packager setup:

      $ fedora-packager-setup

- Do company setup

- Set up `devpi`:

      python3 -m venv ~/dev/devpi/__venv__
      devpi --init
