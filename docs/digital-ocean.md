# How to Digital Ocean

I chose Digital Ocean for `superwifi.club` because it was miles ahead Amazon EC2 in terms of usability and documentation.

## Prerequisites

* Register a domain at somewhere like [Gandi](https://gandi.net)
* Sign up to [Digital Ocean](https://digitalocean.com)

## Create your droplet

Digital Ocean has their own excellent guide: [How To Create Your First Digital Ocean Droplet Virtual Server](https://www.digitalocean.com/community/tutorials/how-to-create-your-first-digitalocean-droplet-virtual-server) but thought I'd jot down a few notes anyway:

* Your `Droplet Hostname` should be the domain that you registered, for example `superwifi.club`
* I choose the cheapest `$5/mo` plan that I can always scale up in the future
* I choose the linux distribution `Debian 7.0 x64`

## Set up your hostname

Again, Digital Ocean has their own excellent guide: [How To Set Up a Host Name with DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-host-name-with-digitalocean) but for brevity:

* At your registrar, point your nameservers to Digital Ocean:
```
ns1.digitalocean.com
ns2.digitalocean.com
ns3.digitalocean.com
```
* On your droplet's control panel, click `DNS` and then `Add Domain`
* Enter your domain name eg. `superwifi.club`
* Select your droplet's name on the dropdown eg. `superwifi.club` and this will populate the IP address field
* Create an `A record`:
  * Set `Enter Name` to `@`
  * Set `Enter IP Address` to your droplet's IP address

## Wait for changes to propagate

Check with:

    dig superwifi.club +nostats +nocomments +nocmd
