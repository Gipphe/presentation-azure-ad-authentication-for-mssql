build: Slides.pptx

Slides.pdf: Slides.md
	docker run --rm -e MARP_USER="$$(id -u):$$(id -g)" -v $$PWD:/home/marp/app/ marpteam/marp-cli Slides.md --pdf --allow-local-files

Slides.pptx: Slides.md
	docker run --rm -e MARP_USER="$$(id -u):$$(id -g)" -v $$PWD:/home/marp/app/ marpteam/marp-cli Slides.md --pptx --allow-local-files
