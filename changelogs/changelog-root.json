CREATE OR REPLACE FUNCTION TEST_FIXED()
RETURNS TABLE (col1 STRING, col2 STRING)
LANGUAGE PYTHON
RUNTIME_VERSION = '3.8'
HANDLER = 'process'
AS
$$
def process():
    # Escape the empty strings so YAML doesn’t translate them
    yield "\"\"", "\"\""
$$;
