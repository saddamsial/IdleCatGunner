02c69758  sub sp,sp,#0x90
02c6975c  str x30,[sp, #0x50]
02c69760  stp x24,x23,[sp, #0x60]
02c69764  stp x22,x21,[sp, #0x70]
02c69768  stp x20,x19,[sp, #0x80]
02c6976c  adrp x20,0x625c000
02c69770  mov x19,x0
02c69774  ldrb w8,[x20, #0x287]
02c69778  tbnz w8,#0x0,0x02c697f0
02c6977c  adrp x0,0x5e5d000
02c69780  ldr x0,[x0, #0x540]
02c69784  bl 0x029f5a50
02c69788  adrp x0,0x5e5b000
02c6978c  ldr x0,[x0, #0xe98]
02c69790  bl 0x029f5a50
02c69794  adrp x0,0x5e63000
02c69798  ldr x0,[x0, #0xa90]
02c6979c  bl 0x029f5a50
02c697a0  adrp x0,0x5e63000
02c697a4  ldr x0,[x0, #0xa98]
02c697a8  bl 0x029f5a50
02c697ac  adrp x0,0x5e63000
02c697b0  ldr x0,[x0, #0xaa0]
02c697b4  bl 0x029f5a50
02c697b8  adrp x0,0x5e63000
02c697bc  ldr x0,[x0, #0xaa8]
02c697c0  bl 0x029f5a50
02c697c4  adrp x0,0x5e5d000
02c697c8  ldr x0,[x0, #0xd40]
02c697cc  bl 0x029f5a50
02c697d0  adrp x0,0x5e63000
02c697d4  ldr x0,[x0, #0xab0]
02c697d8  bl 0x029f5a50
02c697dc  adrp x0,0x5e59000
02c697e0  ldr x0,[x0, #0x1c0]
02c697e4  bl 0x029f5a50
02c697e8  mov w8,#0x1
02c697ec  strb w8,[x20, #0x287]
02c697f0  mov x0,x19
02c697f4  mov x1,xzr
02c697f8  stp xzr,xzr,[sp, #0x30]
02c697fc  str xzr,[sp, #0x40]
02c69800  str wzr,[sp, #0x28]
02c69804  bl 0x057dc1c8
02c69808  cbz x0,0x02c69b30
02c6980c  mov x1,xzr
02c69810  bl 0x057e00b4
02c69814  tbz w0,#0x0,0x02c69b18
02c69818  adrp x23,0x5e5d000
02c6981c  adrp x24,0x5e59000
02c69820  ldr x23,[x23, #0xd40]
02c69824  ldr x24,[x24, #0x1c0]
02c69828  ldr x8,[x23]
02c6982c  ldr x0,[x24]
02c69830  ldr x8,[x8, #0xb8]
02c69834  ldr w9,[x0, #0xe4]
02c69838  ldr x20,[x8]
02c6983c  cbnz w9,0x02c69844
02c69840  bl 0x029f5bd0
02c69844  mov x0,x20
02c69848  mov x1,xzr
02c6984c  mov x2,xzr
02c69850  bl 0x057e14b4
02c69854  tbnz w0,#0x0,0x02c69870
02c69858  ldr x8,[x23]
02c6985c  ldr x8,[x8, #0xb8]
02c69860  ldr x8,[x8]
02c69864  cbz x8,0x02c69b30
02c69868  ldrb w8,[x8, #0xe8]
02c6986c  cbz w8,0x02c6988c
02c69870  mov x0,x19
02c69874  ldp x20,x19,[sp, #0x80]
02c69878  ldp x22,x21,[sp, #0x70]
02c6987c  ldr x30,[sp, #0x50]
02c69880  ldp x24,x23,[sp, #0x60]
02c69884  add sp,sp,#0x90
02c69888  b 0x02c6b0a4
02c6988c  adrp x8,0x5e63000
02c69890  ldr x8,[x8, #0xaa8]
02c69894  ldr x0,[x24]
02c69898  ldr x8,[x8]
02c6989c  ldr w9,[x0, #0xe4]
02c698a0  ldr x8,[x8, #0xb8]
02c698a4  ldr x22,[x8]
02c698a8  cbnz w9,0x02c698b0
02c698ac  bl 0x029f5bd0
02c698b0  mov x0,x22
02c698b4  mov x1,xzr
02c698b8  mov x2,xzr
02c698bc  bl 0x057dfa70
02c698c0  mov x21,xzr
02c698c4  mov x20,xzr
02c698c8  tbz w0,#0x0,0x02c699cc
02c698cc  cbz x22,0x02c69b30
02c698d0  ldr x0,[x22, #0x40]
02c698d4  cbz x0,0x02c69b30
02c698d8  adrp x8,0x5e63000
02c698dc  ldr x8,[x8, #0xab0]
02c698e0  ldr x1,[x8]
02c698e4  add x8,sp,#0x8
02c698e8  bl 0x0452d690
02c698ec  ldur q0,[sp, #0x8]
02c698f0  ldr x8,[sp, #0x18]
02c698f4  adrp x22,0x5e63000
02c698f8  mov x21,xzr
02c698fc  add x9,sp,#0x30
02c69900  str q0,[sp, #0x30]
02c69904  str x8,[sp, #0x40]
02c69908  ldr x22,[x22, #0xa98]
02c6990c  stp xzr,x9,[sp, #0x8]
02c69910  mov x20,x21
02c69914  ldr x1,[x22]
02c69918  add x0,sp,#0x30
02c6991c  bl 0x03fa4e10
02c69920  tbz w0,#0x0,0x02c699b4
02c69924  ldr x0,[x24]
02c69928  ldr x21,[sp, #0x40]
02c6992c  ldr w8,[x0, #0xe4]
02c69930  cbnz w8,0x02c69938
02c69934  bl 0x029f5bd0
02c69938  mov x0,x21
02c6993c  mov x1,xzr
02c69940  mov x2,xzr
02c69944  bl 0x057e14b4
02c69948  tbnz w0,#0x0,0x02c69914
02c6994c  cbz x21,0x02c69b34
02c69950  mov x0,x21
02c69954  mov x1,xzr
02c69958  bl 0x057dc1c8
02c6995c  cbz x0,0x02c69b38
02c69960  mov x1,xzr
02c69964  bl 0x057e0000
02c69968  tbz w0,#0x0,0x02c69914
02c6996c  ldr w8,[x21, #0x8c]
02c69970  add w8,w8,#0x4
02c69974  cmp w8,#0x8
02c69978  b.hi 0x02c69914
02c6997c  ldrb w8,[x21, #0x70]
02c69980  cbnz w8,0x02c69914
02c69984  ldrb w8,[x21, #0x78]
02c69988  cbnz w8,0x02c69914
02c6998c  ldr x0,[x24]
02c69990  ldr w8,[x0, #0xe4]
02c69994  cbnz w8,0x02c6999c
02c69998  bl 0x029f5bd0
02c6999c  mov x0,x20
02c699a0  mov x1,xzr
02c699a4  mov x2,xzr
02c699a8  bl 0x057e14b4
02c699ac  tbnz w0,#0x0,0x02c69910
02c699b0  b 0x02c699b8
02c699b4  mov x21,xzr
02c699b8  adrp x8,0x5e63000
02c699bc  add x0,sp,#0x30
02c699c0  ldr x8,[x8, #0xa90]
02c699c4  ldr x1,[x8]
02c699c8  bl 0x03fa4e0c
02c699cc  ldr x0,[x24]
02c699d0  ldr w8,[x0, #0xe4]
02c699d4  cbnz w8,0x02c699dc
02c699d8  bl 0x029f5bd0
02c699dc  mov x0,x20
02c699e0  mov x1,xzr
02c699e4  mov x2,xzr
02c699e8  bl 0x057e14b4
02c699ec  tbnz w0,#0x0,0x02c69a14
02c699f0  ldr x0,[x24]
02c699f4  ldr w8,[x0, #0xe4]
02c699f8  cbnz w8,0x02c69a00
02c699fc  bl 0x029f5bd0
02c69a00  mov x0,x21
02c69a04  mov x1,xzr
02c69a08  mov x2,xzr
02c69a0c  bl 0x057e14b4
02c69a10  tbz w0,#0x0,0x02c69a20
02c69a14  mov x0,x19
02c69a18  bl 0x02c6b0a4
02c69a1c  b 0x02c69b18
02c69a20  ldr x8,[x23]
02c69a24  ldr x8,[x8, #0xb8]
02c69a28  ldr x8,[x8]
02c69a2c  cbz x8,0x02c69b30
02c69a30  ldrb w8,[x8, #0xe9]
02c69a34  cbnz w8,0x02c69ab0
02c69a38  adrp x22,0x625b000
02c69a3c  ldrb w8,[x22, #0xa5c]
02c69a40  cbnz w8,0x02c69a58
02c69a44  adrp x0,0x5e5d000
02c69a48  ldr x0,[x0, #0xf00]
02c69a4c  bl 0x029f5a50
02c69a50  mov w8,#0x1
02c69a54  strb w8,[x22, #0xa5c]
02c69a58  adrp x8,0x5e5d000
02c69a5c  ldr x8,[x8, #0xf00]
02c69a60  ldr x8,[x8]
02c69a64  ldr x8,[x8, #0xb8]
02c69a68  ldrb w8,[x8]
02c69a6c  cbz w8,0x02c69ab0
02c69a70  ldr x8,[x23]
02c69a74  ldr x8,[x8, #0xb8]
02c69a78  ldr x8,[x8]
02c69a7c  cbz x8,0x02c69b30
02c69a80  adrp x9,0x5e5d000
02c69a84  mov w10,#0x1
02c69a88  ldr x9,[x9, #0x540]
02c69a8c  strb w10,[x8, #0xe9]
02c69a90  ldr x0,[x9]
02c69a94  ldr w8,[x0, #0xe4]
02c69a98  cbnz w8,0x02c69aa0
02c69a9c  bl 0x029f5bd0
02c69aa0  mov w0,#0x1
02c69aa4  mov w1,#0x1
02c69aa8  mov x2,xzr
02c69aac  bl 0x02b99200
02c69ab0  ldr x0,[x19, #0x20]
02c69ab4  cbz x0,0x02c69b30
02c69ab8  mov x1,xzr
02c69abc  bl 0x057dc1c8
02c69ac0  cbz x0,0x02c69b30
02c69ac4  mov w1,#0x1
02c69ac8  mov x2,xzr
02c69acc  bl 0x057dff3c
02c69ad0  cbz x20,0x02c69b30
02c69ad4  adrp x22,0x5e5b000
02c69ad8  mov x0,x20
02c69adc  ldr x22,[x22, #0xe98]
02c69ae0  ldr x19,[x19, #0x20]
02c69ae4  ldr x1,[x22]
02c69ae8  bl 0x02fe5f2c
02c69aec  cbz x21,0x02c69b30
02c69af0  ldr x1,[x22]
02c69af4  mov x20,x0
02c69af8  mov x0,x21
02c69afc  bl 0x02fe5f2c
02c69b00  cbz x19,0x02c69b30
02c69b04  mov x2,x0
02c69b08  mov x0,x19
02c69b0c  mov x1,x20
02c69b10  mov x3,xzr
02c69b14  bl 0x02cae70c
02c69b18  ldp x20,x19,[sp, #0x80]
02c69b1c  ldr x30,[sp, #0x50]
02c69b20  ldp x22,x21,[sp, #0x70]
02c69b24  ldp x24,x23,[sp, #0x60]
02c69b28  add sp,sp,#0x90
02c69b2c  ret
02c69b30  bl 0x029f5cfc
02c69b34  bl 0x029f5cfc
02c69b38  bl 0x029f5cfc
