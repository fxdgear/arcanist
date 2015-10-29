# arcanist
Dockerized version of arcanist


## How to use
### local setup
1. Create alias: `alias arc="docker run --rm -it -v `pwd`:/data/ -v $HOME/.arc:/arcanist fxdgear/arcanist"`
2. create .arc directory: `mkdir $HOME/.arc`
3. create arcrc file: `echo {} > $HOME/.arc/arcrc`

## Run
From what ever directory you're in you can now run `arc` and it will behave as if it's locally installed

Default command is `help` so running `arc` will just give you the help. 
