all: build

build: clean
	latexmk

push: clean
	git add .
	@read -p "Enter git comment: " comment;\
	git commit -m "$$comment"
	git push origin master

clean:
	latexmk -C