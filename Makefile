all:

deb: clean
	mkdir -p build/usr/bin/
	cp -r DEBIAN/ build/
	cp src/seeder build/usr/bin/
	find build/ -name '.*.swp' -delete
	fakeroot dpkg -b build/ seeder.deb

clean:
	rm -rf build seeder.deb
