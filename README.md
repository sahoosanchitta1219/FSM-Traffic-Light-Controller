# FSM-Traffic-Light-Controller
A Finite State Machine (FSM) based 4-way traffic light controller implemented in Verilog HDL. The design models sequential state transitions to automatically cycle through Green, Yellow, and Red signal configurations for managing a North-South and East-West road intersection. 
# 4-Way Traffic Light Controller (FSM)

An FSM-based 4-way traffic light controller implemented in Verilog HDL. This hardware core manages a busy intersection by cycling through specific states for North-South (NS) and East-West (EW) road signals.

## Signal Encoding
- **Red:** `3'b100`
- **Yellow:** `3'b010`
- **Green:** `3'b001`

## Repository Structure
- `traffic_light_controller.v`: Main synthesizable FSM model.
- `traffic_light_controller_tb.v`: Testbench applying system clocks and resets to monitor state behavior.

## Hardware Synthesis (RTL Schematic)
![RTL Schematic](rtl_schematic(1).png)

## Verification Results (Simulation Waveform)
![Waveform](simulation(1)_waveform.png)
## Documentation

You can view or download the complete project requirements and guidelines here:
- [📄 Download Project PDF](Mini Project-1.pdf)
