BUILD=build


.PHONY: build

build:
	-mkdir ${BUILD}
	cp *.css ${BUILD}
	satysfi all.saty -o ${BUILD}/all.pdf
	satysfi --text-mode "html" all.saty -o ${BUILD}/all.html
	satysfi author.saty -o ${BUILD}/author.pdf
	satysfi --text-mode "html" author.saty -o ${BUILD}/author.html
	satysfi license.saty -o ${BUILD}/license.pdf
	satysfi --text-mode "html" license.saty -o ${BUILD}/license.html
	satysfi --text-mode "html" index.saty -o ${BUILD}/index.html