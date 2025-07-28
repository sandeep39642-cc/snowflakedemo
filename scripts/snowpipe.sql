-- snowpipe.sql

CREATE OR REPLACE PIPE demo_pipe
AUTO_INGEST = FALSE
AS
COPY INTO demo_employees
FROM @my_stage/demo/
FILE_FORMAT = (TYPE = 'CSV', SKIP_HEADER = 1);

ALTER PIPE demo_pipe REFRESH;
