02c95830  str x30,[sp, #-0x30]!
02c95834  stp x22,x21,[sp, #0x10]
02c95838  stp x20,x19,[sp, #0x20]
02c9583c  adrp x20,0x625c000
02c95840  mov x19,x1
02c95844  ldrb w8,[x20, #0x42f]
02c95848  tbnz w8,#0x0,0x02c95878
02c9584c  adrp x0,0x5e5d000
02c95850  ldr x0,[x0, #0xd28]
02c95854  bl 0x029f5a50
02c95858  adrp x0,0x5e5d000
02c9585c  ldr x0,[x0, #0x920]
02c95860  bl 0x029f5a50
02c95864  adrp x0,0x5e5d000
02c95868  ldr x0,[x0, #0x3c0]
02c9586c  bl 0x029f5a50
02c95870  mov w8,#0x1
02c95874  strb w8,[x20, #0x42f]
02c95878  add x2,sp,#0xc
02c9587c  mov x1,x19
02c95880  str wzr,[sp, #0xc]
02c95884  bl 0x02c954d8
02c95888  mov w19,w0
02c9588c  tbz w0,#0x0,0x02c95a4c
02c95890  adrp x22,0x5e5d000
02c95894  adrp x20,0x5e5d000
02c95898  ldr x22,[x22, #0x920]
02c9589c  ldr x0,[x22]
02c958a0  ldr w8,[x0, #0xe4]
02c958a4  ldr x20,[x20, #0xd28]
02c958a8  ldr w21,[sp, #0xc]
02c958ac  cbnz w8,0x02c958b4
02c958b0  bl 0x029f5bd0
02c958b4  mov w0,w21
02c958b8  bl 0x02c9538c
02c958bc  ldr x8,[x20]
02c958c0  mov w20,w0
02c958c4  ldr w9,[x8, #0xe4]
02c958c8  cbnz w9,0x02c958d4
02c958cc  mov x0,x8
02c958d0  bl 0x029f5bd0
02c958d4  mov w0,#0x3
02c958d8  mov w1,w20
02c958dc  mov x2,xzr
02c958e0  bl 0x02c2cd94
02c958e4  cmp w21,#0x6
02c958e8  b.eq 0x02c9598c
02c958ec  cmp w21,#0x5
02c958f0  b.eq 0x02c95944
02c958f4  cmp w21,#0x4
02c958f8  b.ne 0x02c959d0
02c958fc  adrp x8,0x5e5d000
02c95900  ldr x8,[x8, #0x3c0]
02c95904  ldr x0,[x8]
02c95908  ldr w8,[x0, #0xe4]
02c9590c  cbnz w8,0x02c95914
02c95910  bl 0x029f5bd0
02c95914  mov x0,xzr
02c95918  bl 0x02c25b48
02c9591c  ldr x8,[x22]
02c95920  mov x21,x0
02c95924  ldr w9,[x8, #0xe4]
02c95928  cbnz w9,0x02c95938
02c9592c  mov x0,x8
02c95930  bl 0x029f5bd0
02c95934  ldr x8,[x22]
02c95938  ldr x8,[x8, #0xb8]
02c9593c  str x21,[x8, #0x10]
02c95940  b 0x02c959d0
02c95944  adrp x8,0x5e5d000
02c95948  ldr x8,[x8, #0x3c0]
02c9594c  ldr x0,[x8]
02c95950  ldr w8,[x0, #0xe4]
02c95954  cbnz w8,0x02c9595c
02c95958  bl 0x029f5bd0
02c9595c  mov x0,xzr
02c95960  bl 0x02c25b48
02c95964  ldr x8,[x22]
02c95968  mov x21,x0
02c9596c  ldr w9,[x8, #0xe4]
02c95970  cbnz w9,0x02c95980
02c95974  mov x0,x8
02c95978  bl 0x029f5bd0
02c9597c  ldr x8,[x22]
02c95980  ldr x8,[x8, #0xb8]
02c95984  str x21,[x8, #0x18]
02c95988  b 0x02c959d0
02c9598c  adrp x8,0x5e5d000
02c95990  ldr x8,[x8, #0x3c0]
02c95994  ldr x0,[x8]
02c95998  ldr w8,[x0, #0xe4]
02c9599c  cbnz w8,0x02c959a4
02c959a0  bl 0x029f5bd0
02c959a4  mov x0,xzr
02c959a8  bl 0x02c25b48
02c959ac  ldr x8,[x22]
02c959b0  mov x21,x0
02c959b4  ldr w9,[x8, #0xe4]
02c959b8  cbnz w9,0x02c959c8
02c959bc  mov x0,x8
02c959c0  bl 0x029f5bd0
02c959c4  ldr x8,[x22]
02c959c8  ldr x8,[x8, #0xb8]
02c959cc  str x21,[x8, #0x20]
02c959d0  mov x0,xzr
02c959d4  bl 0x02c0faf8
02c959d8  mov x0,xzr
02c959dc  bl 0x02be02c8
02c959e0  adrp x8,0x5e58000
02c959e4  mov x21,x0
02c959e8  add x1,sp,#0x8
02c959ec  ldr x8,[x8, #0xa10]
02c959f0  str w20,[sp, #0x8]
02c959f4  ldr x0,[x8, #0x48]
02c959f8  bl 0x029f5bd8
02c959fc  mov x1,x0
02c95a00  mov x0,x21
02c95a04  mov x2,xzr
02c95a08  bl 0x046b6c0c
02c95a0c  ldr x8,[x22]
02c95a10  mov x20,x0
02c95a14  ldr w9,[x8, #0xe4]
02c95a18  cbnz w9,0x02c95a24
02c95a1c  mov x0,x8
02c95a20  bl 0x029f5bd0
02c95a24  mov x0,x20
02c95a28  bl 0x02c92ec4
02c95a2c  ldr x8,[x22]
02c95a30  ldr x8,[x8, #0xb8]
02c95a34  ldr x8,[x8, #0x58]
02c95a38  cbz x8,0x02c95a4c
02c95a3c  ldr x9,[x8, #0x18]
02c95a40  ldr x0,[x8, #0x40]
02c95a44  ldr x1,[x8, #0x28]
02c95a48  blr x9
02c95a4c  and w0,w19,#0x1
02c95a50  ldp x20,x19,[sp, #0x20]
02c95a54  ldp x22,x21,[sp, #0x10]
02c95a58  ldr x30,[sp], #0x30
02c95a5c  ret
