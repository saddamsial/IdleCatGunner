02c3773c  stp x30,x21,[sp, #-0x20]!
02c37740  stp x20,x19,[sp, #0x10]
02c37744  adrp x20,0x625c000
02c37748  adrp x19,0x5e5d000
02c3774c  ldrb w8,[x20, #0x78]
02c37750  ldr x19,[x19, #0x338]
02c37754  tbnz w8,#0x0,0x02c37790
02c37758  adrp x0,0x5e5d000
02c3775c  ldr x0,[x0, #0x5b0]
02c37760  bl 0x029f5a50
02c37764  adrp x0,0x5e5d000
02c37768  ldr x0,[x0, #0x338]
02c3776c  bl 0x029f5a50
02c37770  adrp x0,0x5e59000
02c37774  ldr x0,[x0, #0x1c0]
02c37778  bl 0x029f5a50
02c3777c  adrp x0,0x5e5d000
02c37780  ldr x0,[x0, #0x4e8]
02c37784  bl 0x029f5a50
02c37788  mov w8,#0x1
02c3778c  strb w8,[x20, #0x78]
02c37790  ldr x0,[x19]
02c37794  adrp x21,0x5e5d000
02c37798  adrp x20,0x5e59000
02c3779c  ldr x21,[x21, #0x5b0]
02c377a0  ldr w8,[x0, #0xe4]
02c377a4  ldr x20,[x20, #0x1c0]
02c377a8  cbnz w8,0x02c377b0
02c377ac  bl 0x029f5bd0
02c377b0  mov x0,xzr
02c377b4  bl 0x02b7dcfc
02c377b8  ldr x8,[x21]
02c377bc  ldr x0,[x20]
02c377c0  ldr x8,[x8, #0xb8]
02c377c4  ldr w9,[x0, #0xe4]
02c377c8  ldr x19,[x8, #0x8]
02c377cc  cbnz w9,0x02c377d4
02c377d0  bl 0x029f5bd0
02c377d4  mov x0,x19
02c377d8  mov x1,xzr
02c377dc  mov x2,xzr
02c377e0  bl 0x057dfa70
02c377e4  tbz w0,#0x0,0x02c37800
02c377e8  ldr x8,[x21]
02c377ec  ldr x8,[x8, #0xb8]
02c377f0  ldr x0,[x8, #0x8]
02c377f4  cbz x0,0x02c37888
02c377f8  mov x1,xzr
02c377fc  bl 0x02c43744
02c37800  adrp x21,0x5e5d000
02c37804  ldr x21,[x21, #0x4e8]
02c37808  ldr x0,[x21]
02c3780c  ldr w8,[x0, #0xe4]
02c37810  cbnz w8,0x02c3781c
02c37814  bl 0x029f5bd0
02c37818  ldr x0,[x21]
02c3781c  ldr x8,[x20]
02c37820  ldr x9,[x0, #0xb8]
02c37824  ldr w10,[x8, #0xe4]
02c37828  ldr x19,[x9]
02c3782c  cbnz w10,0x02c37838
02c37830  mov x0,x8
02c37834  bl 0x029f5bd0
02c37838  mov x0,x19
02c3783c  mov x1,xzr
02c37840  mov x2,xzr
02c37844  bl 0x057dfa70
02c37848  tbz w0,#0x0,0x02c3787c
02c3784c  ldr x0,[x21]
02c37850  ldr w8,[x0, #0xe4]
02c37854  cbnz w8,0x02c37860
02c37858  bl 0x029f5bd0
02c3785c  ldr x0,[x21]
02c37860  ldr x8,[x0, #0xb8]
02c37864  ldr x0,[x8]
02c37868  cbz x0,0x02c37888
02c3786c  ldp x20,x19,[sp, #0x10]
02c37870  mov x1,xzr
02c37874  ldp x30,x21,[sp], #0x20
02c37878  b 0x02cb2acc
02c3787c  ldp x20,x19,[sp, #0x10]
02c37880  ldp x30,x21,[sp], #0x20
02c37884  ret
02c37888  bl 0x029f5cfc
