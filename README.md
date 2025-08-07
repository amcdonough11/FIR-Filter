# FIR-Filter
AHB Finite Impulse Response (FIR) Filter Design

## Overview

This is a design for a 4-coefficient FIR Filter interfaced with an AHB subordinate. The design processes 16-bit input samples using 4 configurable 16-bit coefficients to produce a 16-bit filtered output, which can be accessed via the AHB bus. This is designed for digital signal processing in an AHB-based SoC. 

## Structure 

- ahb_fir_filter.sv: Top-level module

- ahb_subordinate.sv: Manages AHB-Lite bus transactions and register access

- fir_filter.sv: Implements the FIR filter core

- coefficient_loader.sv: Handles loading and clearing of FIR coefficients

- controller.sv: Controls FIR filter operations via a state machine

- counter.sv, flex_counter.sv: Track sample counts (up to 1000 samples)

- magnitude.sv: Converts 17-bit filter output to 16-bit magnitude

- sync.sv: Synchronizes asynchronous inputs

- datapath.sv: Perform arithmetic operations (multiply, add, subtract) for the FIR filter

## Features 

- AHB-Lite Interface: Supports 8-bit and 16-bit transfers for configuration and data access

- FIR Filter: Processes 16-bit samples with four programmable coefficients

- Dynamic Coefficient Loading: Updates coefficients via AHB writes, triggered by a control register

- Sample Tracking: Signals completion after processing 1000 samples (one_k_samples)

- Error Handling: Detects arithmetic overflow, reported via the status register

- Synchronous Design: Operates with a single clock (clk) and active-low reset (n_rst)

## AHB Memory Map
The AHB subordinate interface uses a 4-bit address bus (haddr[3:0]):

- 0x0, 0x1: Status register (read-only, bit 8: err, bit 0: modwait || new_coefficient_set).

- 0x2, 0x3: Results register (read-only, filtered output fir_out).

- 0x4, 0x5: New sample register (read/write, input sample_data).

- 0x6-0xD: Coefficient registers F0-F3 (read/write, 16-bit each).

- 0xE: New coefficient set register (read/write, triggers coefficient loading).

- Others: Invalid addresses return hresp = 1 (error).

## Usage

1. Integration:
  - Instantiate ahb_fir_filter in an AHB-based SoC.
  
  - Connect AHB signals to the system bus.

2. Configuration:
  - Write coefficients to 0x6-0xD (F0-F3, e.g., {1, 2, 3, 4}).
  
  - Write 0x1 to 0xE to trigger coefficient loading.
  
  - Write samples to 0x4-0x5 to set sample_data and assert data_ready.

3. Operation:
  - Read filtered output from 0x2-0x3.
  
  - Monitor status at 0x0-0x1 for errors or operation status.
  
  - Check one_k_samples for 1000-sample completion.

## Diagrams 
AHB Subordinate RTL Diagram:
![ahb_sub_rtl](https://github.com/user-attachments/assets/8db44e8f-a272-4b72-9474-fbc456b3805a)
FIR Filter State Machine:
![fir_std](https://github.com/user-attachments/assets/f184c5d5-46d7-4427-a224-4e77442c97ee)
Coefficient Loader State Machine:
![coeff_load_std](https://github.com/user-attachments/assets/1fddcb7e-0c38-4c13-83dc-b0e1654f3b10)

