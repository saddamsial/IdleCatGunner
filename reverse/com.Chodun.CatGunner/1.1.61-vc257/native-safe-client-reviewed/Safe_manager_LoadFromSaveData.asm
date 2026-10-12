02c6c694  str x30,[sp, #-0x30]!
02c6c698  stp x22,x21,[sp, #0x10]
02c6c69c  stp x20,x19,[sp, #0x20]
02c6c6a0  adrp x21,0x625c000
02c6c6a4  mov x20,x1
02c6c6a8  mov x19,x0
02c6c6ac  ldrb w8,[x21, #0x299]
02c6c6b0  tbnz w8,#0x0,0x02c6c6d4
02c6c6b4  adrp x0,0x5e5d000
02c6c6b8  ldr x0,[x0, #0xd40]
02c6c6bc  bl 0x029f5a50
02c6c6c0  adrp x0,0x5e59000
02c6c6c4  ldr x0,[x0, #0x1c0]
02c6c6c8  bl 0x029f5a50
02c6c6cc  mov w8,#0x1
02c6c6d0  strb w8,[x21, #0x299]
02c6c6d4  mov x0,x19
02c6c6d8  bl 0x02c6bc30
02c6c6dc  str wzr,[x19, #0x28]
02c6c6e0  cbz x20,0x02c6c7d8
02c6c6e4  ldr w8,[x20, #0x198]
02c6c6e8  mov w9,#0xa
02c6c6ec  cmp w8,#0xa
02c6c6f0  csel w8,w8,w9,lt
02c6c6f4  ldr x9,[x20, #0x190]
02c6c6f8  bic w8,w8,w8, ASR #0x1f
02c6c6fc  str w8,[x19, #0x28]
02c6c700  cbz x9,0x02c6c7d8
02c6c704  adrp x22,0x5e5d000
02c6c708  adrp x8,0x5e59000
02c6c70c  ldr x22,[x22, #0xd40]
02c6c710  ldr x8,[x8, #0x1c0]
02c6c714  ldr x9,[x22]
02c6c718  ldr x0,[x8]
02c6c71c  ldr x8,[x9, #0xb8]
02c6c720  ldr w9,[x0, #0xe4]
02c6c724  ldr x21,[x8]
02c6c728  cbnz w9,0x02c6c730
02c6c72c  bl 0x029f5bd0
02c6c730  mov x0,x21
02c6c734  mov x1,xzr
02c6c738  mov x2,xzr
02c6c73c  bl 0x057dfa70
02c6c740  tbz w0,#0x0,0x02c6c764
02c6c744  ldr x8,[x22]
02c6c748  ldr x8,[x8, #0xb8]
02c6c74c  ldr x8,[x8]
02c6c750  cbz x8,0x02c6c7f0
02c6c754  ldr x8,[x8, #0x48]
02c6c758  cbz x8,0x02c6c764
02c6c75c  ldr w8,[x8, #0x18]
02c6c760  b 0x02c6c768
02c6c764  mov w8,#0x7fffffff
02c6c768  ldr x12,[x20, #0x190]
02c6c76c  cbz x12,0x02c6c7f0
02c6c770  ldr x11,[x12, #0x18]
02c6c774  cmp w11,#0x1
02c6c778  b.lt 0x02c6c7d8
02c6c77c  cmp w11,#0x10
02c6c780  mov w13,#0x10
02c6c784  mov x9,xzr
02c6c788  and x10,x11,#0xffffffff
02c6c78c  csel w11,w11,w13,lt
02c6c790  add x12,x12,#0x20
02c6c794  mov w13,#0xffffffff
02c6c798  cmp x10,x9
02c6c79c  b.eq 0x02c6c7ec
02c6c7a0  ldr w14,[x12, x9, LSL #0x2]
02c6c7a4  ldr x15,[x19, #0x20]
02c6c7a8  cmp w14,w8
02c6c7ac  ccmp w14,w13,#0x4,lt
02c6c7b0  csinv w14,w14,wzr,gt
02c6c7b4  cbz x15,0x02c6c7f0
02c6c7b8  ldr w16,[x15, #0x18]
02c6c7bc  cmp x9,x16
02c6c7c0  b.cs 0x02c6c7ec
02c6c7c4  add x15,x15,x9, LSL #0x2
02c6c7c8  add x9,x9,#0x1
02c6c7cc  cmp x11,x9
02c6c7d0  str w14,[x15, #0x20]
02c6c7d4  b.ne 0x02c6c798
02c6c7d8  mov x0,x19
02c6c7dc  ldp x20,x19,[sp, #0x20]
02c6c7e0  ldp x22,x21,[sp, #0x10]
02c6c7e4  ldr x30,[sp], #0x30
02c6c7e8  b 0x02c69d0c
02c6c7ec  bl 0x029f5d04
02c6c7f0  bl 0x029f5cfc
