CREATE EXTENSION pg_wait_sampling;

-- Some dummy checks just to be sure that all our functions work and return something
SELECT count(*) = 1 as test FROM pg_wait_sampling_get_current(pg_backend_pid());
SELECT count(*) >= 0 as test FROM pg_wait_sampling_get_history();
SELECT count(*) >= 0 as test FROM pg_wait_sampling_get_profile();

DROP EXTENSION pg_wait_sampling;
