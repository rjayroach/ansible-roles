# Ansible Roles

Custom Ansible roles primarily intended to be included in a project derived from [prepd-project]
(https://github.com/rjayroach/prepd-project/) to provide a set of infrastructure blueprints.

## Using

Add these roles as a submodule in the 'roles' directory of an existing repo:

```bash
git submodule add git@github.com:rjayroach/ansible-roles roles
```

Updating the submodule to the latest code on master:

```bash
git submodule update --remote --merge
```

## Updating Code

Code changed in the submodule can be [committed and pushed]
(https://chrisjean.com/git-submodules-adding-using-removing-and-updating) like any other repo.
