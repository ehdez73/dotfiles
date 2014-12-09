#/bin/bash
if test ! $(which icdiff)
then
	curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.3.1/icdiff \
	| sudo tee /usr/local/bin/icdiff > /dev/null \
	&& sudo chmod ugo+rx /usr/local/bin/icdiff
fi
