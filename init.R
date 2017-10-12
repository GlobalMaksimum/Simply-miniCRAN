#!/usr/bin/env 

library(miniCRAN)
library(yaml)
library(ctv)

config = yaml.load_file("config.yml")

config$views
config$packages

pkgs_needed = c()
N =  length(config$views)

for(i in 1:N) {
  x <- read.ctv(system.file("ctv", paste(config$views[i],'.ctv',sep='') , package = "ctv"))
  pkgs_needed = c(pkgs_needed, x$packagelist$name)
}

pkgs_needed = c(pkgs_needed, config$packages)


#pkgs_needed


CRAN_mirror <- c(CRAN = config$cran_url)
local_repo <- config$local_path

pkgs_expanded <- pkgDep(pkgs_needed, repos = CRAN_mirror)
pkgs_expanded

makeRepo(pkgs_expanded, path = local_repo, repos = CRAN_mirror, type = "source")