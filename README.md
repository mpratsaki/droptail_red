# Droptail_RED

This repository contains the implementation and simulations for the **Computer Networks Laboratory Assignment (2024-2025)**.

## Description

The project involves configuring and simulating network topologies using **OMNeT++** and analyzing queue management policies like **DropTail** and **RED**. Key tasks include:

- Setting up a network topology based on the instructions provided.
- Configuring parameters derived from student-specific values (e.g., AEM digits).
- Simulating scenarios with varying configurations (e.g., packet error rates, delay, data rates, etc.).
- Analyzing and comparing the performance of different queue management policies.

## Project Structure

- **/droptail_red/**: Contains the configuration and simulation files for the DropTail and RED policies.
- **LICENSE**: Project license (MIT).
- `.gitignore`: Standard ignore rules.
- `.gitattributes`: Text file attributes for consistent Git behavior.

## How to Run

1. Import the `droptail_red.zip` file into the **OMNeT++ IDE** under `inet4.x/examples/`.
2. Rename files and networks according to the guidelines (e.g., based on the last three digits of your AEM).
3. Follow the assignment instructions to configure and run simulations.
4. Analyze the results using the provided metrics (e.g., throughput, cwnd graphs, etc.).

## Simulation Scenarios

- **Scenario 1**: Introducing packet error rates and comparing TCP variants (e.g., Reno, Tahoe, NewReno).
- **Scenario 2**: Evaluating DropTail and RED queue management policies under varying conditions.

## Deliverables

The project report and simulation files should be submitted as a ZIP file containing:
1. The `droptail_red` folder with all configurations and scripts.
2. A report in both DOCX and PDF formats detailing the simulation results.

## License

This project is licensed under the [MIT License](LICENSE).
