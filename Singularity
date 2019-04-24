BOOTSTRAP: docker
FROM: rocker/verse:latest

%labels
MAINTAINER Daniel Albohn <d.albohn@gmail.com>

%environment
PASSWORD=acitest
URL=localhost
PORT=8787
ROOT=true
www-address=127.0.0.1

%post
#ACI mappings so you can access your files.
mkdir -p /storage/home
mkdir -p /storage/work
mkdir -p /gpfs/group
# mkdir -p /gpfs/scratch
