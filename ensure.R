# ensure(x) - installs and loads the package x if necessary.
ensure <- function(x){
    x <- as.character(x)
    if(!require(package=x, character.only=TRUE)){
        install.packages(pkgs=x, repos="http://cran.r-project.org")
        require(x, character.only=TRUE)
    }
}