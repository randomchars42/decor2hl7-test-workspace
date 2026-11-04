.DEFAULT_GOAL := check
DECOR2HL7 ?= decor2hl7

.PHONY: check rebuild

check:
	$(DECOR2HL7) check-cda-mapping

rebuild:
	$(DECOR2HL7) build
	$(DECOR2HL7) init-cda-mapping
	$(DECOR2HL7) check-cda-mapping
