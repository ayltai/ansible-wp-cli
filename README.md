# wp-cli role for Ansible

[![GitHub workflow status](https://img.shields.io/github/workflow/status/ayltai/ansible-wp-cli/CI?style=flat)](https://github.com/ayltai/ansible-wp-cli/actions)
[![Ansible quality score](https://img.shields.io/badge/quality-5-success)](https://galaxy.ansible.com/ayltai/wp_cli)
[![Ansible role](https://img.shields.io/badge/role-ayltai.wp_cli-blue)](https://galaxy.ansible.com/ayltai/wp_cli)
![Maintenance](https://img.shields.io/maintenance/yes/2021?style=flat)
[![Release](https://img.shields.io/github/release/ayltai/ansible-wp-cli.svg?style=flat)](https://github.com/ayltai/ansible-wp-cli/releases)
[![License](https://img.shields.io/github/license/ayltai/ansible-wp-cli.svg?style=flat)](https://github.com/ayltai/ansible-wp-cli/blob/master/LICENSE)

Install or update [wp-cli](https://wp-cli.org/) on RHEL- and Debian-based systems

[![Buy me a coffee](https://img.shields.io/static/v1?label=Buy%20me%20a&message=coffee&color=important&style=flat&logo=buy-me-a-coffee&logoColor=white)](https://buymeacoff.ee/ayltai)

## Quick start

### Installation
```sh
ansible-galaxy install ayltai.wp-cli
```

### Dependency
This role requires [PHP](https://www.php.net/).

### Usage
```yaml
---
- hosts: all
  roles:
    - ayltai.wp-cli
```

## Variables

| Name          | Default       | Description |
|---------------|---------------|-------------|
| `wp_cli_path` | `/usr/bin/wp` | The path where wp-cli should be installed to. |
| `wp_cli_url`  | `https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar` | The URL where wp-cli should be downloaded from. |

## Development
This project uses [Docker](https://www.docker.com) to create an unified environment for development.

### Install Docker
Download and install Docker from [here](https://docs.docker.com/get-docker).

### Start the development environment in a Docker container
```sh
./dev.sh
```

Now you have a shell running on a system with all the necessary tools installed.

### Install dependencies
In the Docker container, run:
```sh
python3 -m pip install -r requirements.txt
ansible-galaxy install -r requirements.yml
```

### Unit testing
In the Docker container, run:
```sh
molecule test
```

## License
[MIT](https://github.com/ayltai/ansible-instrumentald/blob/master/LICENSE)

## References
* [wp-cli](https://wp-cli.org/)
* [Ansible](https://www.ansible.com)
* [Ansible Galaxy](https://galaxy.ansible.com)
