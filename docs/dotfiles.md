# dotfiles

I've created a bunch of dotfiles that can be [found here](../dotfiles). I didn't put them in the [`install.sh`](../scripts/install.sh) script because they're somewhat opinionated, and you, the sysadmin, will have you own preferences.

That said, I think they're quite light and a good set of defaults.

## Install dotfiles to `/etc/skel`

We'll be installing these to `/etc/skel` as they'll become the default dotfiles each new user is created with:

:boom: Be sure you read [`dotfiles.sh`](../scripts/dotfiles.sh) and understand what it's doing to your machine.

    ssh root@superwifi.club
    wget https://raw.githubusercontent.com/superwificlub/superwifi.club/master/scripts/dotfiles.sh
    sh dotfiles.sh
