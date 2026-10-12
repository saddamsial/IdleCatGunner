02c7cf74  stp x30,x23,[sp, #-0x30]!
02c7cf78  stp x22,x21,[sp, #0x10]
02c7cf7c  stp x20,x19,[sp, #0x20]
02c7cf80  adrp x22,0x625c000
02c7cf84  adrp x23,0x5e62000
02c7cf88  adrp x21,0x5e62000
02c7cf8c  ldrb w8,[x22, #0x325]
02c7cf90  ldr x23,[x23, #0x628]
02c7cf94  ldr x21,[x21, #0x680]
02c7cf98  mov w19,w1
02c7cf9c  mov x20,x0
02c7cfa0  tbnz w8,#0x0,0x02c7cfd0
02c7cfa4  adrp x0,0x5e63000
02c7cfa8  ldr x0,[x0, #0x108]
02c7cfac  bl 0x029f5a50
02c7cfb0  adrp x0,0x5e62000
02c7cfb4  ldr x0,[x0, #0x680]
02c7cfb8  bl 0x029f5a50
02c7cfbc  adrp x0,0x5e62000
02c7cfc0  ldr x0,[x0, #0x628]
02c7cfc4  bl 0x029f5a50
02c7cfc8  mov w8,#0x1
02c7cfcc  strb w8,[x22, #0x325]
02c7cfd0  adrp x22,0x5e63000
02c7cfd4  ldr x22,[x22, #0x108]
02c7cfd8  ldr x0,[x23]
02c7cfdc  bl 0x029f5cec
02c7cfe0  ldr x1,[x21]
02c7cfe4  mov x21,x0
02c7cfe8  bl 0x044f7180
02c7cfec  ldr x8,[x20, #0x40]
02c7cff0  cbz x8,0x02c7d0a0
02c7cff4  mov w23,#0x8
02c7cff8  ldr w10,[x8, #0x18]
02c7cffc  sub x9,x23,#0x8
02c7d000  cmp x9,w10, SXTW 
02c7d004  b.ge 0x02c7d0a0
02c7d008  cmp x9,x10
02c7d00c  b.cs 0x02c7d168
02c7d010  ldr w10,[x8, x23, LSL #0x2]
02c7d014  cmp w10,w19
02c7d018  b.ne 0x02c7d094
02c7d01c  ldr x10,[x20, #0x38]
02c7d020  cbz x10,0x02c7d150
02c7d024  ldr w11,[x10, #0x18]
02c7d028  cmp x9,x11
02c7d02c  b.cs 0x02c7d168
02c7d030  ldr w1,[x10, x23, LSL #0x2]
02c7d034  cmn w1,#0x1
02c7d038  b.eq 0x02c7d094
02c7d03c  cbz x21,0x02c7d150
02c7d040  ldr w11,[x21, #0x1c]
02c7d044  ldr x9,[x21, #0x10]
02c7d048  ldr x10,[x22]
02c7d04c  add w11,w11,#0x1
02c7d050  str w11,[x21, #0x1c]
02c7d054  cbz x9,0x02c7d150
02c7d058  ldrsw x11,[x21, #0x18]
02c7d05c  ldr w12,[x9, #0x18]
02c7d060  cmp w11,w12
02c7d064  b.cs 0x02c7d07c
02c7d068  add x9,x9,x11, LSL #0x2
02c7d06c  add w10,w11,#0x1
02c7d070  str w10,[x21, #0x18]
02c7d074  str w1,[x9, #0x20]
02c7d078  b 0x02c7d094
02c7d07c  ldr x8,[x10, #0x20]
02c7d080  mov x0,x21
02c7d084  ldr x8,[x8, #0xc0]
02c7d088  ldr x2,[x8, #0x70]
02c7d08c  bl 0x044f7a10
02c7d090  ldr x8,[x20, #0x40]
02c7d094  add x23,x23,#0x1
02c7d098  cbnz x8,0x02c7cff8
02c7d09c  b 0x02c7d150
02c7d0a0  ldr x8,[x20, #0x48]
02c7d0a4  cbz x8,0x02c7d154
02c7d0a8  mov w23,#0x8
02c7d0ac  ldr w10,[x8, #0x18]
02c7d0b0  sub x9,x23,#0x8
02c7d0b4  cmp x9,w10, SXTW 
02c7d0b8  b.ge 0x02c7d154
02c7d0bc  cmp x9,x10
02c7d0c0  b.cs 0x02c7d168
02c7d0c4  ldr w10,[x8, x23, LSL #0x2]
02c7d0c8  cmp w10,w19
02c7d0cc  b.ne 0x02c7d148
02c7d0d0  ldr x10,[x20, #0x30]
02c7d0d4  cbz x10,0x02c7d150
02c7d0d8  ldr w11,[x10, #0x18]
02c7d0dc  cmp x9,x11
02c7d0e0  b.cs 0x02c7d168
02c7d0e4  ldr w1,[x10, x23, LSL #0x2]
02c7d0e8  cmn w1,#0x1
02c7d0ec  b.eq 0x02c7d148
02c7d0f0  cbz x21,0x02c7d150
02c7d0f4  ldr w11,[x21, #0x1c]
02c7d0f8  ldr x9,[x21, #0x10]
02c7d0fc  ldr x10,[x22]
02c7d100  add w11,w11,#0x1
02c7d104  str w11,[x21, #0x1c]
02c7d108  cbz x9,0x02c7d150
02c7d10c  ldrsw x11,[x21, #0x18]
02c7d110  ldr w12,[x9, #0x18]
02c7d114  cmp w11,w12
02c7d118  b.cs 0x02c7d130
02c7d11c  add x9,x9,x11, LSL #0x2
02c7d120  add w10,w11,#0x1
02c7d124  str w10,[x21, #0x18]
02c7d128  str w1,[x9, #0x20]
02c7d12c  b 0x02c7d148
02c7d130  ldr x8,[x10, #0x20]
02c7d134  mov x0,x21
02c7d138  ldr x8,[x8, #0xc0]
02c7d13c  ldr x2,[x8, #0x70]
02c7d140  bl 0x044f7a10
02c7d144  ldr x8,[x20, #0x48]
02c7d148  add x23,x23,#0x1
02c7d14c  cbnz x8,0x02c7d0ac
02c7d150  bl 0x029f5cfc
02c7d154  mov x0,x21
02c7d158  ldp x20,x19,[sp, #0x20]
02c7d15c  ldp x22,x21,[sp, #0x10]
02c7d160  ldp x30,x23,[sp], #0x30
02c7d164  ret
02c7d168  bl 0x029f5d04
