#!/usr/bin/env 

library(miniCRAN)
library(yaml)

config = yaml.load_file("config.yml")

CRAN_mirror <- c(CRAN = config$cran_url)
local_repo <- config$local_path

args = commandArgs(trailingOnly=TRUE)
args

addPackage(args, path=local_repo, repos=CRAN_mirror, type=c("source"))

#install.packages(tspackages, repos = "file://", ), lib = lib, type = "win.binary", dependencies = TRUE)
  