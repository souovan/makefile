# Simple makefile example

A simple makefile example for building container images and do some arbitrary 
commands that can be used as a base to build a more robust makefile to help 
automate the bootstrap of projects / applications

## Use

Normal use

```bash
# just type
make
# or to see all available make targets
make help
```

Changing variables

```bash
make <target> VARIABLE=value
# example make run IMAGE=souovan/other-container-name TAG=some-tag
```
