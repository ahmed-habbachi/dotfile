# Dotfiles

## Installing your dotfiles onto a new system

### Preset

First make sure to add the alias to your .bashrc or .zsh file

```shell
	alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

then we make sure to ignore the .cfg folder (it contains our git config)

```shell
	echo ".cfg" >> .gitignore
```

restart your terminal or source your your .bashrc or .zsh

### Cloning dotfiles

now we can safly clone our repository to our $HOME folder

```shell
	git clone --bare <this-git-repo-url> $HOME/.cfg
```

then we checkout the content

```shell
	config checkout
```

this step might fail with a message like:

```shell
error: The following untracked working tree files would be overwritten by checkout: .bashrc .gitignore
Please move or remove them before you can switch branches.
Aborting
```

backup the files or remove them then checkout again with the same comand

Set the flag showUntrackedFiles to no on this specific (local) repository:

```shell
	config config --local status.showUntrackedFiles no
```

You're done, from now on you can now type config commands to add and update your dotfiles:

```shell
	config status
	config add .vimrc
	config commit -m "Add vimrc"
	config add .bashrc
	config commit -m "Add bashrc"
	config push
```

## Starting from scratch

If you haven't been tracking your configurations in a Git repository before, you can start using this technique easily with these lines:

```shell
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

The first line creates a folder ~/.cfg which is a Git bare repository that will track our files.
Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository.
We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type config status and other commands later, files you are not interested in tracking will not show up as untracked.
Also you can add the alias definition by hand to your .bashrc or use the the fourth line provided for convenience.
