venv: venv/touch

venv/touch:
	python3 -m venv venv
	. venv/bin/activate && pip install -r requirements.txt && pip install -r torch_geometric_requirements.txt
	touch venv/touch

remake_venv:
	rm -rf venv
	$(MAKE) venv