# Teleprompt -- Colorful prompt line for fish, bash, and zsh

# What is it?

Insert explanation here

# Features and Pictures

The prompt displays a bunch of fancy stuff in a status bar above the prompt. The status bar is mildly inspired by [vim-lightline](https://github.com/itchyny/lightline.vim). I find this pleasant because it clearly delineates one command from the next, making it easier to spot previous commands while scrolling through history. Most of the status modules are conditional based on the current machine or directory. None of them use any outside dependencies. I have tried to implement this with clarity, extensibility, and speed in mind. The prompt should always be fast--even when working over slow links and network shares, when each file access is costly. Functionality is intentionally kept simple (e.g. git status indicates only current branch and a loose interpretation of dirty status) so that the above goals can be met.
- Error return code<br>
  ![error code](images/error-code.png)
- Directory<br>
  ![directory](images/directory.png)
- Username (only displays within SSH)<br>
  ![username and hostname](images/username-hostname.png)
- Hostname (only displays within SSH)<br>
  ![username and hostname](images/username-hostname.png)
- Git repository and clean/dirty status<br>
  ![git](images/git.png)
- Ruby rbenv<br>
  ![rbenv](images/rbenv.png)
- Python virtualenv<br>
  ![virtualenv](images/virtualenv.png)
- Node project (not nvm -- pull request?)<br>
  ![node](images/node.png)
- Clojure project (leiningen or boot project)<br>
  ![clojure](images/clojure.png)
- Vagrant project<br>
  ![vagrant](images/vagrant.png)
- Background jobs<br>
  ![jobs](images/jobs.png)
- Tmux sessions<br>
  ![tmux](images/tmux.png)
- Date and time<br>
  ![directory](images/directory.png)

# Fish Install

## Using [Fisherman](https://fisherman.github.io/):

`fisher mnewt/teleprompt`

## Using [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish):

`omf install mnewt/teleprompt`

## Eschewing frameworks

TBD

# Bash Install

TBD

# Customization

TBD

# Benchmarks

External commands and especially disk accesses have been minimized to provide good performance. Benchmarks will vary wildly across different machines, environments, and directories. Here are examples taken from my machine from my dotfiles directory.

    > benchmark-prompt

     fish

    real	0m43.238s
    user	0m20.676s
    sys	0m13.999s

     bash

    real	0m54.019s
    user	0m20.819s
    sys	0m21.674s

     zsh

    real	0m50.815s
    user	0m18.460s
    sys	0m21.213s

# Compatibility

- Fish shell 2.2+
- Bash 3+
- Zsh

# Contributing

All contributions and feedback are welcomed

# License

[MIT](http://opensource.org/licenses/MIT)
