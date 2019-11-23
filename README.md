# todo.sh

Get sh*t done now, organize later!

## How to use this repo
1. Clone the repo `$ git clone git@github.com:matthewfollegot/todo.sh.git` and cd into the project `$ cd todo.sh/`
1. Ensure you have Bash > `4.0` installed, see [here](#UpgradeBash) for more details
1. Have fun with the todo list by running `./add.sh <item-to-add>` to add an item, `./remove.sh <item-to-remove>` to remove an item, `./todo.sh` to print the contents of the todo list and `./clear.sh` to clear the todo list

### <a id="UpgradeBash"></a>Upgrading Bash ###
1. Open up a terminal and check your current version of Bash `$ bash --version` or `$ echo ${BASH_VERSION}`. If it's > `4.0`, you don't need to proceed with installing a newer version of Bash
1. `brew install bash`
1. To verify the installation, `$ which -a bash` should give: 
    ```
        /usr/local/bin/bash
        bin/bash
    ``` 
    where `/usr/local/bin/bash` is the new version that's been installed
1. You can verify this with `$ /usr/local/bin/bash --version` which should be > `5.0` and `$ /bin/bash --version` which should be `3.2.57` from 2007 :joy:
1. Whitelist (add the new version of bash to the list of trusted shells) with `$ sudo vim /etc/shells` and add `/usr/local/bin/bash` to the the file
1. Set the default shell to use the newer version of Bash `$ chsh -s /usr/local/bin/bash`
1. Restart the shell and `echo ${BASH_VERSION}` should now give `5.0.0(1)-release` or greater

### a todo list for `todo.sh`

- [x] minimal todo list API implementation (add, delete, print)
- [x] persistence upon shell termination
- [ ] Makefile for rapid testing
- [ ] item toggles on todo list
- [ ] reminders based on duration of task
