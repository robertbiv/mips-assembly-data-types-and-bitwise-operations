# MIPS Assembly: Data Types and Bitwise Operations

A MIPS assembly program that demonstrates fundamental arithmetic operations, bitwise operations, and shift operations on integer data types.

## Description

This program showcases various MIPS assembly instructions by taking two integer inputs from the user and performing a comprehensive set of operations on them. It's designed as an educational tool to understand how MIPS handles different types of operations at the assembly level.

## Features

The program demonstrates the following operations:

### Arithmetic Operations
- **Addition** (`add`): Computes the sum of two integers
- **Subtraction** (`sub`): Computes the difference between two integers
- **Multiplication** (`mult`): Computes the 32-bit product of two integers
- **Division** (`div`): Computes the quotient (with division-by-zero handling)

### Bitwise Operations
- **AND** (`and`): Performs bitwise AND operation
- **OR** (`or`): Performs bitwise OR operation
- **XOR** (`xor`): Performs bitwise XOR operation
- **NOR** (`nor`): Performs bitwise NOR operation

### Shift Operations
- **Left Shift** (`sll`): Shifts bits left by 2 positions
- **Logical Right Shift** (`srl`): Shifts bits right by 2 positions (zero-fill)
- **Arithmetic Right Shift** (`sra`): Shifts bits right by 2 positions (sign-extend)

### Comparison Operations
- **Signed Comparison** (`slt`): Checks if first number is less than second (signed)
- **Unsigned Comparison** (`sltu`): Checks if first number is less than second (unsigned)

## Prerequisites

To run this program, you need a MIPS simulator or assembler such as:
- **MARS** (MIPS Assembler and Runtime Simulator)
- **SPIM** (MIPS Simulator)
- **QtSpim** (GUI version of SPIM)

## How to Run

1. Open the MIPS simulator of your choice
2. Load the `main.s` file
3. Assemble the program
4. Run the program
5. When prompted, enter two integers
6. View the results of all operations

## Example Usage

```
Enter first integer: 12
Enter second integer: 5
Sum: 17
Difference: 7
Product (32-bit): 60
Quotient: 2
AND: 4
OR: 13
XOR: 9
NOR: -14
Left shift by 2: 48
Logical right shift by 2: 3
Arithmetic right shift by 2: 3
Signed a < b? 0
Unsigned a < b? 0
```

## Program Structure

The program consists of two main sections:

- **`.data` section**: Contains string constants for prompts and output labels
- **`.text` section**: Contains the executable code that performs all operations

## Educational Value

This program is useful for:
- Learning MIPS assembly language syntax
- Understanding how different operations are implemented at the assembly level
- Exploring the difference between signed and unsigned operations
- Understanding shift operations and their applications
- Learning about division-by-zero handling in assembly

## License

This project is available for educational purposes.
