.PHONY: test lint run

test:
	python -m pytest -q

lint:
	python -m compileall -q .

run:
	# show what would be cleaned, change nothing
