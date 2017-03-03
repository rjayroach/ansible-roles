# Prepare Base OS

## MacOS

### Setup

- Wipe Mac: http://support.apple.com/kb/PH13871  OR http://support.apple.com/en-us/HT201376
- Create New User with Admin rights

### Install Homebrew

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install Ansible

```bash
brew install python
pip install ansible
```

## Debian/Ubuntu

### Install Ansible
```bash
apt-get install ansible
```


# Configure Host via Ansible

```bash
git clone https://github.com/rjayroach/ansible-roles
cd ansible-roles
./laptop.yml -i 'localhost,' -c local
```

# Other Stuff

## General
- Copy ssh keypair to ~/.ssh

## MacOS

### Enable SSH Server

Go to System Preferences -> Sharing, enable Remote Login.

### iTerm2 Preferences
- General: Window Section: Uncheck 'Native full screen windows'
- Appearance: Tab bar location: Bottom;  Theme: Dark
- Profiles: Colors => Load Presets to pick Solarized Dark
