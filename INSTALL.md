# How to `superwifi.club`

## Preamble

* You should be comfortable with Unix and using the command line
* You should have a machine running a fresh install of `Debian 7.0 x64` (this guide has been written using a [Digital Ocean](https://digitalocean.com) cloud (:cloud:) server)
* The domain `superwifi.club` has been used but could be substituted for `roflcat.club` if that's the name of your domain

## Use `install.sh` to set up your server

:boom: Be sure you read [`install.sh`](scripts/install.sh) and understand what it's doing to your machine.

    ssh root@superwifi.club
    wget https://raw.githubusercontent.com/superwificlub/superwifi.club/master/scripts/install.sh
    sh install

### A note about `postfix`

When the script installs `postfix` a blue screen will appear and will ask you for 2 things:

1. The 1st dialogue will ask you to choose a `General type of mail configuration`. Choose `Local only`
2. The 2nd dialogue will ask you to enter a `System mail name`. Enter the name of your domain eg: `superwifi.club`

## Create your first user `rey`

You should choose another username unless your name is `rey`:

    sudo adduser rey

As this is me, I'm going to add myself to the `sudo` group:

    sudo adduser rey sudo

## Disable root login

This is important because it increases the security of your machine. There's a separate document [`disable-root-login.md`](/docs/disable-root-login.md) that'll walk you through the process.

## Add another user

    sudo adduser bill
