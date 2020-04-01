class profile::ssh_server {
  package { 'openssh-server':
    ensure => 'present',
  }

  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }

  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => root,
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCYY1523RWGohQAWixMa5naRWLJQgbr+8F0n9fo/4rW20tjLc6g3/d7/1rxLEL6jX5CBkpYE2fPFRF0qoZYiosCxXmkouTrCCAoHQEbvI0XF+qSMSafp0oLZUjJeqPG6jJsr06PnvfA+K1u2Tr6JjPzirGaEpgmD+1ey2MFCkXscSMiTFMkKMbQ32FZJ7TdTtEI5xj3Jrzkhgi03uPhKpo0L0joiyPuo0tAxMuy/qgvERGWZsUm+UObnxbHm/lSMzGcfDKlgv+7PEvELzF2CTNAG4dK4aZ/EXSCfmKe+GhWQX0FNx69eSaPaPRwZIsp3ZsD0Nl+42sncF2ufQrjjAhZ',
  }
}
