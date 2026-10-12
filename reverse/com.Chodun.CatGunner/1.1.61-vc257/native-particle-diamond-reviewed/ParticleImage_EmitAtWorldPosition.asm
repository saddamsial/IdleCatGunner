049c3ad0  str d10,[sp, #-0x30]!
049c3ad4  stp d9,d8,[sp, #0x8]
049c3ad8  str x30,[sp, #0x18]
049c3adc  stp x20,x19,[sp, #0x20]
049c3ae0  mov w19,w1
049c3ae4  mov x1,xzr
049c3ae8  fmov s8,s2
049c3aec  fmov s9,s1
049c3af0  fmov s10,s0
049c3af4  mov x20,x0
049c3af8  bl 0x057dc0f8
049c3afc  cbz x0,0x049c3b30
049c3b00  fmov s0,s10
049c3b04  fmov s1,s9
049c3b08  mov x1,xzr
049c3b0c  fmov s2,s8
049c3b10  bl 0x057f0800
049c3b14  mov x0,x20
049c3b18  mov w1,w19
049c3b1c  ldr x30,[sp, #0x18]
049c3b20  ldp x20,x19,[sp, #0x20]
049c3b24  ldp d9,d8,[sp, #0x8]
049c3b28  ldr d10,[sp], #0x30
049c3b2c  b 0x049c3840
049c3b30  bl 0x029f5cfc
