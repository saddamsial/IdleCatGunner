02ba40e4  sub sp,sp,#0x70
02ba40e8  stp x29,x30,[sp, #0x10]
02ba40ec  stp x28,x27,[sp, #0x20]
02ba40f0  stp x26,x25,[sp, #0x30]
02ba40f4  stp x24,x23,[sp, #0x40]
02ba40f8  stp x22,x21,[sp, #0x50]
02ba40fc  stp x20,x19,[sp, #0x60]
02ba4100  adrp x20,0x625b000
02ba4104  mov x19,x0
02ba4108  ldrb w8,[x20, #0xa3d]
02ba410c  tbnz w8,#0x0,0x02ba4124
02ba4110  adrp x0,0x5e5d000
02ba4114  ldr x0,[x0, #0xd50]
02ba4118  bl 0x029f5a50
02ba411c  mov w8,#0x1
02ba4120  strb w8,[x20, #0xa3d]
02ba4124  ldr w28,[x19, #0x60]
02ba4128  cmp w28,#0x1
02ba412c  b.lt 0x02ba4144
02ba4130  ldrb w8,[x19, #0x64]
02ba4134  cmp w8,#0x0
02ba4138  cset w20,ne
02ba413c  cset w12,eq
02ba4140  b 0x02ba414c
02ba4144  mov w20,#0x1
02ba4148  mov w12,#0x1
02ba414c  ldr x8,[x19, #0x28]
02ba4150  cbz x8,0x02ba434c
02ba4154  ldr x9,[x8, #0x18]
02ba4158  cmp w9,#0x1
02ba415c  b.lt 0x02ba432c
02ba4160  adrp x21,0x5e5d000
02ba4164  mov w16,#0xaaab
02ba4168  and x9,x9,#0xffffffff
02ba416c  ldr x21,[x21, #0xd50]
02ba4170  mov w24,#0x4b0
02ba4174  mov w25,#0x190
02ba4178  mov w26,#0xc8
02ba417c  mov w27,#0x258
02ba4180  mov w22,#0x4
02ba4184  movk w16,#0xaaaa, LSL #16
02ba4188  mov w17,#0x13
02ba418c  mov w1,#0x1
02ba4190  mov w2,#0x2
02ba4194  str w12,[sp, #0xc]
02ba4198  sub x29,x22,#0x4
02ba419c  and x10,x29,#0xffffffff
02ba41a0  umull x10,w10,w16
02ba41a4  lsr x23,x10,#0x21
02ba41a8  add w10,w23,w23, LSL #0x1
02ba41ac  sub w10,w29,w10
02ba41b0  cmp w10,#0x2
02ba41b4  b.ne 0x02ba41e8
02ba41b8  tbz w20,#0x0,0x02ba422c
02ba41bc  tbz w12,#0x0,0x02ba4268
02ba41c0  and x9,x29,#0xffffffff
02ba41c4  ubfiz w10,w23,#0x2,#0x1
02ba41c8  umull x9,w9,w16
02ba41cc  lsr x9,x9,#0x22
02ba41d0  add w9,w9,w9, LSL #0x2
02ba41d4  add w9,w10,w9
02ba41d8  cmp w9,#0x13
02ba41dc  csel w9,w9,w17,lt
02ba41e0  add w9,w9,#0xa
02ba41e4  b 0x02ba42c8
02ba41e8  cmp w28,#0x0
02ba41ec  csel w11,w27,w26,gt
02ba41f0  cmp x29,w9, UXTW 
02ba41f4  b.cs 0x02ba4350
02ba41f8  ldr x10,[x8, x22, LSL #0x3]
02ba41fc  cbz x10,0x02ba434c
02ba4200  ldr x9,[x19, #0x30]
02ba4204  stp wzr,w11,[x10, #0x14]
02ba4208  cbz x9,0x02ba434c
02ba420c  ldr w10,[x9, #0x18]
02ba4210  cmp x29,x10
02ba4214  b.cs 0x02ba4350
02ba4218  ldr x10,[x9, x22, LSL #0x3]
02ba421c  cbz x10,0x02ba434c
02ba4220  add w11,w11,w11, LSL #0x1
02ba4224  str wzr,[x10, #0x14]
02ba4228  b 0x02ba4304
02ba422c  cmp x29,w9, UXTW 
02ba4230  b.cs 0x02ba4350
02ba4234  ldr x10,[x8, x22, LSL #0x3]
02ba4238  cbz x10,0x02ba434c
02ba423c  ldr x9,[x19, #0x30]
02ba4240  stp w2,w25,[x10, #0x14]
02ba4244  cbz x9,0x02ba434c
02ba4248  ldr w10,[x9, #0x18]
02ba424c  cmp x29,x10
02ba4250  b.cs 0x02ba4350
02ba4254  ldr x10,[x9, x22, LSL #0x3]
02ba4258  cbz x10,0x02ba434c
02ba425c  str w2,[x10, #0x14]
02ba4260  mov w11,w24
02ba4264  b 0x02ba4304
02ba4268  ldr x0,[x21]
02ba426c  ldr w8,[x0, #0xe4]
02ba4270  cbnz w8,0x02ba4294
02ba4274  bl 0x029f5bd0
02ba4278  mov w16,#0xaaab
02ba427c  ldr w12,[sp, #0xc]
02ba4280  ldr x0,[x21]
02ba4284  mov w2,#0x2
02ba4288  mov w1,#0x1
02ba428c  mov w17,#0x13
02ba4290  movk w16,#0xaaaa, LSL #16
02ba4294  ldr x8,[x0, #0xb8]
02ba4298  ldr x9,[x8, #0x10]
02ba429c  cbz x9,0x02ba434c
02ba42a0  ldr w8,[x9, #0x18]
02ba42a4  sub w10,w8,#0x1
02ba42a8  cmp w23,w10
02ba42ac  csel w10,w23,w10,lt
02ba42b0  cmp w10,w8
02ba42b4  b.cs 0x02ba4350
02ba42b8  ldr x8,[x19, #0x28]
02ba42bc  cbz x8,0x02ba434c
02ba42c0  add x9,x9,w10, SXTW  #0x2
02ba42c4  ldr w9,[x9, #0x20]
02ba42c8  ldr w10,[x8, #0x18]
02ba42cc  cmp x29,x10
02ba42d0  b.cs 0x02ba4350
02ba42d4  ldr x11,[x8, x22, LSL #0x3]
02ba42d8  cbz x11,0x02ba434c
02ba42dc  ldr x10,[x19, #0x30]
02ba42e0  stp w1,w9,[x11, #0x14]
02ba42e4  cbz x10,0x02ba434c
02ba42e8  ldr w11,[x10, #0x18]
02ba42ec  cmp x29,x11
02ba42f0  b.cs 0x02ba4350
02ba42f4  ldr x10,[x10, x22, LSL #0x3]
02ba42f8  cbz x10,0x02ba434c
02ba42fc  add w11,w9,#0x5
02ba4300  str w1,[x10, #0x14]
02ba4304  ldr w9,[x8, #0x18]
02ba4308  str w11,[x10, #0x18]
02ba430c  sub x10,x22,#0x3
02ba4310  add x22,x22,#0x1
02ba4314  add w24,w24,#0x1e
02ba4318  add w25,w25,#0xa
02ba431c  cmp x10,w9, SXTW 
02ba4320  add w26,w26,#0x28
02ba4324  add w27,w27,#0x14
02ba4328  b.lt 0x02ba4198
02ba432c  ldp x20,x19,[sp, #0x60]
02ba4330  ldp x22,x21,[sp, #0x50]
02ba4334  ldp x24,x23,[sp, #0x40]
02ba4338  ldp x26,x25,[sp, #0x30]
02ba433c  ldp x28,x27,[sp, #0x20]
02ba4340  ldp x29,x30,[sp, #0x10]
02ba4344  add sp,sp,#0x70
02ba4348  ret
02ba434c  bl 0x029f5cfc
02ba4350  bl 0x029f5d04
