-- File: test_udtf.sql
CREATE OR REPLACE FUNCTION TEST_EMPTY_STRINGS()
RETURNS TABLE (col1 STRING, col2 STRING)
LANGUAGE PYTHON
RUNTIME_VERSION = '3.8'
HANDLER = 'process'
AS
$$
def process():
    # This function deliberately returns two empty strings
    yield "", ""
$$;
