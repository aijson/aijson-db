type:
	pyright aijson_db

test:
	pytest aijson_db

test-no-skip:
	pytest --disallow-skip

test-fast:
	pytest -m "not slow" aijson_db

lint:
	ruff check --fix

format:
	ruff format

all: format lint type test-fast
