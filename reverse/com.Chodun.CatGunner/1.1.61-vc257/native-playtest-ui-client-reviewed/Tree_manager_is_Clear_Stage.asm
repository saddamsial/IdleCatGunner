02cad054  ldp w8,w10,[x0, #0x28]
02cad058  mov w9,#0xa
02cad05c  madd w8,w8,w9,w10
02cad060  ldr w9,[x0, #0x30]
02cad064  cmp w8,w9
02cad068  cset w0,lt
02cad06c  ret
