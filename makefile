all:

publish: dummy
	rm -rf docs
	npm run build
	mv dist docs && rm -f docs/favicon.ico
dummy:
