#!/bin/bash

# Array to keep track of background job PIDs
pids=()

# Loop through all directories in the current working directory
for dir in */; do
  # Run each loop iteration as a background job
  (
    # Capture the original directory to navigate back later
    orig_dir=$(pwd)

    # Check if the directory contains a .git folder, indicating it's a git repository
    if [[ -d "${dir}/.git" ]]; then
      # Navigate into the git directory
      cd "$dir" || exit 1

      # Attempt to run 'git switch main' and 'git pull --ff-only', suppressing the "Already on 'main'" message
      output=$(git switch main 2>&1 | grep -v 'Already on' && git pull --ff-only 2>&1)

      # Check if the operation was successful
      if [[ $? -ne 0 ]]; then
        # Handle repos that haven't been updated from master to main if they still exist
        if [[ "$output" == *"fatal: invalid reference: main"* ]]; then
          git switch master && git pull --ff-only
        else
          echo "An unknown error occurred in directory $dir: $output"
        fi
      else
        echo "Successfully updated $dir"
      fi

      # Navigate back to the original directory without output
      cd "$orig_dir" > /dev/null 2>&1
    fi
  ) &
  
  # Store the PID of the background job
  pids+=($!)
done

# Wait for all background jobs to complete
for pid in "${pids[@]}"; do
  wait "$pid"
done

