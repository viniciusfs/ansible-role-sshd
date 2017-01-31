import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    '.molecule/ansible_inventory').get_hosts('all')


def test_ssh_packages(Package):
    for name in ['openssh', 'openssh-server', 'openssh-clients']:
        package = Package(name)

        assert package.is_installed


def test_sshd_config(File):
    sshd_config = File('/etc/ssh/sshd_config')

    assert sshd_config.exists
    assert sshd_config.user == 'root'
    assert sshd_config.group == 'root'
    assert sshd_config.mode == 0400


def test_sshd_service(Service):
    sshd = Service('sshd')

    assert sshd.is_running
    assert sshd.is_enabled
