02c762a4  sub sp,sp,#0xd0
02c762a8  str x30,[sp, #0x80]
02c762ac  stp x26,x25,[sp, #0x90]
02c762b0  stp x24,x23,[sp, #0xa0]
02c762b4  stp x22,x21,[sp, #0xb0]
02c762b8  stp x20,x19,[sp, #0xc0]
02c762bc  adrp x20,0x625c000
02c762c0  adrp x25,0x5e5d000
02c762c4  mov x19,x0
02c762c8  ldrb w8,[x20, #0x2fd]
02c762cc  ldr x25,[x25, #0xd40]
02c762d0  tbnz w8,#0x0,0x02c7630c
02c762d4  adrp x0,0x5e5d000
02c762d8  ldr x0,[x0, #0xd40]
02c762dc  bl 0x029f5a50
02c762e0  adrp x0,0x5e59000
02c762e4  ldr x0,[x0, #0x1c0]
02c762e8  bl 0x029f5a50
02c762ec  adrp x0,0x5e5e000
02c762f0  ldr x0,[x0, #0x58]
02c762f4  bl 0x029f5a50
02c762f8  adrp x0,0x5e5e000
02c762fc  ldr x0,[x0, #0x6d0]
02c76300  bl 0x029f5a50
02c76304  mov w8,#0x1
02c76308  strb w8,[x20, #0x2fd]
02c7630c  movi v0.2D,#0x0
02c76310  ldr x8,[x25]
02c76314  str wzr,[sp, #0x8c]
02c76318  ldr x8,[x8, #0xb8]
02c7631c  stp q0,q0,[sp, #0x60]
02c76320  ldr x8,[x8]
02c76324  cbz x8,0x02c7648c
02c76328  ldr x8,[x8, #0x28]
02c7632c  cbz x8,0x02c7648c
02c76330  ldrsw x9,[x19, #0x20]
02c76334  ldr w10,[x8, #0x18]
02c76338  cmp w9,w10
02c7633c  b.cs 0x02c767a8
02c76340  ldr x0,[x19, #0x40]
02c76344  cbz x0,0x02c7648c
02c76348  add x8,x8,x9, LSL #0x2
02c7634c  mov x2,xzr
02c76350  ldrsw x20,[x8, #0x20]
02c76354  cmn w20,#0x1
02c76358  cset w1,ne
02c7635c  bl 0x057dff3c
02c76360  ldr x0,[x19, #0x48]
02c76364  cbz x0,0x02c7648c
02c76368  adrp x24,0x5e5e000
02c7636c  cmn w20,#0x1
02c76370  mov x2,xzr
02c76374  ldr x24,[x24, #0x58]
02c76378  cset w1,eq
02c7637c  bl 0x057dff3c
02c76380  cmn w20,#0x1
02c76384  b.eq 0x02c76568
02c76388  ldr x8,[x25]
02c7638c  ldr x8,[x8, #0xb8]
02c76390  ldr x9,[x8]
02c76394  cbz x9,0x02c7648c
02c76398  ldr x8,[x9, #0x20]
02c7639c  cbz x8,0x02c7648c
02c763a0  ldr w10,[x8, #0x18]
02c763a4  cmp w20,w10
02c763a8  b.cs 0x02c767a8
02c763ac  ldr x9,[x9, #0x48]
02c763b0  cbz x9,0x02c7648c
02c763b4  ldr w10,[x9, #0x18]
02c763b8  cmp w20,w10
02c763bc  b.cs 0x02c767a8
02c763c0  ldr x0,[x19, #0x28]
02c763c4  cbz x0,0x02c7648c
02c763c8  add x9,x9,x20, LSL #0x3
02c763cc  add x8,x8,x20, LSL #0x3
02c763d0  ldr x23,[x19, #0x30]
02c763d4  mov x2,xzr
02c763d8  ldr x22,[x9, #0x20]
02c763dc  ldr x26,[x8, #0x20]
02c763e0  mov x1,x22
02c763e4  bl 0x058d34cc
02c763e8  cbz x23,0x02c7648c
02c763ec  mov w8,#0x6667
02c763f0  mov x0,x23
02c763f4  mov x1,x22
02c763f8  movk w8,#0x6666, LSL #16
02c763fc  mov x2,xzr
02c76400  smull x8,w20,w8
02c76404  lsr x9,x8,#0x3f
02c76408  asr x8,x8,#0x21
02c7640c  add w21,w8,w9
02c76410  bl 0x058d34cc
02c76414  ldr x22,[x19, #0x38]
02c76418  mov w0,w21
02c7641c  mov x1,xzr
02c76420  bl 0x02c5b234
02c76424  cbz x22,0x02c7648c
02c76428  ldr x8,[x22]
02c7642c  mov x0,x22
02c76430  ldr x9,[x8, #0x2a8]
02c76434  ldr x1,[x8, #0x2b0]
02c76438  blr x9
02c7643c  ldr x8,[x19, #0x58]
02c76440  cbz x8,0x02c7648c
02c76444  adrp x23,0x5e5e000
02c76448  mov x22,xzr
02c7644c  ldr x23,[x23, #0x6d0]
02c76450  ldr w9,[x8, #0x18]
02c76454  cmp w22,w9
02c76458  b.ge 0x02c76490
02c7645c  cmp w22,w9
02c76460  b.cs 0x02c767a8
02c76464  add x8,x8,x22, LSL #0x3
02c76468  ldr x0,[x8, #0x20]
02c7646c  cbz x0,0x02c7648c
02c76470  cmp w21,w22
02c76474  mov x2,xzr
02c76478  cset w1,eq
02c7647c  bl 0x057dff3c
02c76480  ldr x8,[x19, #0x58]
02c76484  add x22,x22,#0x1
02c76488  cbnz x8,0x02c76450
02c7648c  bl 0x029f5cfc
02c76490  cbz x26,0x02c7648c
02c76494  ldr x0,[x24]
02c76498  ldp q0,q1,[x26, #0x20]
02c7649c  ldr x21,[x19, #0x60]
02c764a0  ldr w22,[x19, #0x20]
02c764a4  ldr w8,[x0, #0xe4]
02c764a8  stp q0,q1,[sp, #0x40]
02c764ac  cbnz w8,0x02c764b4
02c764b0  bl 0x029f5bd0
02c764b4  ldp q0,q1,[sp, #0x40]
02c764b8  add x8,sp,#0x20
02c764bc  mov x0,sp
02c764c0  mov w1,w22
02c764c4  stp q0,q1,[sp]
02c764c8  bl 0x02c6db38
02c764cc  ldp q0,q1,[sp, #0x20]
02c764d0  add x0,sp,#0x60
02c764d4  mov x1,xzr
02c764d8  stp q0,q1,[sp, #0x60]
02c764dc  bl 0x0465bddc
02c764e0  cbz x21,0x02c7648c
02c764e4  ldr x8,[x21]
02c764e8  mov x1,x0
02c764ec  mov x0,x21
02c764f0  ldr x9,[x8, #0x558]
02c764f4  ldr x2,[x8, #0x560]
02c764f8  blr x9
02c764fc  ldr x21,[x19, #0x68]
02c76500  add x0,x26,#0x40
02c76504  mov x1,xzr
02c76508  bl 0x04863c00
02c7650c  ldr x8,[x23]
02c76510  mov x1,x0
02c76514  mov x2,xzr
02c76518  mov x0,x8
02c7651c  bl 0x046b6c0c
02c76520  cbz x21,0x02c7648c
02c76524  ldr x8,[x21]
02c76528  mov x1,x0
02c7652c  mov x0,x21
02c76530  ldr x9,[x8, #0x558]
02c76534  ldr x2,[x8, #0x560]
02c76538  blr x9
02c7653c  ldr x21,[x19, #0x70]
02c76540  mov w0,w20
02c76544  mov x1,xzr
02c76548  bl 0x02c5b2ac
02c7654c  cbz x21,0x02c7648c
02c76550  ldr x8,[x21]
02c76554  mov x1,x0
02c76558  mov x0,x21
02c7655c  ldr x9,[x8, #0x558]
02c76560  ldr x2,[x8, #0x560]
02c76564  blr x9
02c76568  adrp x22,0x5e59000
02c7656c  ldr x22,[x22, #0x1c0]
02c76570  ldr x21,[x19, #0x78]
02c76574  ldr x0,[x22]
02c76578  ldr w8,[x0, #0xe4]
02c7657c  cbnz w8,0x02c76584
02c76580  bl 0x029f5bd0
02c76584  mov x0,x21
02c76588  mov x1,xzr
02c7658c  mov x2,xzr
02c76590  bl 0x057dfa70
02c76594  tbz w0,#0x0,0x02c765e0
02c76598  ldr x21,[x19, #0x78]
02c7659c  cmn w20,#0x1
02c765a0  b.eq 0x02c765c8
02c765a4  ldr x8,[x25]
02c765a8  ldr x8,[x8, #0xb8]
02c765ac  ldr x0,[x8]
02c765b0  cbz x0,0x02c7648c
02c765b4  ldr w1,[x19, #0x20]
02c765b8  mov x2,xzr
02c765bc  bl 0x02c67f8c
02c765c0  cbnz x21,0x02c765d0
02c765c4  b 0x02c7648c
02c765c8  mov w0,wzr
02c765cc  cbz x21,0x02c7648c
02c765d0  and w1,w0,#0x1
02c765d4  mov x0,x21
02c765d8  mov x2,xzr
02c765dc  bl 0x057dff3c
02c765e0  bl 0x02c77b94
02c765e4  ldr x8,[x19, #0x50]
02c765e8  cbz x8,0x02c7648c
02c765ec  cmn w20,#0x1
02c765f0  mov x2,xzr
02c765f4  ccmp w0,#0x1,#0x4,ne
02c765f8  mov x0,x8
02c765fc  cset w1,gt
02c76600  bl 0x057dff3c
02c76604  ldr x0,[x24]
02c76608  ldr w8,[x0, #0xe4]
02c7660c  cbnz w8,0x02c76618
02c76610  bl 0x029f5bd0
02c76614  ldr x0,[x24]
02c76618  ldr x8,[x22]
02c7661c  ldr x9,[x0, #0xb8]
02c76620  ldr w10,[x8, #0xe4]
02c76624  ldr x20,[x9]
02c76628  cbnz w10,0x02c76634
02c7662c  mov x0,x8
02c76630  bl 0x029f5bd0
02c76634  mov x0,x20
02c76638  mov x1,xzr
02c7663c  mov x2,xzr
02c76640  bl 0x057dfa70
02c76644  tbz w0,#0x0,0x02c766d8
02c76648  ldr x0,[x24]
02c7664c  ldr w8,[x0, #0xe4]
02c76650  cbnz w8,0x02c7665c
02c76654  bl 0x029f5bd0
02c76658  ldr x0,[x24]
02c7665c  ldr x8,[x0, #0xb8]
02c76660  ldr x8,[x8]
02c76664  cbz x8,0x02c7648c
02c76668  bl 0x02c6d80c
02c7666c  ldr x8,[x19, #0x80]
02c76670  cbz x8,0x02c7648c
02c76674  mov w20,w0
02c76678  and w1,w0,#0x1
02c7667c  mov x0,x8
02c76680  mov x2,xzr
02c76684  bl 0x057dff3c
02c76688  tbz w20,#0x0,0x02c766ec
02c7668c  ldr x0,[x24]
02c76690  ldr w8,[x0, #0xe4]
02c76694  cbnz w8,0x02c766a0
02c76698  bl 0x029f5bd0
02c7669c  ldr x0,[x24]
02c766a0  ldr x8,[x0, #0xb8]
02c766a4  ldr x10,[x8]
02c766a8  cbz x10,0x02c7648c
02c766ac  ldr w9,[x19, #0x20]
02c766b0  mov w8,wzr
02c766b4  tbnz w9,#0x1f,0x02c76710
02c766b8  ldr x10,[x10, #0x30]
02c766bc  cbz x10,0x02c76710
02c766c0  ldr w8,[x10, #0x18]
02c766c4  cmp w9,w8
02c766c8  b.ge 0x02c7670c
02c766cc  add x8,x10,x9, LSL #0x2
02c766d0  ldr w8,[x8, #0x20]
02c766d4  b 0x02c76710
02c766d8  ldr x0,[x19, #0x80]
02c766dc  cbz x0,0x02c7648c
02c766e0  mov w1,wzr
02c766e4  mov x2,xzr
02c766e8  bl 0x057dff3c
02c766ec  ldr x0,[x19, #0x60]
02c766f0  cbz x0,0x02c7648c
02c766f4  ldr x8,[x0]
02c766f8  fmov s0,0x3f800000
02c766fc  fmov s1,0x3f800000
02c76700  fmov s2,0x3f800000
02c76704  fmov s3,0x3f800000
02c76708  b 0x02c76780
02c7670c  mov w8,wzr
02c76710  ldr x20,[x19, #0x88]
02c76714  add x0,sp,#0x8c
02c76718  mov x1,xzr
02c7671c  str w8,[sp, #0x8c]
02c76720  bl 0x0484e6a4
02c76724  cbz x20,0x02c7648c
02c76728  ldr x8,[x20]
02c7672c  mov x1,x0
02c76730  mov x0,x20
02c76734  ldr x9,[x8, #0x558]
02c76738  ldr x2,[x8, #0x560]
02c7673c  blr x9
02c76740  ldr w8,[sp, #0x8c]
02c76744  ldr x0,[x19, #0x60]
02c76748  cmp w8,#0x1
02c7674c  b.lt 0x02c76768
02c76750  ldr s0,[x19, #0x108]
02c76754  ldr s1,[x19, #0x10c]
02c76758  ldr s2,[x19, #0x110]
02c7675c  ldr s3,[x19, #0x114]
02c76760  cbnz x0,0x02c7677c
02c76764  b 0x02c7648c
02c76768  fmov s3,0x3f800000
02c7676c  fmov s2,0x3f800000
02c76770  fmov s1,0x3f800000
02c76774  fmov s0,0x3f800000
02c76778  cbz x0,0x02c7648c
02c7677c  ldr x8,[x0]
02c76780  ldr x9,[x8, #0x2a8]
02c76784  ldr x1,[x8, #0x2b0]
02c76788  blr x9
02c7678c  ldp x20,x19,[sp, #0xc0]
02c76790  ldr x30,[sp, #0x80]
02c76794  ldp x22,x21,[sp, #0xb0]
02c76798  ldp x24,x23,[sp, #0xa0]
02c7679c  ldp x26,x25,[sp, #0x90]
02c767a0  add sp,sp,#0xd0
02c767a4  ret
02c767a8  bl 0x029f5d04
