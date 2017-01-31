# {{ ansible_managed }}

Port {{ sshd_config_port }}
#AddressFamily any
ListenAddress {{ sshd_config_listen_address }}

Protocol {{ sshd_config_protocol }}

#HostKey for protocol version 1
#HostKey /etc/ssh/ssh_host_key
#HostKeys for protocol version 2
#HostKey /etc/ssh/ssh_host_rsa_key
#HostKey /etc/ssh/ssh_host_dsa_key

#KeyRegenerationInterval 1h
#ServerKeyBits 1024

SyslogFacility {{ sshd_config_syslog_facility }}
LogLevel {{ sshd_config_log_level }}

LoginGraceTime {{ sshd_config_login_grace_time }}
PermitRootLogin {{ sshd_config_permit_root_login }}
StrictModes {{ sshd_config_strict_mode }}
MaxAuthTries {{ sshd_config_max_auth_tries }}
#MaxSessions 10

#RSAAuthentication yes
PubKeyAuthentication {{ sshd_config_pubkey_authentication }}
#AuthorizedKeysFile	.ssh/authorized_keys
#AuthorizedKeysCommand none
#AuthorizedKeysCommandRunAs nobody

RhostsRSAAuthentication {{ sshd_config_rsa_authentication }}
HostbasedAuthentication {{ sshd_config_host_based_authentication }}
#IgnoreUserKnownHosts no
IgnoreRhosts {{ sshd_config_ignore_rhosts }}

PasswordAuthentication {{ sshd_config_password_authentication }}
PermitEmptyPasswords {{ sshd_config_permit_empty_passwords }}

ChallengeResponseAuthentication no

#KerberosAuthentication no
#KerberosOrLocalPasswd yes
#KerberosTicketCleanup yes
#KerberosGetAFSToken no
#KerberosUseKuserok yes

#GSSAPIAuthentication no
GSSAPIAuthentication yes
#GSSAPICleanupCredentials yes
GSSAPICleanupCredentials yes
#GSSAPIStrictAcceptorCheck yes
#GSSAPIKeyExchange no

UsePAM {{ sshd_config_use_pam }}

AcceptEnv LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
AcceptEnv LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
AcceptEnv LC_IDENTIFICATION LC_ALL LANGUAGE
AcceptEnv XMODIFIERS

#AllowAgentForwarding yes
AllowTcpForwarding {{ sshd_config_allow_tcp_forwarding }}
#GatewayPorts no
X11Forwarding {{ sshd_config_x11_forwarding }}
#X11DisplayOffset 10
#X11UseLocalhost yes
#PrintMotd yes
#PrintLastLog yes
TCPKeepAlive {{ sshd_config_tcp_keep_alive }}
#UseLogin no
UsePrivilegeSeparation {{ sshd_config_privilege_separation }}
#PermitUserEnvironment no
#Compression delayed
ClientAliveInterval {{ sshd_config_client_alive_interval }}
ClientAliveCountMax {{ sshd_config_client_alive_count_max }}
#ShowPatchLevel no
UseDNS {{ sshd_config_use_dns }}
#PidFile /var/run/sshd.pid
MaxStartups {{ sshd_config_max_startups }}
#PermitTunnel no
#ChrootDirectory none

Banner {{ sshd_config_banner }}

AuthorizedKeysCommand /usr/bin/sss_ssh_authorizedkeys
AuthorizedKeysCommandUser nobody

Subsystem	sftp	/usr/libexec/openssh/sftp-server

