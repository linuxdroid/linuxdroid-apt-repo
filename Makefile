install:
	cp linuxdroid-apt-repo $(PREFIX)/bin/linuxdroid-apt-repo

pypi:
	rm -Rf dist/ build/ linuxdroid_apt_repo.egg-info/
	python3 setup.py sdist bdist_wheel egg_info
	twine upload dist/*

.PHONY: install pypi
