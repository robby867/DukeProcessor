# ECE 250 ASSEMBLER/SIMULATOR

We have provided a simple assembler and simulator for the Duke250/16 ISA.

## 1. Compiling

To compile the simulator and assembler, type `make`.  If successful, you will have executables 'asm' and 'sim' in your current directory afterwards.

## 2. Assembling

The assembler takes one argument, which is the filename of an assembly-language program. It writes two memory initialization files:

- One for the instruction memory in Logisim (.imem.lgsim)
- One for the data memory in Logisim (.dmem.lgsim)

To assemble the test program that is included, type `./asm PROGRAM_FILE`. For example, `./asm example.s`.

You can also add the `-v` flag to the assembler to output debug information, including the symbol table.

Please note that the program needs to have a ".text" header marking the beginning  of the instructions. A ".data" header is also necessary to mark the beginning of the static data section. For examples, look at the organization of the provided assembly programs.

## 3. Simulatings

The simulator is a very fast functional simulator. It does not model any microarchitectural details. It takes two filenames as arguments:

- The instruction memory file (.imem.lgsim)
- The data memory file (.dmem.lgsim)

To simulate the test program, type `./sim PROGRAM_NAME.imem.lgsim PROGRAM_NAME.dmem.lgsim` after assembling `PROGRAM_NAME.s`. For example, `./sim example.imem.lgsim examples.dmem.lgsim`.

You can also add the `-v` flag to print the dynamic instruction trace, along with the values of all registers at every clock cycle. Adding the `-n` flag will print the number of dynamic instructions executed at the end of the simulation. Use the `-d` to print the register values in decimal rather then hex. Use the `-r` flag to add an extra cycle at the beginning for processor reset (i.e. for any code that does not rely on I/O).

Note, the simulator prints register values as unsigned (calculations are done with signed numbers). So negative values will be printed as a large positive number. This is consistent with the way Logisim prints register values.

Normally, the simulator will accept keyboard input for the `input` instruction, but this can be disabled with the `-F` option, which will cause all `input` instructions to fail to return valid data (see the assignment for details).
