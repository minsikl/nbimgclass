setup:
	python3.6 -m venv ~/.nbimgclass

install:
	pip install -r requirements.txt

cleanup:
	rm -rf ~/.nbimgclass

all: install
