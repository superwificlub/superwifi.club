# Disable root because security

## Add your public key to superwifi.club

**IMPORTANT** Make sure you do this and test you can ssh into superwifi.club
else you'll find yourself locked out.

As user `root` on superwifi.club:

```
cd ~ && echo `pwd`

# make `.ssh`
mkdir .ssh
# drwx------
chmod 700 .ssh

# make `.ssh/authorized_keys`
touch .ssh/authorized_keys
# -rw-r--r--
chmod 644 .ssh/authorized_keys
```

On your home machine:

```
cd ~ && echo `pwd`
cat .ssh/id_rsa.pub | ssh root@superwifi.club 'cat >> .ssh/authorized_keys'
```

This should be the last time you'll have to `ssh` into `superwifi.club` with a password.

## Disable password login for user `root`

```
sudo vim /etc/ssh/sshd_config
```

Search for `PermitRootLogin` and change `yes` to `without-password`
