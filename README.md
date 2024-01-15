# Machine setup

Manual steps:

- Install Fedora

- Install ansible:

      $ sudo dnf install ansible

- Clone this repo:

      $ mkdir dev && cd dev && git clone https://github.com/encukou/machine-setup

- Run ansible:

      $ ansible-playbook -K ~/dev/machine-setup/playbook.yml

- Migrate KeepassX file
- get a GitHub token, put it in ~/dev/machine-setup/clone-all-github/token.txt

- Clone all my Git repos

      $ cd ~/dev/machine-setup/clone-all-github/
      $ python3 -m venv __venv__
      $ . __venv__/bin/activate
      (venv)$ python -m pip install -r requirements.txt
      (venv)$ python clone-all.py 

- Generate & set up keys (interactive):

      $ ssh-keygen

      $ gpg --gen-key
      $ gpg --list-keys
      $ mkdir $HOME/.config/git/
      $ git config --file $HOME/.config/git/config user.signingkey <KEY - e.g. 9E172F37>

- Register SSH keys:

    - https://admin.fedoraproject.org/accounts
    - https://github.com/

- Apply Gnome settings (adjust to current taste):

      $ ./gnome-settings.sh

- Migrate Firefox settings (TBD)

- Set up Thunderbird (TBD)

- Set up editor (TBD)

- Set up `devpi`:

      python3 -m venv ~/dev/devpi/__venv__
      cd ~/dev/devpi/server/ && ~/dev/devpi/__venv__/bin/python -m pip install -e.
      ~/dev/devpi/__venv__/bin/devpi-init
      mkdir -p ~/.config/pip/
      echo [global] >> ~/.config/pip/pip.conf
      echo 'index-url = http://127.0.0.1:3141/root/pypi/+simple' >> ~/.config/pip/pip.conf

- Run Fedora packager setup:

      $ fedora-packager-setup

