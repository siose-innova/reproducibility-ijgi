
# DOCKER
DOCKER              = docker
DOCKER_RUN          = $(DOCKER) run
DOCKER_RUN_OPTIONS  = --rm

DOCKER_STOP         = $(DOCKER) stop
DOCKER_RM           = $(DOCKER) rm

# Instead 1000:1000
#DOCKER_RUN_USER     = --user $$(id -u):$$(id -g)
DOCKER_VOLUME       = -v $$(pwd):/home/workdir

# IMAGES
PLANTUML_IMAGE      = benizar/plantuml:19.04

# CALLS
PLANTUML = $(DOCKER_RUN) $(DOCKER_RUN_OPTIONS) -i $(DOCKER_VOLUME) $(PLANTUML_IMAGE)
