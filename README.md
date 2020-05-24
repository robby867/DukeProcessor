# DukeProcessor

## This Project
This is a processor which implements the Duke 250/16, a 16-bit MIPs-like word addressed RISC architecture. The processor comes with a supporting assembler and simulator.

## Supporting Files
The assembler take in a Duke 250/16 assembly file, and produces an instruction memory file ("\<test_name\>.imem.lgsim") and data memory file ("\<test_name\>.dmem.lgsim") that can be used to run the processor. The simulator takes in an instruction memory file and a data memory file, and prints out every instruction on a separate line. It will also show the state of the registers on each clock cycle. See the asm_sim readme for more information. Inside the assembly_files folder there are some example assembly programs that can be used with the processor. The processor comes loaded with the arithmetic.s file. 

## Writing Assembly
- First line must be .text
- File extension must be a .s file extension. Much of the syntax highlighting will be the same as the MIPs architecture
- Comment with #
- There can be a .data section, like in MIPs
- Because it is word addressed, characters in the .data section are stored one character per word

## Running the Assembler
Use the command
``` 
./asm PROGRAM_FILE
```
to assemble a file. For example, 
```
./asm simple.s
```
To run some debug information, add the ```-v``` tag. For example,
```
./asm simple.s -v
```

## Running the Simulator
Use the command 
```
./sim PROGRAM_NAME.imem.lgsim PROGRAM_NAME.dmem.lgsim
```
to run the simulator. For example, 
```
./sim simple.imem.lgsim simple.dmem.lgsim
```
to run the simple program.

## Running the Processor
To run the processor, open the processor.circ file in Logisim. Right click on the instruction memory, and hit load image. Navigate to the PROGRAM_NAME.imem.lgsim file that you want to load, and load it into instruction memory. Repeat the process for the data memory and the PROGRAM_NAME.dmem.lgsim file. Then you can enable ticks in the simulation menu to run the processor. 

## Acknowledgements
This is my submission for the Processor Core Design assignment for the Duke ECE/CS 250 class by Duke Professor Alvin Lebeck. All of the supporting files are of his creation. The processor.circ file is my own original work.
