# DMDB - Interactive SQL Session 2025

## Instructions for TAs

- Keep separate directories for each section (for now).
- Don’t use your own Jupyter server — use the one inside the Docker container.
- Navigate to the corresponding directory and run:

  ```bash
  docker-compose up -d
  ```

- Access the Jupyter server in your browser at [http://localhost:8888](http://localhost:8888).
- If you run multiple sections simultaneously, port conflicts may occur. Be sure to stop a section using:

  ```bash
  docker-compose down
  ```

  when you're done.
- We're planning to move everything to a unified Docker setup, but the teaching material for each section will still be kept in separate Jupyter notebook files.
