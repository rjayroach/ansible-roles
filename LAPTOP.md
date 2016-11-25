## Prepare Base OS

### MacOS

#### Setup

- Wipe Mac: http://support.apple.com/kb/PH13871  OR http://support.apple.com/en-us/HT201376
- Create New User with Admin rights

#### Install Ansible

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Continue with the next commands once homebrew is installed successfully

```bash
brew install python
pip install ansible
```

### Debian/Ubuntu

#### Install Ansible
```bash
apt-get install ansible
```


## Configure Host via Ansible

```bash
git clone https://github.com/rjayroach/ansible-roles
cd ansible-roles
./laptop.yml -i 'localhost,' -c local
```

## Other Stuff

- Copy ssh keypair to ~/.ssh
- Enable SSH Server on Mac:

Go to System Preferences -> Sharing, enable Remote Login.
