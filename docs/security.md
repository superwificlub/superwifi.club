# Security

## Remove the ability to login as `root` via `ssh`.

If you don't have an SSH key [here's how to generate one](https://help.github.com/articles/generating-ssh-keys/).

### Create `.ssh` and `.ssh/authorized_keys`

    ssh root@superwifi.club

    # make `.ssh`
    mkdir .ssh
    # drwx------
    chmod 700 .ssh

    # make `.ssh/authorized_keys`
    touch .ssh/authorized_keys
    # -rw-r--r--
    chmod 644 .ssh/authorized_keys

### Add your public key to `superwifi.club`

On your **personal machine** (like your laptop):

    cd ~ && echo `pwd`
    cat .ssh/id_rsa.pub | ssh root@superwifi.club 'cat >> .ssh/authorized_keys'

**It's important** that you test you can ssh into `superwifi.club` as `root` without having to enter a password:

    ssh root@superwifi.club

### Disable password login for user `root`

    sudo vim /etc/ssh/sshd_config

Search for `PermitRootLogin` and change `yes` to `without-password`

Restart `ssh`:

    service ssh restart

This is important for the security of your server. I've put together a separate document [`disable-root-login.md`](/docs/disable-root-login.md) that'll walk you through the process.

## Disable `su` command

Unless you're a member of the `root` group. Basically you don't want folk to be able to use the `su` command unless they're the `root` user:

    ssh root@superwifi.club
    vim /etc/pam.d/su

Uncomment out the wheel line of this block:

    # Uncomment this to force users to be a member of group root
    # before they can use `su'. You can also add "group=foo"
    # to the end of this line if you want to use a group other
    # than the default "root" (but this may have side effect of
    # denying "root" user, unless she's a member of "foo" or explicitly
    # permitted earlier by e.g. "sufficient pam_rootok.so").
    # (Replaces the `SU_WHEEL_ONLY' option from login.defs)
    auth       required   pam_wheel.so
