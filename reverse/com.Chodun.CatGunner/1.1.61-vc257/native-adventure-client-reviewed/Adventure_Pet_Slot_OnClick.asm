02c361c4  str x30,[sp, #-0x10]!
02c361c8  ldr w8,[x0, #0x24]
02c361cc  cmp w8,#0x1
02c361d0  b.eq 0x02c361f0
02c361d4  cbnz w8,0x02c36208
02c361d8  ldr x8,[x0, #0x48]
02c361dc  cbz x8,0x02c36210
02c361e0  ldr w1,[x0, #0x20]
02c361e4  mov x0,x8
02c361e8  ldr x30,[sp], #0x10
02c361ec  b 0x02c33c08
02c361f0  ldr x8,[x0, #0x48]
02c361f4  cbz x8,0x02c36210
02c361f8  ldr x0,[x8, #0x50]
02c361fc  cbz x0,0x02c36210
02c36200  ldr x30,[sp], #0x10
02c36204  b 0x02c35cc8
02c36208  ldr x30,[sp], #0x10
02c3620c  ret
02c36210  bl 0x029f5cfc
