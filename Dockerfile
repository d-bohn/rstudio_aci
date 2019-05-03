FROM rocker/verse:latest

LABEL maintainer="Daniel Albohn <d.albohn@gmail.com>"

RUN export ADD=shiny &amp;&amp; bash /etc/cont-init.d/add
