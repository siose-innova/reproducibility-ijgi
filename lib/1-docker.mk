
# CONTAINTERS
RSTUDIO_CONTAINTER_NAME  = rgeospatial
RSTUDIO_CONTAINTER       = --name $(RSTUDIO_CONTAINTER_NAME)

# IMAGES
RSTUDIO_IMAGE       = benizar/rstudio:atm-db-manager
PLANTUML_IMAGE       = benizar/plantuml:18.04

# DOCKER
DOCKER              = docker
DOCKER_RUN          = $(DOCKER) run
DOCKER_RUN_OPTIONS  = --rm
DOCKER_RUN_WORKDIR  = --workdir /source

DOCKER_STOP         = $(DOCKER) stop
DOCKER_RM           = $(DOCKER) rm

# Instead 1000:1000
DOCKER_RUN_USER     = --user $$(id -u):$$(id -g)
DOCKER_VOLUME       = -v $$(pwd):/home/rstudio




## Run rstudio on http://localhost:8787
run-rstudio:
	@$(DOCKER_RUN) $(DOCKER_RUN_OPTIONS) -d -p 8787:8787 -e PASSWORD=rgeospatial $(RSTUDIO_CONTAINTER) $(DOCKER_VOLUME) $(RSTUDIO_IMAGE)

## rm rstudio
rm-rstudio:
	@$(DOCKER_STOP) $(RSTUDIO_CONTAINTER_NAME)
#	$(DOCKER_RM) $(RSTUDIO_CONTAINTER_NAME)


