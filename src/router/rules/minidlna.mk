minidlna-configure:
	cd minidlna && make clean
	cd minidlna && make distclean
	cd minidlna && make

minidlna:
	cd minidlna && make

minidlna-clean:
	cd minidlna && make clean

minidlna-install:
	cd minidlna && make install TARGETDIR=$(TOP)/$(ARCH)-uclibc/install/minidlna
	install -D minidlna/config/minidlna.webnas $(INSTALLDIR)/minidlna/etc/config/minidlna.webnas
	install -D minidlna/config/minidlna.nvramconfig $(INSTALLDIR)/minidlna/etc/config/minidlna.nvramconfig
