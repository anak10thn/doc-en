INSTALL_LOG = install.log
VERSION = 1.0.8
.PHONY : build

all:
	@echo "Create README.md"
	cat `pwd`/src/* > README.md
	sed -i.txt 's|<end>||g' README.md
	sed -i.txt 's|(../img|(img|g' README.md
	rm README.md.txt
	sed 's|(img|(https://github.com/ignsdk/doc-id/raw/master/img|g' README.md > README-single.md
