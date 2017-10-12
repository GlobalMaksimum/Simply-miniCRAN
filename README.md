*build_local_mran* project is a mini-project based on miniCRAN to build offline CRAN repositories for offline R deployments.

## Configuration
`config.yml` file includes 3 elements

* `cran_url`: Repository URL (Microsof R repositories)

* `local_path`: Local CRAN directory

* `packages`: Packages to be downloaded

* `views`: List of R Task Views to install a set of packages for domain specific requirements.


## Create & Update a Local Repository

### Initializing a CRAN repository

Start by calling `init.R` to initialize a CRAN repository in `local_path` defined in `config.yml`

```terminal
Rscript --vanilla init.R
```

### To add new modules in to existing CRAN

To add more modules use `add.R`

```terminal
Rscript --vanilla add.R rpart
```


## References

[miniCRAN-introduction](https://cran.r-project.org/web/packages/miniCRAN/vignettes/miniCRAN-introduction.html)

[Task Views](https://cran.r-project.org/web/views/)