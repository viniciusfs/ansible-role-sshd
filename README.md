# Ansible role: SSHD

[![Build Status](https://travis-ci.org/viniciusfs/ansible-role-sshd.svg?branch=master)](https://travis-ci.org/viniciusfs/ansible-role-sshd)

Installs and configures OpenSSH server in CentOS/RHEL systems.


## Role Variables

See `defaults/main.yml` file.


## Example Playbook

    - hosts: servers
      roles:
        - { role: viniciusfs.sshd }


## License

MIT


## Author Information

* Vinícius Figueiredo <viniciusfs@gmail.com>
