.PHONY: rebuild

rebuild:
	rm -rf model mapping site; \
	decor2hl7 build; \
	decor2hl7 init-cda-mapping;
