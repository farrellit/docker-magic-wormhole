# docker-magic-wormhole

a relatively small wormhole container because it takes a long time to install.

this repo is principally interesting as an example of a multi-build docker image that can exclude build time dependencies 
from runtime.  This can get messy as the python libraries increase in size.  But for simple things (aws lambda functions, small code bases with few dependencies), something like this can usually suffice.  

