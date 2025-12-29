# String Reversal Using x86 Assembly and Python Interface

## Team Members
- Judy Abu Quta @judyabuquta
- Sara Ahmed @sarah-eid
- Abeer Hussain @abeerahrar

## Project Overview
This project demonstrates **low-level string manipulation using x86 16-bit assembly language** and its conceptual integration with a **high-level Python interface**.  
The core logic is implemented in assembly to highlight memory access, stack operations, and register usage, while Python provides a user-friendly way to interact with and demonstrate the algorithm.


## Project Objective
To reverse a string by transferring characters from a source array to a destination array **in reverse order**, using **stack-based operations** and direct memory manipulation.


## Key Concepts Demonstrated
- x86 **16-bit Assembly Language**
- Stack-based reversal (LIFO behavior)
- Register usage (`SI`, `DI`, `AX`, `CX`)
- Memory addressing and string traversal
- Null-terminated strings
- Separation of concerns (logic vs. I/O)
- Conceptual integration of low-level and high-level programming


## Repository Structure'
```
├── reverse.asm # x86 16-bit assembly implementation
└── reverse_com.py # Python interface / simulation
```

## How It Works

### Assembly (`reverse.asm`)
- Reads a **null-terminated string** from memory
- Pushes each character onto the stack
- Pops characters in reverse order and stores them in a destination buffer
- Implements the reversal as a **reusable procedure**
- Contains no direct input/output logic (pure computation)

### Python (`reverse_com.py`)
- Acts as a **high-level interface**
- Accepts user input
- Displays the reversed string


##  How to Run
Run the Python interface:
```bash
python reverse_com.py
