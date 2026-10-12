02c547cc  stp x30,x21,[sp, #-0x20]!
02c547d0  stp x20,x19,[sp, #0x10]
02c547d4  adrp x20,0x625c000
02c547d8  adrp x21,0x5e5e000
02c547dc  mov w19,w0
02c547e0  ldrb w8,[x20, #0x179]
02c547e4  ldr x21,[x21, #0x70]
02c547e8  tbnz w8,#0x0,0x02c5480c
02c547ec  adrp x0,0x5e59000
02c547f0  ldr x0,[x0, #0x1c0]
02c547f4  bl 0x029f5a50
02c547f8  adrp x0,0x5e5e000
02c547fc  ldr x0,[x0, #0x70]
02c54800  bl 0x029f5a50
02c54804  mov w8,#0x1
02c54808  strb w8,[x20, #0x179]
02c5480c  ldr x0,[x21]
02c54810  adrp x20,0x5e59000
02c54814  ldr w8,[x0, #0xe4]
02c54818  ldr x20,[x20, #0x1c0]
02c5481c  cbnz w8,0x02c54828
02c54820  bl 0x029f5bd0
02c54824  ldr x0,[x21]
02c54828  ldr x8,[x20]
02c5482c  ldr x9,[x0, #0xb8]
02c54830  ldr w10,[x8, #0xe4]
02c54834  ldr x20,[x9]
02c54838  cbnz w10,0x02c54844
02c5483c  mov x0,x8
02c54840  bl 0x029f5bd0
02c54844  mov x0,x20
02c54848  mov x1,xzr
02c5484c  mov x2,xzr
02c54850  bl 0x057e14b4
02c54854  tbz w0,#0x0,0x02c54860
02c54858  mov w0,wzr
02c5485c  b 0x02c548cc
02c54860  ldr x0,[x21]
02c54864  ldr w8,[x0, #0xe4]
02c54868  cbnz w8,0x02c54874
02c5486c  bl 0x029f5bd0
02c54870  ldr x0,[x21]
02c54874  ldr x8,[x0, #0xb8]
02c54878  ldr x0,[x8]
02c5487c  cbz x0,0x02c548d8
02c54880  bl 0x02c548dc
02c54884  ldr x0,[x21]
02c54888  ldr w8,[x0, #0xe4]
02c5488c  cbz w19,0x02c548b0
02c54890  cbnz w8,0x02c5489c
02c54894  bl 0x029f5bd0
02c54898  ldr x0,[x21]
02c5489c  ldr x8,[x0, #0xb8]
02c548a0  ldr x8,[x8]
02c548a4  cbz x8,0x02c548d8
02c548a8  ldr w0,[x8, #0x80]
02c548ac  b 0x02c548cc
02c548b0  cbnz w8,0x02c548bc
02c548b4  bl 0x029f5bd0
02c548b8  ldr x0,[x21]
02c548bc  ldr x8,[x0, #0xb8]
02c548c0  ldr x8,[x8]
02c548c4  cbz x8,0x02c548d8
02c548c8  ldr w0,[x8, #0x7c]
02c548cc  ldp x20,x19,[sp, #0x10]
02c548d0  ldp x30,x21,[sp], #0x20
02c548d4  ret
02c548d8  bl 0x029f5cfc
