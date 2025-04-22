# DMDB - Interactive SQL Session 2025

## Prerequisites  
Ensure you have the following installed:  
- Docker  
- Docker Compose  

## Tutorials  
This project includes four tutorials covering:  
- Data Definition Language (DDL)  
- Views  
- TPC-H Queries  
- Transactions  

Each tutorial is located in the `tutorials` folder and comes in two versions:  
- A clean version for hands-on practice  
- A reference version with all cells executed  

## Getting Started  
To launch the environment, run:  
```bash
docker-compose up -d
```  

Then open [http://localhost:8888](http://localhost:8888) in your browser to access the Jupyter server.  

## Shut Down  
To stop all containers:  
```bash
docker-compose down
```  

## Questions or Feedback  
You can post your questions or anything else related to the tutorials on Moodle.
=======
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
