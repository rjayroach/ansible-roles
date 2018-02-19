# AWS Credentials

Credentials can belong to either the developer or the project itself and are encrypted with either the developer's ansible vault password or the project's ansible vault password

AWS CSV formatted credentails can be dropped into either the developer's project directory or the project's directory itself. Any CSV files will be automatically converted into YAML, encrypted and written to ~/.aws/credentials

## Developer Credentials

Developer's AWS credentials are placed in the ~/prepd/config/developer/projects/<project_name>/vault/credentials/aws directory

To process developer credentials for all of the machine's projects:

```bash
cd ~/prepd/app/ansible
./aws.yml 
```

## Project Credentials

Project's AWS credentials are placed in the ~/prepd/config/projects/<project_name>/vault/credentials/aws directory

```bash
cd ~/projects/<project_name>/<prepd_project_name>/app/ansible
./aws.yml 
```



## Format of the YAML credentials file

```bash
terraform.yml
terraform:
  aws_access_key_id: ABC
  aws_secret_access_key: XYZ

ansible.yml
ansible:
  aws_access_key_id: LMN
  aws_secret_access_key: OPQ
```

Will result in the following contents being writte to ~/.aws/credentials

```bash
# BEGIN project_name-credential_name
[project-name-terraform]
aws_access_key_id = XYZ
aws_secret_access_key = ABC

# END project_name-credential_name
# BEGIN project_name-credential_name
[project-name-ansible]
aws_access_key_id = LMNO
aws_secret_access_key = PDQ

# END project_name-credential_name
```
