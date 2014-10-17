# Disable root login because security

Remove the ability to login as `root` via `ssh`.

## Add your public key to `superwifi.club`

### Create `.ssh` and `.ssh/authorized_keys`

As user `root` on `superwifi.club`:

    cd ~ && echo `pwd`

    # make `.ssh`
    mkdir .ssh
    # drwx------
    chmod 700 .ssh

    # make `.ssh/authorized_keys`
    touch .ssh/authorized_keys
    # -rw-r--r--
    chmod 644 .ssh/authorized_keys

### Add your public key to `superwifi.club`

On your **home machine**:

    cd ~ && echo `pwd`
    cat .ssh/id_rsa.pub | ssh root@superwifi.club 'cat >> .ssh/authorized_keys'

**IMPORTANT** Test you can ssh into `superwifi.club` as `root` without having to enter a password:

    ssh root@superwifi.club

## Disable password login for user `root`

    sudo vim /etc/ssh/sshd_config

Search for `PermitRootLogin` and change `yes` to `without-password`

Restart `ssh`

    service ssh restart
