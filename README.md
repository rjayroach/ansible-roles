## Ansible Roles

Custom Ansible roles intended to be included in other repo as a git submodule

Reference: [https://chrisjean.com/git-submodules-adding-using-removing-and-updating]

## Using

- Add these roles as a subdirectory 'roles' in another existing repo:

```bash
git submodule add git@github.com:rjayroach/ansible-roles roles
```

- Updating the submodule to the latest code on master:

```bash
git submodule update --remote --merge
```

## Updating Code

Code from the submodule can be updated like any other repo and committed
