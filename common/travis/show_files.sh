#! /bin/sh
#
# build.sh

for pkg in $(cat /tmp/templates); do
	for subpkg in $(xsubpkg $pkg); do
		/bin/echo -e "\x1b[32mFiles of $subpkg:\x1b[0m"
		./xbps-src show-files "$pkg"
	done
done

