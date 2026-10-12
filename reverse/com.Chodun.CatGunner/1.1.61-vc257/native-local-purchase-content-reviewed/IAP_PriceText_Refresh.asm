02ca5548  stp x30,x23,[sp, #-0x30]!
02ca554c  stp x22,x21,[sp, #0x10]
02ca5550  stp x20,x19,[sp, #0x20]
02ca5554  adrp x20,0x625c000
02ca5558  adrp x22,0x5e59000
02ca555c  mov x19,x0
02ca5560  ldrb w8,[x20, #0x4be]
02ca5564  ldr x22,[x22, #0x1c0]
02ca5568  tbnz w8,#0x0,0x02ca5598
02ca556c  adrp x0,0x5e64000
02ca5570  ldr x0,[x0, #0x190]
02ca5574  bl 0x029f5a50
02ca5578  adrp x0,0x5e59000
02ca557c  ldr x0,[x0, #0x1c0]
02ca5580  bl 0x029f5a50
02ca5584  adrp x0,0x5e5d000
02ca5588  ldr x0,[x0, #0x920]
02ca558c  bl 0x029f5a50
02ca5590  mov w8,#0x1
02ca5594  strb w8,[x20, #0x4be]
02ca5598  ldr x0,[x22]
02ca559c  mov x20,x19
02ca55a0  ldr x21,[x20, #0x38]!
02ca55a4  ldr w8,[x0, #0xe4]
02ca55a8  cbnz w8,0x02ca55b0
02ca55ac  bl 0x029f5bd0
02ca55b0  adrp x23,0x5e5d000
02ca55b4  mov x0,x21
02ca55b8  mov x1,xzr
02ca55bc  ldr x23,[x23, #0x920]
02ca55c0  mov x2,xzr
02ca55c4  bl 0x057e14b4
02ca55c8  tbz w0,#0x0,0x02ca55f0
02ca55cc  adrp x8,0x5e64000
02ca55d0  mov x0,x19
02ca55d4  ldr x8,[x8, #0x190]
02ca55d8  ldr x1,[x8]
02ca55dc  bl 0x02fe5f2c
02ca55e0  mov x1,x0
02ca55e4  str x0,[x19, #0x38]
02ca55e8  mov x0,x20
02ca55ec  bl 0x029f59f4
02ca55f0  ldr x0,[x23]
02ca55f4  ldr w8,[x0, #0xe4]
02ca55f8  cbnz w8,0x02ca5600
02ca55fc  bl 0x029f5bd0
02ca5600  adrp x20,0x625b000
02ca5604  ldrb w8,[x20, #0x960]
02ca5608  cbnz w8,0x02ca5620
02ca560c  adrp x0,0x5e5d000
02ca5610  ldr x0,[x0, #0x920]
02ca5614  bl 0x029f5a50
02ca5618  mov w8,#0x1
02ca561c  strb w8,[x20, #0x960]
02ca5620  ldr x0,[x23]
02ca5624  ldr w8,[x0, #0xe4]
02ca5628  cbnz w8,0x02ca5634
02ca562c  bl 0x029f5bd0
02ca5630  ldr x0,[x23]
02ca5634  ldr x8,[x22]
02ca5638  ldr x9,[x0, #0xb8]
02ca563c  ldr w10,[x8, #0xe4]
02ca5640  ldr x20,[x9]
02ca5644  cbnz w10,0x02ca5650
02ca5648  mov x0,x8
02ca564c  bl 0x029f5bd0
02ca5650  mov x0,x20
02ca5654  mov x1,xzr
02ca5658  mov x2,xzr
02ca565c  bl 0x057e14b4
02ca5660  tbnz w0,#0x0,0x02ca5698
02ca5664  mov x0,x19
02ca5668  mov x1,x20
02ca566c  bl 0x02ca5890
02ca5670  mov x1,x0
02ca5674  cbz x20,0x02ca56e4
02ca5678  mov x0,x20
02ca567c  mov x2,xzr
02ca5680  bl 0x02c9c29c
02ca5684  mov x20,x0
02ca5688  mov x0,x20
02ca568c  mov x1,xzr
02ca5690  bl 0x046c0604
02ca5694  tbz w0,#0x0,0x02ca56a8
02ca5698  ldp x20,x19,[sp, #0x20]
02ca569c  ldp x22,x21,[sp, #0x10]
02ca56a0  ldp x30,x23,[sp], #0x30
02ca56a4  ret
02ca56a8  ldp x2,x21,[x19, #0x30]
02ca56ac  mov x1,x20
02ca56b0  ldr x0,[x19, #0x28]
02ca56b4  mov x3,xzr
02ca56b8  bl 0x046c118c
02ca56bc  cbz x21,0x02ca5788
02ca56c0  ldr x8,[x21]
02ca56c4  mov x1,x0
02ca56c8  mov x0,x21
02ca56cc  ldp x20,x19,[sp, #0x20]
02ca56d0  ldp x22,x21,[sp, #0x10]
02ca56d4  ldr x2,[x8, #0x560]
02ca56d8  ldr x3,[x8, #0x558]
02ca56dc  ldp x30,x23,[sp], #0x30
02ca56e0  br x3
02ca56e4  bl 0x029f5cfc
02ca5788  bl 0x029f5cfc
