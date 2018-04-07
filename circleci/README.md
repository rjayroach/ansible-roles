## Circleci Webhook

The steps to add a new repository for CircleCI to monitor are:

### Grant CircleCI Access to the Orgnaization

https://github.com/settings/applications

Click circlci and either request or grant access to the organization


### Create a token for your CircleCI account

API tokens must be created via the [Circle CI web UI](https://circleci.com/account/api)


### 'Follow' the project

To bootstrap a new repo in CircleCI, you’ll need to use a CircleCI token for a user that has Github 'admin' permissions for that repo.

Calling 'follow' kicks off an initial build

see [documentation](https://circleci.com/docs/api/v1-reference/#follow-project)


### Add slack notifications

Login to the slack workgroup and install the CircleCI app:

https://team_name.slack.com/apps/A0F7VRE7N-circleci
