02ca300c  stp x30,x21,[sp, #-0x20]!
02ca3010  stp x20,x19,[sp, #0x10]
02ca3014  adrp x20,0x625c000
02ca3018  adrp x21,0x5e5e000
02ca301c  mov x19,x0
02ca3020  ldrb w8,[x20, #0x4a8]
02ca3024  ldr x21,[x21, #0x4b8]
02ca3028  tbnz w8,#0x0,0x02ca304c
02ca302c  adrp x0,0x5e59000
02ca3030  ldr x0,[x0, #0x1c0]
02ca3034  bl 0x029f5a50
02ca3038  adrp x0,0x5e5e000
02ca303c  ldr x0,[x0, #0x4b8]
02ca3040  bl 0x029f5a50
02ca3044  mov w8,#0x1
02ca3048  strb w8,[x20, #0x4a8]
02ca304c  ldr x0,[x21]
02ca3050  adrp x20,0x5e59000
02ca3054  ldr w8,[x0, #0xe4]
02ca3058  ldr x20,[x20, #0x1c0]
02ca305c  cbnz w8,0x02ca3068
02ca3060  bl 0x029f5bd0
02ca3064  ldr x0,[x21]
02ca3068  ldr x8,[x20]
02ca306c  ldr x9,[x0, #0xb8]
02ca3070  ldr w10,[x8, #0xe4]
02ca3074  ldr x20,[x9]
02ca3078  cbnz w10,0x02ca3084
02ca307c  mov x0,x8
02ca3080  bl 0x029f5bd0
02ca3084  mov x0,x20
02ca3088  mov x1,xzr
02ca308c  mov x2,xzr
02ca3090  bl 0x057e14b4
02ca3094  tbnz w0,#0x0,0x02ca3150
02ca3098  ldr x0,[x21]
02ca309c  ldr w8,[x0, #0xe4]
02ca30a0  cbnz w8,0x02ca30ac
02ca30a4  bl 0x029f5bd0
02ca30a8  ldr x0,[x21]
02ca30ac  ldr x8,[x0, #0xb8]
02ca30b0  ldr x0,[x8]
02ca30b4  cbz x0,0x02ca3174
02ca30b8  bl 0x02ca2b94
02ca30bc  tbz w0,#0x0,0x02ca3150
02ca30c0  ldr x0,[x21]
02ca30c4  ldr w8,[x0, #0xe4]
02ca30c8  cbnz w8,0x02ca30d4
02ca30cc  bl 0x029f5bd0
02ca30d0  ldr x0,[x21]
02ca30d4  ldr x8,[x0, #0xb8]
02ca30d8  ldr x0,[x8]
02ca30dc  cbz x0,0x02ca3174
02ca30e0  bl 0x02ca284c
02ca30e4  mov x0,x19
02ca30e8  mov x1,xzr
02ca30ec  bl 0x057dc1c8
02ca30f0  cbz x0,0x02ca3174
02ca30f4  mov w1,#0x1
02ca30f8  mov x2,xzr
02ca30fc  bl 0x057dff3c
02ca3100  mov x0,x19
02ca3104  bl 0x02ca3ffc
02ca3108  mov x20,x19
02ca310c  ldr x1,[x20, #0x30]!
02ca3110  cbz x1,0x02ca3120
02ca3114  mov x0,x19
02ca3118  mov x2,xzr
02ca311c  bl 0x057e237c
02ca3120  mov x0,x19
02ca3124  bl 0x02ca4114
02ca3128  mov x1,x0
02ca312c  mov x0,x19
02ca3130  mov x2,xzr
02ca3134  bl 0x057e2120
02ca3138  mov x1,x0
02ca313c  mov x0,x20
02ca3140  str x1,[x19, #0x30]
02ca3144  ldp x20,x19,[sp, #0x10]
02ca3148  ldp x30,x21,[sp], #0x20
02ca314c  b 0x029f59f4
02ca3150  mov x0,x19
02ca3154  mov x1,xzr
02ca3158  bl 0x057dc1c8
02ca315c  cbz x0,0x02ca3174
02ca3160  ldp x20,x19,[sp, #0x10]
02ca3164  mov w1,wzr
02ca3168  mov x2,xzr
02ca316c  ldp x30,x21,[sp], #0x20
02ca3170  b 0x057dff3c
02ca3174  bl 0x029f5cfc
