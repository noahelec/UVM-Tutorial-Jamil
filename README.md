# UVM Tutorial

This repository contains a UVM (Universal Verification Methodology) tutorial based on a YouTube video tutorial series. The tutorial includes SystemVerilog files and demonstrates the UVM methodology through various components such as agents, drivers, monitors, sequences, and more.

## Table of Contents

- [Introduction](#introduction)
- [Files Included](#files-included)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)


## Introduction

This tutorial aims to teach the basics of UVM by providing a simple example. It includes all the necessary components and files to set up and run a UVM testbench.

## Files Included

- `agent.sv` - UVM agent implementation.
- `driver.sv` - UVM driver implementation.
- `env.sv` - UVM environment implementation.
- `interface.sv` - SystemVerilog interface definition.
- `monitor.sv` - UVM monitor implementation.
- `sequence.sv` - UVM sequence implementation.
- `sequence_item.sv` - UVM sequence item implementation.
- `sequencer.sv` - UVM sequencer implementation.
- `test.sv` - UVM test implementation.
- `top.sv` - Top-level module for the testbench.

## Prerequisites

- A SystemVerilog simulator (e.g., ModelSim, QuestaSim, VCS)
- UVM library
- Basic knowledge of SystemVerilog and UVM

## Setup

1. Clone the repository:

   ```bash
   git clone <repository_url>
   cd <repository_directory>
   
2. Set up the UVM library in your simulator environment. Refer to your simulator's documentation for specific instructions.

3. Compile the SystemVerilog files using your simulator. For example, using ModelSim:

   ```bash
   vlog -sv interface.sv sequence_item.sv sequencer.sv driver.sv monitor.sv agent.sv env.sv test.sv top.sv

## Usage
Run the simulation using your simulator. For example, using ModelSim:

```bash
vsim -c -do "run -all" top

This command will compile and run the testbench, displaying the simulation results in the console.
