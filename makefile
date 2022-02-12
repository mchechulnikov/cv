.DEFAULT_GOAL = help

help:	# prints this help
	@ echo Available targets are:
	@ grep -h -E "^[^\#].+:\s+\#\s+.+$$" ./makefile

pdf:	# to PDF
	@ echo "Making PDF"
	@ docker run --rm \
       -v $(pwd):/data \
       -u $(id -u):$(id -g) \
       pandoc/latex en.cv.md -o en.cv.pdf