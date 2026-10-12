02c453a8  stp d15,d14,[sp, #-0x60]!
02c453ac  stp d13,d12,[sp, #0x10]
02c453b0  stp d11,d10,[sp, #0x20]
02c453b4  stp d9,d8,[sp, #0x30]
02c453b8  str x30,[sp, #0x40]
02c453bc  stp x20,x19,[sp, #0x50]
02c453c0  fmov s11,s3
02c453c4  fmov s9,s2
02c453c8  adrp x19,0x625b000
02c453cc  fmov s17,s0
02c453d0  ldp s8,s14,[sp, #0x64]
02c453d4  ldrb w8,[x19, #0x26f]
02c453d8  ldr s15,[sp, #0x60]
02c453dc  cbnz w8,0x02c4542c
02c453e0  adrp x0,0x5e58000
02c453e4  fmov s10,s1
02c453e8  fmov s12,s5
02c453ec  ldr x0,[x0, #0xbf8]
02c453f0  str s15,[sp, #0x4c]
02c453f4  fmov s15,s8
02c453f8  fmov s8,s14
02c453fc  fmov s14,s17
02c45400  fmov s13,s4
02c45404  bl 0x029f5a50
02c45408  fmov s4,s13
02c4540c  fmov s5,s12
02c45410  mov w8,#0x1
02c45414  fmov s17,s14
02c45418  fmov s14,s8
02c4541c  strb w8,[x19, #0x26f]
02c45420  fmov s8,s15
02c45424  fmov s1,s10
02c45428  ldr s15,[sp, #0x4c]
02c4542c  adrp x8,0x5e58000
02c45430  ldr x8,[x8, #0xbf8]
02c45434  ldr x8,[x8]
02c45438  ldr x8,[x8, #0xb8]
02c4543c  ldp s0,s6,[x8]
02c45440  ldr s7,[x8, #0x8]
02c45444  adrp x8,0x116b000
02c45448  fsub s7,s14,s7
02c4544c  fsub s0,s15,s0
02c45450  fsub s6,s8,s6
02c45454  fmul s0,s0,s0
02c45458  fmul s6,s6,s6
02c4545c  fadd s0,s0,s6
02c45460  fmul s6,s7,s7
02c45464  fadd s0,s6,s0
02c45468  ldr s6,[x8, #0xe94]
02c4546c  fcmp s0,s6
02c45470  b.mi 0x02c4561c
02c45474  adrp x19,0x625b000
02c45478  str s15,[sp, #0x4c]
02c4547c  ldrb w8,[x19, #0xae8]
02c45480  cbnz w8,0x02c454cc
02c45484  adrp x0,0x5e59000
02c45488  fmov s10,s1
02c4548c  fmov s15,s8
02c45490  ldr x0,[x0]
02c45494  fmov s8,s14
02c45498  fmov s14,s17
02c4549c  fmov s12,s5
02c454a0  fmov s13,s4
02c454a4  bl 0x029f5a50
02c454a8  fmov s4,s13
02c454ac  fmov s5,s12
02c454b0  mov w8,#0x1
02c454b4  fmov s17,s14
02c454b8  fmov s14,s8
02c454bc  strb w8,[x19, #0xae8]
02c454c0  fmov s8,s15
02c454c4  fmov s1,s10
02c454c8  ldr s15,[sp, #0x4c]
02c454cc  adrp x19,0x5e59000
02c454d0  fsub s13,s11,s17
02c454d4  fsub s12,s4,s1
02c454d8  ldr x19,[x19]
02c454dc  fsub s11,s5,s9
02c454e0  ldr x0,[x19]
02c454e4  ldr w8,[x0, #0xe4]
02c454e8  cbnz w8,0x02c45514
02c454ec  fmov s10,s1
02c454f0  fmov s15,s8
02c454f4  fmov s8,s14
02c454f8  fmov s14,s17
02c454fc  bl 0x029f5bd0
02c45500  fmov s17,s14
02c45504  fmov s14,s8
02c45508  fmov s8,s15
02c4550c  fmov s1,s10
02c45510  ldr s15,[sp, #0x4c]
02c45514  fmul s0,s13,s13
02c45518  fmul s3,s12,s12
02c4551c  adrp x8,0x116c000
02c45520  fadd s0,s0,s3
02c45524  fmul s3,s11,s11
02c45528  fadd s0,s3,s0
02c4552c  ldr s3,[x8, #0x268]
02c45530  fsqrt s0,s0
02c45534  fcmp s0,s3
02c45538  b.mi 0x02c4561c
02c4553c  fdiv s16,s13,s0
02c45540  fsub s4,s15,s17
02c45544  fsub s5,s8,s1
02c45548  fsub s6,s14,s9
02c4554c  adrp x20,0x625c000
02c45550  ldrb w8,[x20, #0xbe]
02c45554  fdiv s7,s12,s0
02c45558  fmul s4,s4,s16
02c4555c  fdiv s3,s11,s0
02c45560  fmul s5,s5,s7
02c45564  fadd s4,s4,s5
02c45568  fmul s5,s6,s3
02c4556c  fadd s4,s5,s4
02c45570  movi d5,#0x0
02c45574  fcmp s4,s0
02c45578  fcsel s0,s0,s4,gt
02c4557c  fcmp s4,#0.0
02c45580  fcsel s0,s5,s0,mi
02c45584  fmul s11,s16,s0
02c45588  fmul s12,s7,s0
02c4558c  fmul s13,s3,s0
02c45590  cbnz w8,0x02c455cc
02c45594  adrp x0,0x5e59000
02c45598  fmov s10,s1
02c4559c  fmov s15,s8
02c455a0  ldr x0,[x0]
02c455a4  fmov s8,s14
02c455a8  fmov s14,s17
02c455ac  bl 0x029f5a50
02c455b0  fmov s17,s14
02c455b4  fmov s14,s8
02c455b8  mov w8,#0x1
02c455bc  fmov s8,s15
02c455c0  fmov s1,s10
02c455c4  ldr s15,[sp, #0x4c]
02c455c8  strb w8,[x20, #0xbe]
02c455cc  ldr x0,[x19]
02c455d0  fadd s10,s17,s11
02c455d4  fadd s12,s1,s12
02c455d8  fadd s11,s9,s13
02c455dc  ldr s9,[sp, #0x70]
02c455e0  ldr w8,[x0, #0xe4]
02c455e4  cbnz w8,0x02c455ec
02c455e8  bl 0x029f5bd0
02c455ec  fsub s0,s12,s8
02c455f0  fsub s1,s10,s15
02c455f4  fsub s2,s11,s14
02c455f8  fmul s1,s1,s1
02c455fc  fmul s0,s0,s0
02c45600  fadd s0,s1,s0
02c45604  fmul s1,s2,s2
02c45608  fadd s0,s1,s0
02c4560c  fsqrt s0,s0
02c45610  fcmp s0,s9
02c45614  cset w0,mi
02c45618  b 0x02c45620
02c4561c  mov w0,wzr
02c45620  ldp x20,x19,[sp, #0x50]
02c45624  ldr x30,[sp, #0x40]
02c45628  ldp d9,d8,[sp, #0x30]
02c4562c  ldp d11,d10,[sp, #0x20]
02c45630  ldp d13,d12,[sp, #0x10]
02c45634  ldp d15,d14,[sp], #0x60
02c45638  ret
