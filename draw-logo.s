# Draw the RISC-V Logo in VS Code with Venus Simulator

# START
    li a0, 0x100    # Environment call to set individual LED
    la s0, logo     # ROM holds color values for each LED
    li s2, 0        # s2 is current LED row
    li s3, 10       # s3 is number of LED rows
outer:
    li s1, 0        # s1 is
inner:
    lw a2, 0(s0)    # a2 gets next color value from ROM in _RGB 
    slli a1, s2, 16 # a1 holds pixel x in bits 31-16 and pixel y in bits 15-0
    or a1, a1, s1   # 
    ecall           # set the individual led (a0 = 0x100)
    addi s0, s0, 4   
    addi s1, s1, 1  
    bne s1, s3, inner
    addi s2, s2, 1  
    bne s2, s3, outer
    li a0, 10
    li a1, 0
    ecall


.data
# RBG: r in bits 23-16, g in bits 15-8 and b in bits 7-0
# This value will be loaded into a2
# 0x00000000 is Black
# 0x002A3172 is Blue
# 0x00F6B21A is Yellow
logo:
    .word 0x00000000 # Black
    .word 0x002A3172 # Blue
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x00000000
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x00000000
    .word 0x00000000
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x00000000
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
    .word 0x00000000
    .word 0x00000000
    .word 0x00000000
    .word 0x002A3172
    .word 0x002A3172
    .word 0x00000000
    .word 0x00000000
    .word 0x002A3172
    .word 0x002A3172
    .word 0x00000000
    .word 0x00000000
    .word 0x00F6B21A # Yellow
    .word 0x00000000
    .word 0x00000000
    .word 0x002A3172
    .word 0x00F6B21A
    .word 0x00000000
    .word 0x00000000
    .word 0x00000000
    .word 0x00000000
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00000000
    .word 0x00000000
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00000000
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00000000
    .word 0x00000000
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00000000
    .word 0x00000000
    .word 0x002A3172
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00000000
    .word 0x00000000
    .word 0x002A3172
    .word 0x002A3172
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00F6B21A
    .word 0x00000000
    .word 0x00000000
    .word 0x002A3172
    .word 0x002A3172
    .word 0x002A3172
