# must use personal access token for github password
# must use local su password for sudo
# must set up ~/.pypirc for pypi password

update:
	python update.py
	git commit -am "update version"
	git push origin master
	sudo python setup.py sdist upload -r pypi
