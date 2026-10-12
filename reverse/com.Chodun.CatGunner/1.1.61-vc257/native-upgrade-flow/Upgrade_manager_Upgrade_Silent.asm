02cb3030  sub sp,sp,#0x90
02cb3034  stp x30,x23,[sp, #0x60]
02cb3038  stp x22,x21,[sp, #0x70]
02cb303c  stp x20,x19,[sp, #0x80]
02cb3040  adrp x21,0x625c000
02cb3044  mov w19,w1
02cb3048  mov x20,x0
02cb304c  ldrb w8,[x21, #0x562]
02cb3050  tbnz w8,#0x0,0x02cb3068
02cb3054  adrp x0,0x5e5d000
02cb3058  ldr x0,[x0, #0x338]
02cb305c  bl 0x029f5a50
02cb3060  mov w8,#0x1
02cb3064  strb w8,[x21, #0x562]
02cb3068  movi v0.2D,#0x0
02cb306c  ldr x8,[x20, #0x20]
02cb3070  stp q0,q0,[sp, #0x40]
02cb3074  cbz x8,0x02cb31bc
02cb3078  ldr w9,[x8, #0x18]
02cb307c  cmp w9,w19
02cb3080  b.ls 0x02cb31c0
02cb3084  sxtw x21,w19
02cb3088  add x8,x8,x21, LSL #0x3
02cb308c  ldr x8,[x8, #0x20]
02cb3090  cbz x8,0x02cb31bc
02cb3094  ldp x0,x1,[x8, #0x18]
02cb3098  mov x2,xzr
02cb309c  bl 0x02b1e644
02cb30a0  mov w8,#0x270f
02cb30a4  cmp w0,w8
02cb30a8  b.gt 0x02cb3130
02cb30ac  ldr x8,[x20, #0x20]
02cb30b0  cbz x8,0x02cb31bc
02cb30b4  ldr w9,[x8, #0x18]
02cb30b8  cmp w9,w19
02cb30bc  b.ls 0x02cb31c0
02cb30c0  add x8,x8,x21, LSL #0x3
02cb30c4  ldr x8,[x8, #0x20]
02cb30c8  cbz x8,0x02cb31bc
02cb30cc  ldp x0,x1,[x8, #0x18]
02cb30d0  mov x2,xzr
02cb30d4  ldr x23,[x20, #0x30]
02cb30d8  bl 0x02b1e644
02cb30dc  cbz x23,0x02cb31bc
02cb30e0  ldr w8,[x23, #0x18]
02cb30e4  cmp w0,w8
02cb30e8  b.cs 0x02cb31c0
02cb30ec  sxtw x8,w0
02cb30f0  adrp x22,0x5e5d000
02cb30f4  ldr x22,[x22, #0x338]
02cb30f8  add x8,x23,x8, LSL #0x5
02cb30fc  ldr x0,[x22]
02cb3100  ldp q1,q0,[x8, #0x20]
02cb3104  ldr w8,[x0, #0xe4]
02cb3108  stp q1,q0,[sp, #0x40]
02cb310c  cbnz w8,0x02cb3118
02cb3110  bl 0x029f5bd0
02cb3114  ldr x0,[x22]
02cb3118  ldr x8,[x0, #0xb8]
02cb311c  add x1,sp,#0x40
02cb3120  mov x2,xzr
02cb3124  add x0,x8,#0x30
02cb3128  bl 0x046595c4
02cb312c  tbz w0,#0x0,0x02cb3138
02cb3130  mov w0,wzr
02cb3134  b 0x02cb31a8
02cb3138  ldr x0,[x22]
02cb313c  ldp q0,q1,[sp, #0x40]
02cb3140  ldr w8,[x0, #0xe4]
02cb3144  stp q0,q1,[sp, #0x20]
02cb3148  cbnz w8,0x02cb3150
02cb314c  bl 0x029f5bd0
02cb3150  ldp q0,q1,[sp, #0x20]
02cb3154  mov x0,sp
02cb3158  mov x1,xzr
02cb315c  stp q0,q1,[sp]
02cb3160  bl 0x02b7f11c
02cb3164  ldr x8,[x20, #0x20]
02cb3168  cbz x8,0x02cb31bc
02cb316c  ldr w9,[x8, #0x18]
02cb3170  cmp w9,w19
02cb3174  b.ls 0x02cb31c0
02cb3178  add x8,x8,x21, LSL #0x3
02cb317c  ldr x19,[x8, #0x20]
02cb3180  cbz x19,0x02cb31bc
02cb3184  ldp x0,x1,[x19, #0x18]
02cb3188  mov x2,xzr
02cb318c  bl 0x02b1e644
02cb3190  add w0,w0,#0x1
02cb3194  mov x1,xzr
02cb3198  bl 0x02b1e5c8
02cb319c  mov x8,x0
02cb31a0  mov w0,#0x1
02cb31a4  stp x8,x1,[x19, #0x18]
02cb31a8  ldp x20,x19,[sp, #0x80]
02cb31ac  ldp x22,x21,[sp, #0x70]
02cb31b0  ldp x30,x23,[sp, #0x60]
02cb31b4  add sp,sp,#0x90
02cb31b8  ret
02cb31bc  bl 0x029f5cfc
02cb31c0  bl 0x029f5d04
