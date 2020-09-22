.PHONY: pypiprod pypitest build_wheel


build_wheel:
	python3 setup.py sdist sdist bdist_wheel

clean_dist_folder:
	rm -rf dist/*

pypiprod: clean_dist_folder build_wheel	
	python3 -m twine upload  dist/prisma_helpers*

pypitest: clean_dist_folder build_wheel	
	python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/prisma_helpers*

