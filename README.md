# Bertha

## Cross Platform environment for Haxe Development

[direnv](direnv.net) based Haxe setup using [Neko](https://nekovm.org/).

[vscode plugin](https://github.com/direnv/direnv-vscode)

# How to use

## Direnv installation

### Linux & MacOs  
[see](https://direnv.net/docs/installation.html)
  
### Windows  
install via [scoop](https://github.com/ScoopInstaller/Install#installation)
```
 scoop bucket add main
 scoop install main/direnv
```

Below invocation should make available the following binaries. (righthand links contain [0install](0install.net) manifests)

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

# Arm
  Not supported but I *think* there's nothing here that isn't available for ARM (5 or 7 couldn't tell at this distance)

# Linux 
  Ubuntu at the moment.
  
# Windows 

  Under Development
  
  [Git Bash](https://gitforwindows.org/) should be installed.
  

# Mac
  
  Any takers? 
  
Please report any Issues, I'm working on it.
