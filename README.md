# rstudio_aci
Code and workflow for building [rocker/verse](https://www.rocker-project.org/)
in Docker Hub and modifying it with Singularity Hub for use with PSU
ACI HPC clusters.

## Quick Start
`ssh` into the PSU ACI HPC with X11 flags.

```
ssh USERID@aci-b.aci.ics.psu.edu -X -Y
```

Start an interactive session using `qsub`.

```
qsub -A open -I -X -l walltime=24:00:00 -l nodes=2:ppn=20 -l pmem=10gb
```

From ACI, start `screen` and then execute the following code to
create an `RStudio` image running at address `127.0.0.1:8787`.

```
screen

singularity pull -n rstudio_aci.simg shub://d-bohn/rstudio_aci

singularity exec -n rstudio_aci.simg --www-address=127.0.0.1
```

Next, press `CTRL+A+D` to detach the screen while allowing the process to continue running in the background.

Finally, start your preferred browser and navigate to `127.0.0.1`. For
example, firefox:

```
singularity pull shub://jpetucci-firefox_icsaci

singularity exec jpetucci-firefox_icsaci-master-latest.simg /opt/firefox/./firefox
```

## Notes

1). A `shiny` server should also start when executing this image,
the server should be running on port `3838`
