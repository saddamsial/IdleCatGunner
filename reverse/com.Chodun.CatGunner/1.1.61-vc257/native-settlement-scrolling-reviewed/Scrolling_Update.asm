02c2745c  str d12,[sp, #-0x40]!
02c27460  stp d11,d10,[sp, #0x8]
02c27464  stp d9,d8,[sp, #0x18]
02c27468  str x30,[sp, #0x28]
02c2746c  stp x20,x19,[sp, #0x30]
02c27470  ldr x19,[x0, #0x28]
02c27474  cbz x19,0x02c274e4
02c27478  mov x20,x0
02c2747c  ldr s9,[x19, #0xe0]
02c27480  ldr s10,[x0, #0x20]
02c27484  mov x0,xzr
02c27488  bl 0x057ebabc
02c2748c  ldr x8,[x20, #0x28]
02c27490  cbz x8,0x02c274e4
02c27494  ldr s11,[x8, #0xe4]
02c27498  ldr s12,[x20, #0x24]
02c2749c  mov x0,xzr
02c274a0  fmov s8,s0
02c274a4  bl 0x057ebabc
02c274a8  ldr x8,[x20, #0x28]
02c274ac  cbz x8,0x02c274e4
02c274b0  fmul s1,s10,s8
02c274b4  fmul s2,s12,s0
02c274b8  mov x0,x19
02c274bc  ldp x20,x19,[sp, #0x30]
02c274c0  ldr x30,[sp, #0x28]
02c274c4  mov x1,xzr
02c274c8  fadd s0,s9,s1
02c274cc  fadd s1,s11,s2
02c274d0  ldp s2,s3,[x8, #0xe8]
02c274d4  ldp d9,d8,[sp, #0x18]
02c274d8  ldp d11,d10,[sp, #0x8]
02c274dc  ldr d12,[sp], #0x40
02c274e0  b 0x05ab7c74
02c274e4  bl 0x029f5cfc
