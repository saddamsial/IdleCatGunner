02b75c08  ldrb w8,[x0, #0xad]
02b75c0c  cbz w8,0x02b75c50
02b75c10  stp x30,x19,[sp, #-0x10]!
02b75c14  ldrb w8,[x0, #0xac]
02b75c18  mov x19,x0
02b75c1c  cbz w8,0x02b75c4c
02b75c20  ldr w8,[x19, #0xb8]
02b75c24  cmp w8,#0x1
02b75c28  b.ne 0x02b75c34
02b75c2c  ldrb w8,[x19, #0xc5]
02b75c30  cbnz w8,0x02b75c4c
02b75c34  ldrb w2,[x19, #0xc4]
02b75c38  mov x0,x19
02b75c3c  mov w1,wzr
02b75c40  bl 0x02b75c54
02b75c44  mov w8,#0x1
02b75c48  strb w8,[x19, #0x130]
02b75c4c  ldp x30,x19,[sp], #0x10
02b75c50  ret
