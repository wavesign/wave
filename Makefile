TOPTARGETS := build symbolic

build:
	$(MAKE) -C Wave822/
	$(MAKE) -C Wave1249/
	$(MAKE) -C Wave1644/

symbolic:
	ln -s Wave822/PQCgenKAT_sign PQCgenKAT_sign_wave822
	ln -s Wave1249/PQCgenKAT_sign PQCgenKAT_sign_wave1249
	ln -s Wave1644/PQCgenKAT_sign PQCgenKAT_sign_wave1644

clean:
	$(MAKE) -C Wave822/ clean
	$(MAKE) -C Wave1249/ clean
	$(MAKE) -C Wave1644/ clean
	rm PQCgenKAT_sign_wave822
	rm PQCgenKAT_sign_wave1249
	rm PQCgenKAT_sign_wave1644

.PHONY: $(TOPTARGETS)