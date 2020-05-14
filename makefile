

# Copy the boilerplate
this-boilerplate-bs:
	# this is needed for bootstrapping this repo manually and then checking it in.
	# whenever our boilerplate change we have to do this.

	# grab from core-rt
	cp -r ./../core-runtime/boilerplate $(PWD)/boilerplatet


# includes
BOILERPLATE_FSPATH=./boilerplate

include $(BOILERPLATE_FSPATH)/core/help.mk
include $(BOILERPLATE_FSPATH)/core/gitr.mk
include $(BOILERPLATE_FSPATH)/core/go.mk

GO_FSPATH=$(PWD)
GO_BUILD_OUT_FSPATH=$(GOPATH)/bin/bs-fish


# Prints what is used
this-print:
	$(MAKE) gitr-print
	$(MAKE) go-print



this-build:
	$(MAKE) go-build 
	which $(GO_BUILD_OUT_FSPATH)

# Runs to see if there are any tags to react to
this-bin-run:
	$(GO_BUILD_OUT_FSPATH) -h

	# check for tag or be given specific tag from the configure repo.
	
	# reach into the repo and get binary name and sha, etc

	# code gen the fish
