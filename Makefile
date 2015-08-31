GEM=$(shell which gem)
VENDOR_DIR=vendor
POD=$(VENDOR_DIR)/bin/pod
POD_VERSION=0.38.2

init:
	@test -f $(VENDOR_DIR)/bin/pod || $(GEM) install --install-dir $(VENDOR_DIR) cocoapods -v $(POD_VERSION)

install:init
	env GEM_HOME=$(VENDOR_DIR) $(POD) install

clean:
	rm -rf $(VENDOR_DIR)
