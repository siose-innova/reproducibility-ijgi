
#########
# SETUP #
#########

# Store all PlantUML files here
pu_dir  := $(src_dir)/img/pu

# Create required folders
#out_dir    := dist
pu_svg_dir := $(out_dir)/img/svg
pu_png_dir := $(out_dir)/img/png

dirs += $(pu_svg_dir) $(pu_png_dir)

# Source and target files
pu_src  := $(wildcard $(pu_dir)/*.pu)
pu_svg  := $(patsubst $(pu_dir)/%.pu, $(pu_svg_dir)/%.svg, $(pu_src))
pu_png  := $(patsubst $(pu_dir)/%.pu, $(pu_png_dir)/%.png, $(pu_src))

pu_all += $(pu_svg) $(pu_png)

#########
# RULES #
#########

## Build all diagrams
plantuml: $(pu_svg) $(pu_png)

# Pattern rules
$(pu_svg_dir)/%.svg: $(pu_dir)/%.pu | checkdirs
	cat $< | $(PLANTUML) > $@

$(pu_png_dir)/%.png: $(pu_dir)/%.pu | checkdirs
	cat $< | $(PLANTUML) -tpng > $@

#########
# CLEAN #
#########
mostly_clean    += $(pu_all)
distclean       += $(pu_all)
clean           += $(pu_all)
mantainer_clean += $(pu_all)

