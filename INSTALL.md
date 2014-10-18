# How to `superwifi.club`

## Disclaimer

Things will probably break.

Make backups, read scripts and have fun.

## Preamble

* You should be comfortable with Unix and using the command line
* You should have a machine running a fresh install of `Debian 7.0 x64` (this guide has been written using a [Digital Ocean](https://digitalocean.com) cloud (:cloud:) server)
* The domain `superwifi.club` has been used but substitute for `roflcat.club` or whatever your domain name is

## Use `install.sh` to set up your server

:boom: Be sure you read [`install.sh`](scripts/install.sh) and understand what it's doing to your machine.

    ssh root@superwifi.club
    wget https://raw.githubusercontent.com/superwificlub/superwifi.club/master/scripts/install.sh
    sh install.sh

### A note about `postfix`

When the script installs `postfix` a blue screen will appear and will ask you for 2 things:

1. The 1st dialogue will ask you to choose a `General type of mail configuration`. Choose `Local only`
2. The 2nd dialogue will ask you to enter a `System mail name`. Enter the name of your domain eg: `superwifi.club`

## Test

Visit [superwifi.club](http://superwifi.club) and you should get a page saying `It works!`.

## What's next?

You should now have a basic installation running of everything you need! There still a bit more to do...

Here's a bunch of docs I've put together about what's next:

1. [Security](docs/security.md)
2. Install [dotfiles](docs/dotfiles.md)
3. [Create new users](docs/creating-users.md)
