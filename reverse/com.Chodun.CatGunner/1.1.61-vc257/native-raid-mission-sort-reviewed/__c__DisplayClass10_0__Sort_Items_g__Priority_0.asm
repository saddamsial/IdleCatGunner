02c55e18  mov x8,x0
02c55e1c  cmp w1,#0x1
02c55e20  mov w0,#0x63
02c55e24  b.gt 0x02c55e3c
02c55e28  cbz w1,0x02c55e5c
02c55e2c  cmp w1,#0x1
02c55e30  b.ne 0x02c55e6c
02c55e34  mov w0,wzr
02c55e38  ret
02c55e3c  cmp w1,#0x2
02c55e40  b.eq 0x02c55e70
02c55e44  cmp w1,#0x3
02c55e48  b.ne 0x02c55e6c
02c55e4c  ldrb w8,[x8, #0x10]
02c55e50  cmp w8,#0x0
02c55e54  mov w8,#0x2
02c55e58  b 0x02c55e68
02c55e5c  ldrb w8,[x8, #0x10]
02c55e60  cmp w8,#0x0
02c55e64  mov w8,#0x1
02c55e68  cinc w0,w8,eq
02c55e6c  ret
02c55e70  ldrb w8,[x8, #0x10]
02c55e74  eor w0,w8,#0x1
02c55e78  ret
