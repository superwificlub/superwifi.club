# Creating users

## Create your first user `rey`

As you'll want your own user account, let's create that. You should choose another username unless your name is `rey`:

    sudo adduser rey

As this is me, I'm going to add myself to the `sudo` group so I don't have to keep switching to the `root` account:

    sudo adduser rey sudo

## Create your second user `bill`

    sudo adduser bill

As this is a regular user, they don't need access to `sudo`.

## Delete your second user `bill`

    sudo userdel -r bill

This will delete `bill`, his home directory and his mail spool
