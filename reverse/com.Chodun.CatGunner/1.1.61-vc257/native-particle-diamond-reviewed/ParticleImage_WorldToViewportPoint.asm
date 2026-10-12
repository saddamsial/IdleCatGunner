049bafe0  str d10,[sp, #-0x20]!
049bafe4  stp d9,d8,[sp, #0x8]
049bafe8  str x30,[sp, #0x18]
049bafec  fmov s8,s2
049baff0  fmov s9,s1
049baff4  fmov s10,s0
049baff8  bl 0x049bc7e4
049baffc  cbz x0,0x049bb020
049bb000  fmov s1,s9
049bb004  fmov s2,s8
049bb008  ldr x30,[sp, #0x18]
049bb00c  ldp d9,d8,[sp, #0x8]
049bb010  fmov s0,s10
049bb014  mov x1,xzr
049bb018  ldr d10,[sp], #0x20
049bb01c  b 0x05797854
049bb020  bl 0x029f5cfc
