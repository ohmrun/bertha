# Bertha

[direnv](direnv.net) based Haxe setup using [Neko](https://nekovm.org/).

[vscode plugin](https://github.com/direnv/direnv-vscode)

# How to use

Below invocation should make available three binaries. (righthand links contain [0install](0install.net) manifests)

1) [neko](nekovm.org) from [here](https://github.com/ohmrun/0install_neko)   
2) [babashka](babashka.org) from [here](https://github.com/ohmrun/0install_babashka) and  
3) [rclone](rclone.org)   from [here](https://github.com/ohmrun/0install_rclone)   
4) [cmake](https://cmake.org/) from [here](http://afb.users.sourceforge.net/zero-install/interfaces/cmake.xml)



## Install
```bash
git clone https://github.com/ohmrun/bertha.git
cd bertha && direnv allow # You will be asked to accept the signage of the certificates, see above links
```

## Usage

paste into your `.envrc`

```bash
  dotenv $HOME/.config/bertha.env
  source_env $BERTHA_PATH
```


# Linux 

# Windows 

  [Git Bash](https://gitforwindows.org/) should be installed.

# Mac

Not yet tested on Mac or Windows, but intented to work there so please report issues.
