.text
# test shl, shra instructions

#sll
addi $r1, $r0, 1
sll $r2, $r1, 7

#sra
sra $r3, $r2, 7

# sra of neg number
addi $r4, $r0, -16
sra $r4, $r4, 2

halt

.data
