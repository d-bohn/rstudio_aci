BOOTSTRAP: docker
FROM: rocker/verse:latest

%labels
MAINTAINER Daniel Albohn <d.albohn@gmail.com>
Version v0.1

%environment
PASSWORD=acitest
URL=localhost
PORT=8787
ROOT=true
www-address=127.0.0.1
export PASSWORD URL PORT ROOT www-address

%post
#ACI mappings so you can access your files.
mkdir -p /storage/home
mkdir -p /storage/work
mkdir -p /gpfs/group
# mkdir -p /gpfs/scratch
