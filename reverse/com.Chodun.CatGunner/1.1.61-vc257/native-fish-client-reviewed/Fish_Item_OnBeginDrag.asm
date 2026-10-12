02c61fd4  stp d9,d8,[sp, #-0x40]!
02c61fd8  str x30,[sp, #0x10]
02c61fdc  stp x22,x21,[sp, #0x20]
02c61fe0  stp x20,x19,[sp, #0x30]
02c61fe4  adrp x21,0x625c000
02c61fe8  mov x20,x1
02c61fec  mov x19,x0
02c61ff0  ldrb w8,[x21, #0x22a]
02c61ff4  tbnz w8,#0x0,0x02c6200c
02c61ff8  adrp x0,0x5e5c000
02c61ffc  ldr x0,[x0, #0xf00]
02c62000  bl 0x029f5a50
02c62004  mov w8,#0x1
02c62008  strb w8,[x21, #0x22a]
02c6200c  ldrb w8,[x19, #0x86]
02c62010  str xzr,[sp, #0x18]
02c62014  cbnz w8,0x02c620ec
02c62018  ldr x0,[x19, #0x70]
02c6201c  mov w8,#0x1
02c62020  strb wzr,[x19, #0xb0]
02c62024  strh w8,[x19, #0x84]
02c62028  cbz x0,0x02c62030
02c6202c  bl 0x02c5fe20
02c62030  mov x0,x19
02c62034  bl 0x02c61e88
02c62038  ldr x0,[x19, #0x60]
02c6203c  cbz x0,0x02c62100
02c62040  mov x1,xzr
02c62044  bl 0x05aa291c
02c62048  ldr x8,[x19, #0x60]
02c6204c  str w0,[x19, #0x80]
02c62050  cbz x8,0x02c62100
02c62054  mov x0,x8
02c62058  mov w1,#0x270f
02c6205c  mov x2,xzr
02c62060  bl 0x05aa29d0
02c62064  cbz x20,0x02c62100
02c62068  ldr x21,[x19, #0x50]
02c6206c  ldr s8,[x20, #0x104]
02c62070  mov x0,x20
02c62074  ldr s9,[x20, #0x108]
02c62078  mov x1,xzr
02c6207c  bl 0x05acda38
02c62080  adrp x8,0x5e5c000
02c62084  mov x22,x0
02c62088  ldr x8,[x8, #0xf00]
02c6208c  ldr x8,[x8]
02c62090  ldr w9,[x8, #0xe4]
02c62094  cbnz w9,0x02c620a0
02c62098  mov x0,x8
02c6209c  bl 0x029f5bd0
02c620a0  fmov s0,s8
02c620a4  fmov s1,s9
02c620a8  add x2,sp,#0x18
02c620ac  mov x0,x21
02c620b0  mov x1,x22
02c620b4  mov x3,xzr
02c620b8  bl 0x05aa15c0
02c620bc  ldr x0,[x19, #0x50]
02c620c0  cbz x0,0x02c62100
02c620c4  mov x1,xzr
02c620c8  bl 0x057eddfc
02c620cc  mov x0,x19
02c620d0  mov x1,x20
02c620d4  fmov s8,s0
02c620d8  fmov s9,s1
02c620dc  bl 0x02c62104
02c620e0  fsub s0,s8,s0
02c620e4  fsub s1,s9,s1
02c620e8  stp s0,s1,[x19, #0x78]
02c620ec  ldp x20,x19,[sp, #0x30]
02c620f0  ldr x30,[sp, #0x10]
02c620f4  ldp x22,x21,[sp, #0x20]
02c620f8  ldp d9,d8,[sp], #0x40
02c620fc  ret
02c62100  bl 0x029f5cfc
