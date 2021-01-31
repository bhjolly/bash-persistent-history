# bash-persistent-history

## Background
This is a hack to get a persistent history of bash commands across all terminal sessions (incl SSH connections into your box) with a few helper commands for subsequent searching

## Helper aliases/functions:
```
   ph  - open your persistent history with 'more'
   gph - 'grep' your persistent history (e.g. 'gph vim' will give you every command containing 'vim')
   tph - 'tail' your persistent history (OPTIONAL: specify number of lines with '-xx' e.g. 'tph -16')
   gpt - run 'gph' but restrict results to the most recent 32 entries
```

## Install (A)
### Run setup.sh
```bash
bash setup.sh
```

## OR Install (B)
### copy this .bash_ph to your home directory: 
```bash
cp bash_ph $HOME/.bash_ph
```

### create a '.history' directory in your home directory:
```bash
mkdir $HOME/.history
```
### add the following to your ~/.bashrc:
```bash
       if [ -f ${HOME}/.bash_ph ]; then
           source ${HOME}/.bash_ph
       fi
```