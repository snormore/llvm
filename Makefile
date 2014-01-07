UNAME=$(shell uname)
ifeq ($(UNAME), Darwin)
SOSUFFIX=dylib
INSTALL_LLVM="brew install llvm"
REMOVE_LLVM="brew remove llvm"
endif
ifeq ($(UNAME), Linux)
INSTALL_LLVM="apt-get install llvm-3.2"
REMOVE_LLVM="apt-get remove llvm-3.2"
endif

install:
	bash -c ${INSTALL_LLVM}

