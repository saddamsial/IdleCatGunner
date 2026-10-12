02c54b24  stp x30,x21,[sp, #-0x20]!
02c54b28  stp x20,x19,[sp, #0x10]
02c54b2c  mov x19,x0
02c54b30  mov w20,wzr
02c54b34  mov w21,wzr
02c54b38  mov x0,x19
02c54b3c  mov w1,w21
02c54b40  bl 0x02c53078
02c54b44  cmp w0,#0x2
02c54b48  b.eq 0x02c54b64
02c54b4c  cmp w0,#0x1
02c54b50  b.ne 0x02c54b80
02c54b54  mov x0,x19
02c54b58  mov w1,w21
02c54b5c  bl 0x02c531d8
02c54b60  b 0x02c54b78
02c54b64  ldrb w8,[x19, #0x48]
02c54b68  cbz w8,0x02c54b80
02c54b6c  mov x0,x19
02c54b70  mov w1,w21
02c54b74  bl 0x02c535b4
02c54b78  and w8,w0,#0x1
02c54b7c  add w20,w20,w8
02c54b80  add w21,w21,#0x1
02c54b84  cmp w21,#0x8
02c54b88  b.ne 0x02c54b38
02c54b8c  mov w0,w20
02c54b90  ldp x20,x19,[sp, #0x10]
02c54b94  ldp x30,x21,[sp], #0x20
02c54b98  ret
