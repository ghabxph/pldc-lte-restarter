# PLDC LTE Modem Restarter

This little tool restarts your PLDC LTE modem. That's all.
No need to manually log-in to your LTE modem and click
several buttons to get you to restart button. Just call
`restarter.sh` and it shall do the job of restarting your
router.

This tool must work on this kind of modem.
![pldc.jpg](pldc.jpg)

So obviously, this won't work on other model.

## How to use (linux users)
Things never get simpler for linux users (that's why I
love linux). All you need to do is:
```
#1. Clone this repo
git clone https://github.com/ghabxph/pldc-lte-restarter.git

#2. CD to the repo
cd pldc-lte-restarter

#3. Edit your restarter.sh using vim / nano
vi restarter.sh

#4. Copy your restarter to /usr/local/bin/pldc-lte-restart
cp restarter.sh /usr/local/bin/pldc-lte-restart

#5. Set file permission
chmod 755 /usr/local/bin/pldc-lte-restart
```

After doing the above steps, just call `pldc-lte-restart`
and your PLDT LTE Router will magically restart.

Feel free to remove pldc-lte-restart folder after the
setup, as you no longer need them
```
cd ..
rm -fvr pldc-lte-restart
```

## How to use (non-linux)
The script is a bash script, so your machine must have
**bash***. You also need to have **curl*** installed.

First, edit **restarter.sh** and modify the password.
Put your router password, and then run `restarter.sh`

Once you have that, simply run `restarter.sh`. Figure
out yourself how to bind this restarter on your machine.


## Contribute guide
To make this project more friendly to non-technical people
please submit pull request to this repo. I will review
your changes, and will merge it to this repo if I find
your PR useful.

I am no longer going to make changes to this repo, as I
intentionally created this script for myself. Help others
by sending PR here.

What's the goal for contributors? Make this tool easier
to use, for windows users. I already forgot things about
windows, so I need your help to make this a cross-platform
tool.

### How I make commit:
I use commitizen to properly format my git commits, but
since this project is not really big, I am not going to
be very sensitive on git commit format. Just create your
own branch, and do PR to the master branch. It's just
simple as that.
