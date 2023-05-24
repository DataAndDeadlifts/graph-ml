venv: venv/touch

venv/touch:
	python3 -m venv venv
	. venv/bin/activate && pip install -r requirements.txt
	touch venv/touch