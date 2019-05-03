# rstudio_aci
Code and workflow for building [rocker/verse](https://www.rocker-project.org/)
in Docker Hub and modifying it with Singularity Hub for use with PSU
ACI HPC clusters.

## Quick Start
`ssh` into PSU ACI HPC

From ACI, executing the following code should create an `RStudio` image
running on at address 127.0.0.1:8787.

```
singularity pull shub://d-bohn/rstudio_aci
```
