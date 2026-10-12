02c54fc4  stp x30,x21,[sp, #-0x20]!
02c54fc8  stp x20,x19,[sp, #0x10]
02c54fcc  adrp x21,0x625c000
02c54fd0  mov x20,x1
02c54fd4  mov x19,x0
02c54fd8  ldrb w8,[x21, #0x183]
02c54fdc  tbnz w8,#0x0,0x02c54ff4
02c54fe0  adrp x0,0x5e5e000
02c54fe4  ldr x0,[x0, #0x68]
02c54fe8  bl 0x029f5a50
02c54fec  mov w8,#0x1
02c54ff0  strb w8,[x21, #0x183]
02c54ff4  ldr x8,[x19, #0x20]
02c54ff8  cbz x8,0x02c55008
02c54ffc  ldr w8,[x8, #0x18]
02c55000  cmp w8,#0x8
02c55004  b.eq 0x02c55010
02c55008  mov x0,x19
02c5500c  bl 0x02c5412c
02c55010  adrp x21,0x5e5e000
02c55014  mov x0,x19
02c55018  ldr x21,[x21, #0x68]
02c5501c  bl 0x02c53ad0
02c55020  ldr x0,[x19, #0x30]
02c55024  mov w1,wzr
02c55028  mov w2,#0x8
02c5502c  mov x3,xzr
02c55030  bl 0x04873aac
02c55034  ldr x0,[x19, #0x38]
02c55038  mov w1,wzr
02c5503c  mov w2,#0x8
02c55040  mov x3,xzr
02c55044  bl 0x04873aac
02c55048  ldr x0,[x19, #0x40]
02c5504c  mov w1,wzr
02c55050  mov w2,#0x8
02c55054  mov x3,xzr
02c55058  bl 0x04873aac
02c5505c  mov w8,#0xffffffff
02c55060  strb wzr,[x19, #0x48]
02c55064  str w8,[x19, #0x28]
02c55068  cbz x20,0x02c550a0
02c5506c  ldr w8,[x20, #0x400]
02c55070  ldr x0,[x20, #0x408]
02c55074  ldr x1,[x19, #0x30]
02c55078  str w8,[x19, #0x28]
02c5507c  bl 0x02c550e4
02c55080  ldr x0,[x20, #0x410]
02c55084  ldr x1,[x19, #0x38]
02c55088  bl 0x02c550e4
02c5508c  ldr x0,[x20, #0x418]
02c55090  ldr x1,[x19, #0x40]
02c55094  bl 0x02c550e4
02c55098  ldrb w8,[x20, #0x420]
02c5509c  strb w8,[x19, #0x48]
02c550a0  mov x0,x19
02c550a4  bl 0x02c53fc0
02c550a8  mov x0,x19
02c550ac  bl 0x02c53c8c
02c550b0  ldr x8,[x21]
02c550b4  ldr x8,[x8, #0xb8]
02c550b8  ldr x8,[x8, #0x8]
02c550bc  cbz x8,0x02c550d8
02c550c0  ldp x20,x19,[sp, #0x10]
02c550c4  ldr x0,[x8, #0x40]
02c550c8  ldr x1,[x8, #0x28]
02c550cc  ldr x2,[x8, #0x18]
02c550d0  ldp x30,x21,[sp], #0x20
02c550d4  br x2
02c550d8  ldp x20,x19,[sp, #0x10]
02c550dc  ldp x30,x21,[sp], #0x20
02c550e0  ret
