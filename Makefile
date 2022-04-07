all:
	git pull
	git subtree add --prefix site origin gh-pages
	docker run --rm --user 1000 -it -v ${PWD}:/docs squidfunk/mkdocs-material build
	git add site/
	git commit -m "automated site build"
	git subtree push --prefix site origin gh-pages
	git reset --hard HEAD~2
