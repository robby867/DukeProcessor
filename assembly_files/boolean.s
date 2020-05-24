.text
# test not, xor instrctions

addi $r1, $r0, 15
addi $r2, $r0, 12

#not
not $r3, $r1
not $r6, $r3

#xor
xor $r4, $r3, $r2
xor $r5, $r6, $r1

halt

.data
