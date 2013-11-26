# this makefile was automatically generated; do not edit 

TIMEOUT ?= 10

DP ?= why-dp -timeout $(TIMEOUT)
WHYEXEC ?= why
GWHYEXEC ?= gwhy-bin
WHYLIB ?= /usr/local/lib/why

USERWHYDEUXOPT=
WHY=WHYLIB=$(WHYLIB) $(WHYEXEC) $(WHYOPT) $(USERWHYDEUXOPT) -explain -locs wholeprogram.loc

GWHY=WHYLIB=$(WHYLIB) $(GWHYEXEC) $(WHYOPT) $(USERWHYDEUXOPT) -explain -locs wholeprogram.loc

JESSIELIBFILES ?= $(WHYLIB)/why/jessie.why
JESSIE3CONF ?= $(WHYLIB)/why3/why3.conf

COQDEP = coqdep

.PHONY: all coq pvs simplify vampire cvcl harvey smtlib zenon

all: simplify/wholeprogram_why.sx

project: why/wholeprogram.wpr

why/%.wpr:  WHYOPT=--project -dir why
why/%.wpr: why/%.why
	@echo 'why --project [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

goals: why/wholeprogram_ctx.why

why/%_ctx.why: WHYOPT=--multi-why -dir why
why/%_ctx.why: why/%.why
	@echo 'why --multi-why [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

coq: coq/wholeprogram_why.vo

coq/wholeprogram_why.v: WHYOPT=-coq -dir coq -coq-preamble "Require Export jessie_why." -coq-tactic "intuition"
coq/wholeprogram_why.v: why/wholeprogram.why
	@echo 'why -coq [...] why/wholeprogram.why' && $(WHY) $(JESSIELIBFILES) why/wholeprogram.why && rm -f coq/jessie_why.v

coq-goals: goals coq/wholeprogram_ctx_why.vo
	for f in why/*_po*.why; do make -f wholeprogram.makefile coq/`basename $$f .why`_why.v ; done

coq/wholeprogram_ctx_why.v: WHYOPT=-no-pervasives -coq -dir coq -coq-preamble "Require Export jessie_why." -coq-tactic "intuition"
coq/wholeprogram_ctx_why.v: why/wholeprogram_ctx.why
	@echo 'why -coq [...] why/wholeprogram_ctx.why' && $(WHY) why/wholeprogram_ctx.why

coq/%_why.v: WHYOPT=-no-pervasives -coq -dir coq -coq-preamble "Require Export wholeprogram_ctx_why." -coq-tactic "intuition"
coq/%_why.v: why/%.why
	@echo 'why -coq [...] why/$*.why' && $(WHY) why/wholeprogram_ctx.why why/$*.why

coq/%.vo: coq/%.v
	coqc -I coq $<
coq/%_po_why.vo: coq/wholeprogram_ctx_why.vo

pvs: pvs/wholeprogram_why.pvs

pvs/%_why.pvs: WHYOPT=-pvs -dir pvs -pvs-preamble "IMPORTING why@jessie"
pvs/%_why.pvs: why/%.why
	$(WHY) $(JESSIELIBFILES) why/$*.why

pvs/jessie_why.pvs:WHYOPT=-pvs -dir pvs -pvs-preamble "IMPORTING why@why"
pvs/jessie_why.pvs:
	$(WHY) $(JESSIELIBFILES)

isabelle: isabelle/wholeprogram_why.thy

isabelle/%_why.thy: WHYOPT=-isabelle -dir isabelle -isabelle-base-theory jessie_why
isabelle/%_why.thy: why/%.why
	$(WHY) $(JESSIELIBFILES) why/$*.why
	cp -f /usr/local/lib/why/isabelle/jessie_why.thy isabelle/

simplify: simplify/wholeprogram_why.sx
	@echo 'Running Simplify on proof obligations' && ($(DP) $^)

simplify/%_why.sx: WHYOPT=-simplify -dir simplify
simplify/%_why.sx: why/%.why
	@echo 'why -simplify [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

vampire: vampire/wholeprogram_why.vp
	@echo 'Running Vampire on proof obligations' && ($(DP) $^)

vampire/%_why.vp: WHYOPT=-vampire -dir vampire
vampire/%_why.vp: why/%.why
	@echo 'why -vampire [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

alt-ergo ergo: why/wholeprogram_why.why
	@echo 'Running Alt-Ergo on proof obligations' && ($(DP) $^)

why/%_why.why: WHYOPT=-alt-ergo -dir why
why/%_why.why: why/%.why
	@echo 'why -alt-ergo [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

gappa: gappa/wholeprogram_why.gappa
	@echo 'Running Gappa on proof obligations' && ($(DP) $^)

gappa/%_why.gappa: WHYOPT=-gappa -dir gappa
gappa/%_why.gappa: why/%.why
	@echo 'why -gappa [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

cvcl: cvcl/wholeprogram_why.cvc

	@echo 'Running CVC Lite on proof obligations' && ($(DP) $^)

cvcl/%_why.cvc: WHYOPT=-cvcl -dir cvcl
cvcl/%_why.cvc: why/%.why
	@echo 'why -cvcl [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

harvey: harvey/wholeprogram_why.rv
	@echo 'Running haRVey on proof obligations' && ($(DP) $^)

harvey/%_why.rv: WHYOPT=-harvey -dir harvey
harvey/%_why.rv: why/%.why
	@echo 'why -harvey [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

zenon: zenon/wholeprogram_why.znn
	@echo 'Running Zenon on proof obligations' && ($(DP) $^)

zenon/%_why.znn: WHYOPT=-zenon -dir zenon
zenon/%_why.znn: why/%.why
	@echo 'why -zenon [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

smtlib: smtlib/wholeprogram_why.smt
	@echo 'Running Z3 on proof obligations' && ($(DP) $^)

smtlib/%_why.smt:  WHYOPT=-smtlib --encoding sstrat --exp goal -dir smtlib
smtlib/%_why.smt: why/%.why
	@echo 'why -smtlib [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

z3: smtlib/wholeprogram_why.smt
	@echo 'Running Z3 on proof obligations' && ($(DP) -smt-solver z3 $^)

yices: smtlib/wholeprogram_why.smt
	@echo 'Running Yices on proof obligations' && ($(DP) -smt-solver yices $^)

cvc3: smtlib/wholeprogram_why.smt
	@echo 'Running CVC3 on proof obligations' && ($(DP) -smt-solver cvc3 $^)

smtlib-v1: smtlib-v1/wholeprogram_why.smt
smtlib-v1/%_why.smt:  WHYOPT=-smtlib --smtlib-v1 --encoding sstrat --exp goal -dir smtlib-v1
smtlib-v1/%_why.smt: why/%.why
	@echo 'why -smtlib [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why

verit: smtlib-v1/wholeprogram_why.smt
	@echo 'Running VeriT on proof obligations' && ($(DP) -smt-solver verit $^)

gui stat: wholeprogram.stat

%.stat: why/%.why
	@echo 'gwhy-bin [...] why/$*.why' && $(GWHY) $(JESSIELIBFILES) why/$*.why

why3: why/wholeprogram_why3.why
why/%_why3.why:  WHYOPT=-why3
why/%_why3.why: why/%.why
	@echo 'why -why3 [...] why/$*.why' && $(WHY) $(JESSIELIBFILES) why/$*.why
why3ml: wholeprogram.mlw
	 why3 --extra-config $(JESSIE3CONF) $<

why3ide: wholeprogram.mlw
	 why3ide --extra-config $(JESSIE3CONF) $<

why3replay: wholeprogram.mlw
	 why3replayer --extra-config $(JESSIE3CONF) $<

-include wholeprogram.depend

depend: coq/wholeprogram_why.v
	-$(COQDEP) -I coq coq/wholeprogram*_why.v > wholeprogram.depend

clean:
	rm -f coq/*.vo

