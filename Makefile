all:
	docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
	git add site/
	git commit -m "automated site build"
	git subtree push --prefix site origin gh-pages
