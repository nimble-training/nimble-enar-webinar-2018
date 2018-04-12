.PHONY: overview bugs_language build_model customizing_mcmc data_constants meta_analysis model_structure nimbleFunctions operating_model reversible_jump run_mcmc survival_analysis user_dist user_sampler

# all: clean example_workshop_overview build_model
all: clean overview bugs_language build_model customizing_mcmc data_constants meta_analysis model_structure nimbleFunctions operating_model reversible_jump run_mcmc survival_analysis user_dist user_sampler

clean:
	rm -rf *.md *.html *.pdf cache/ figure/

%.html: %.Rmd
	./make_slides $(basename $(@))
#	rm -f $(basename $(@)).md

overview: overview.html
bugs_language: bugs_language.html
build_model: build_model.html
customizing_mcmc: customizing_mcmc.html
data_constants: data_constants.html
meta_analysis: meta_analysis.html
model_structure: model_structure.html
nimbleFunctions: nimbleFunctions.html
operating_model: operating_model.html
reversible_jump: reversible_jump.html
run_mcmc: run_mcmc.html
survival_analysis: survival_analysis.html
user_dist: user_dist.html
user_sampler: user_sampler.html



