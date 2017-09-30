function fish_prompt_jobs
  set -l jobs (jobs -c); or return 1
  set -l job_count (count $jobs)
  echo -n -s $job_count " job"
  test $job_count -gt 1; and echo -ns "s" # make jobs plural
  return 0
end
