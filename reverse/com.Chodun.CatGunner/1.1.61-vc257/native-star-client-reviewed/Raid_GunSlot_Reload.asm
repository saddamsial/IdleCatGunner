02c5ac40  sub sp,sp,#0xe0
02c5ac44  stp x30,x27,[sp, #0x90]
02c5ac48  stp x26,x25,[sp, #0xa0]
02c5ac4c  stp x24,x23,[sp, #0xb0]
02c5ac50  stp x22,x21,[sp, #0xc0]
02c5ac54  stp x20,x19,[sp, #0xd0]
02c5ac58  adrp x20,0x625c000
02c5ac5c  adrp x26,0x5e5e000
02c5ac60  mov x19,x0
02c5ac64  ldrb w8,[x20, #0x1d9]
02c5ac68  ldr x26,[x26, #0x70]
02c5ac6c  tbnz w8,#0x0,0x02c5acb4
02c5ac70  adrp x0,0x5e5d000
02c5ac74  ldr x0,[x0, #0xd40]
02c5ac78  bl 0x029f5a50
02c5ac7c  adrp x0,0x5e59000
02c5ac80  ldr x0,[x0, #0x1c0]
02c5ac84  bl 0x029f5a50
02c5ac88  adrp x0,0x5e5e000
02c5ac8c  ldr x0,[x0, #0x70]
02c5ac90  bl 0x029f5a50
02c5ac94  adrp x0,0x5e5e000
02c5ac98  ldr x0,[x0, #0x58]
02c5ac9c  bl 0x029f5a50
02c5aca0  adrp x0,0x5e5e000
02c5aca4  ldr x0,[x0, #0x6d0]
02c5aca8  bl 0x029f5a50
02c5acac  mov w8,#0x1
02c5acb0  strb w8,[x20, #0x1d9]
02c5acb4  movi v0.2D,#0x0
02c5acb8  ldr x0,[x26]
02c5acbc  str wzr,[sp, #0x6c]
02c5acc0  ldr w8,[x0, #0xe4]
02c5acc4  stp q0,q0,[sp, #0x70]
02c5acc8  cbnz w8,0x02c5acd4
02c5accc  bl 0x029f5bd0
02c5acd0  ldr x0,[x26]
02c5acd4  ldr x8,[x0, #0xb8]
02c5acd8  ldr x8,[x8]
02c5acdc  cbz x8,0x02c5ae78
02c5ace0  ldr x8,[x8, #0x88]
02c5ace4  cbz x8,0x02c5ae78
02c5ace8  ldrsw x9,[x19, #0x20]
02c5acec  ldr w10,[x8, #0x18]
02c5acf0  cmp w9,w10
02c5acf4  b.cs 0x02c5b230
02c5acf8  ldr x0,[x19, #0x40]
02c5acfc  cbz x0,0x02c5ae78
02c5ad00  add x8,x8,x9, LSL #0x2
02c5ad04  mov x2,xzr
02c5ad08  ldrsw x20,[x8, #0x20]
02c5ad0c  cmn w20,#0x1
02c5ad10  cset w1,ne
02c5ad14  bl 0x057dff3c
02c5ad18  ldr x0,[x19, #0x48]
02c5ad1c  cbz x0,0x02c5ae78
02c5ad20  adrp x25,0x5e5e000
02c5ad24  cmn w20,#0x1
02c5ad28  mov x2,xzr
02c5ad2c  ldr x25,[x25, #0x58]
02c5ad30  cset w1,eq
02c5ad34  bl 0x057dff3c
02c5ad38  cmn w20,#0x1
02c5ad3c  b.eq 0x02c5afac
02c5ad40  adrp x21,0x5e5d000
02c5ad44  ldr x21,[x21, #0xd40]
02c5ad48  ldr x8,[x21]
02c5ad4c  ldr x8,[x8, #0xb8]
02c5ad50  ldr x8,[x8]
02c5ad54  cbz x8,0x02c5ae78
02c5ad58  ldr x8,[x8, #0x20]
02c5ad5c  cbz x8,0x02c5ae78
02c5ad60  ldr w9,[x8, #0x18]
02c5ad64  cmp w20,w9
02c5ad68  b.cs 0x02c5b230
02c5ad6c  ldr x0,[x26]
02c5ad70  add x8,x8,x20, LSL #0x3
02c5ad74  ldr w9,[x0, #0xe4]
02c5ad78  ldr x27,[x8, #0x20]
02c5ad7c  cbnz w9,0x02c5ad84
02c5ad80  bl 0x029f5bd0
02c5ad84  mov w0,w20
02c5ad88  mov x1,xzr
02c5ad8c  bl 0x02c51cc8
02c5ad90  ldr x8,[x21]
02c5ad94  ldr x8,[x8, #0xb8]
02c5ad98  ldr x8,[x8]
02c5ad9c  cbz x8,0x02c5ae78
02c5ada0  ldr x8,[x8, #0x48]
02c5ada4  cbz x8,0x02c5ae78
02c5ada8  ldr w9,[x8, #0x18]
02c5adac  cmp w20,w9
02c5adb0  b.cs 0x02c5b230
02c5adb4  mov w21,w0
02c5adb8  ldr x0,[x19, #0x28]
02c5adbc  cbz x0,0x02c5ae78
02c5adc0  add x8,x8,x20, LSL #0x3
02c5adc4  ldr x24,[x19, #0x30]
02c5adc8  mov x2,xzr
02c5adcc  ldr x23,[x8, #0x20]
02c5add0  mov x1,x23
02c5add4  bl 0x058d34cc
02c5add8  cbz x24,0x02c5ae78
02c5addc  mov w8,#0x6667
02c5ade0  mov x0,x24
02c5ade4  mov x1,x23
02c5ade8  movk w8,#0x6666, LSL #16
02c5adec  mov x2,xzr
02c5adf0  smull x8,w20,w8
02c5adf4  lsr x9,x8,#0x3f
02c5adf8  asr x8,x8,#0x21
02c5adfc  add w22,w8,w9
02c5ae00  bl 0x058d34cc
02c5ae04  ldr x23,[x19, #0x38]
02c5ae08  mov w0,w22
02c5ae0c  bl 0x02c5b234
02c5ae10  cbz x23,0x02c5ae78
02c5ae14  ldr x8,[x23]
02c5ae18  mov x0,x23
02c5ae1c  ldr x9,[x8, #0x2a8]
02c5ae20  ldr x1,[x8, #0x2b0]
02c5ae24  blr x9
02c5ae28  ldr x8,[x19, #0x70]
02c5ae2c  cbz x8,0x02c5ae78
02c5ae30  adrp x24,0x5e5e000
02c5ae34  mov x23,xzr
02c5ae38  ldr x24,[x24, #0x6d0]
02c5ae3c  ldr w9,[x8, #0x18]
02c5ae40  cmp w23,w9
02c5ae44  b.ge 0x02c5ae7c
02c5ae48  cmp w23,w9
02c5ae4c  b.cs 0x02c5b230
02c5ae50  add x8,x8,x23, LSL #0x3
02c5ae54  ldr x0,[x8, #0x20]
02c5ae58  cbz x0,0x02c5ae78
02c5ae5c  cmp w22,w23
02c5ae60  mov x2,xzr
02c5ae64  cset w1,eq
02c5ae68  bl 0x057dff3c
02c5ae6c  ldr x8,[x19, #0x70]
02c5ae70  add x23,x23,#0x1
02c5ae74  cbnz x8,0x02c5ae3c
02c5ae78  bl 0x029f5cfc
02c5ae7c  ldr x0,[x26]
02c5ae80  ldr x22,[x19, #0x78]
02c5ae84  ldr w8,[x0, #0xe4]
02c5ae88  cbnz w8,0x02c5ae90
02c5ae8c  bl 0x029f5bd0
02c5ae90  add x8,sp,#0x48
02c5ae94  mov w0,w20
02c5ae98  mov x1,xzr
02c5ae9c  bl 0x02c51d80
02c5aea0  ldr x0,[x25]
02c5aea4  ldr w23,[x19, #0x20]
02c5aea8  ldr w8,[x0, #0xe4]
02c5aeac  cbnz w8,0x02c5aeb4
02c5aeb0  bl 0x029f5bd0
02c5aeb4  ldur q0,[sp, #0x48]
02c5aeb8  ldur q1,[sp, #0x58]
02c5aebc  add x8,sp,#0x28
02c5aec0  mov x0,sp
02c5aec4  mov w1,w23
02c5aec8  mov x2,xzr
02c5aecc  stp q0,q1,[sp]
02c5aed0  bl 0x02c6db38
02c5aed4  ldur q0,[sp, #0x28]
02c5aed8  ldur q1,[sp, #0x38]
02c5aedc  add x0,sp,#0x70
02c5aee0  mov x1,xzr
02c5aee4  stp q0,q1,[sp, #0x70]
02c5aee8  bl 0x0465bddc
02c5aeec  cbz x22,0x02c5ae78
02c5aef0  ldr x8,[x22]
02c5aef4  mov x1,x0
02c5aef8  mov x0,x22
02c5aefc  ldr x9,[x8, #0x558]
02c5af00  ldr x2,[x8, #0x560]
02c5af04  blr x9
02c5af08  cbz x27,0x02c5ae78
02c5af0c  ldr x22,[x19, #0x80]
02c5af10  add x0,x27,#0x40
02c5af14  mov x1,xzr
02c5af18  bl 0x04863c00
02c5af1c  ldr x8,[x24]
02c5af20  mov x1,x0
02c5af24  mov x2,xzr
02c5af28  mov x0,x8
02c5af2c  bl 0x046b6c0c
02c5af30  cbz x22,0x02c5ae78
02c5af34  ldr x8,[x22]
02c5af38  mov x1,x0
02c5af3c  mov x0,x22
02c5af40  ldr x9,[x8, #0x558]
02c5af44  ldr x2,[x8, #0x560]
02c5af48  blr x9
02c5af4c  ldr x22,[x19, #0x88]
02c5af50  mov w0,w20
02c5af54  bl 0x02c5b2ac
02c5af58  cbz x22,0x02c5ae78
02c5af5c  ldr x8,[x22]
02c5af60  mov x1,x0
02c5af64  mov x0,x22
02c5af68  ldr x9,[x8, #0x558]
02c5af6c  ldr x2,[x8, #0x560]
02c5af70  blr x9
02c5af74  fmov s3,0x3f800000
02c5af78  fmov s2,0x3f800000
02c5af7c  ldr x0,[x19, #0x78]
02c5af80  fmov s1,0x3f800000
02c5af84  fmov s0,0x3f800000
02c5af88  tbz w21,#0x0,0x02c5af94
02c5af8c  ldp s0,s1,[x19, #0xa0]
02c5af90  ldp s2,s3,[x19, #0xa8]
02c5af94  cbz x0,0x02c5ae78
02c5af98  ldr x8,[x0]
02c5af9c  ldr x9,[x8, #0x2a8]
02c5afa0  ldr x1,[x8, #0x2b0]
02c5afa4  blr x9
02c5afa8  b 0x02c5afb0
02c5afac  mov w21,wzr
02c5afb0  adrp x23,0x5e59000
02c5afb4  ldr x23,[x23, #0x1c0]
02c5afb8  ldr x22,[x19, #0x58]
02c5afbc  ldr x0,[x23]
02c5afc0  ldr w8,[x0, #0xe4]
02c5afc4  cbnz w8,0x02c5afcc
02c5afc8  bl 0x029f5bd0
02c5afcc  mov x0,x22
02c5afd0  mov x1,xzr
02c5afd4  mov x2,xzr
02c5afd8  bl 0x057dfa70
02c5afdc  tbz w0,#0x0,0x02c5aff4
02c5afe0  ldr x0,[x19, #0x58]
02c5afe4  cbz x0,0x02c5ae78
02c5afe8  and w1,w21,#0x1
02c5afec  mov x2,xzr
02c5aff0  bl 0x057dff3c
02c5aff4  ldr x0,[x23]
02c5aff8  ldr x22,[x19, #0x60]
02c5affc  ldr w8,[x0, #0xe4]
02c5b000  cbnz w8,0x02c5b008
02c5b004  bl 0x029f5bd0
02c5b008  mov x0,x22
02c5b00c  mov x1,xzr
02c5b010  mov x2,xzr
02c5b014  bl 0x057dfa70
02c5b018  tbz w0,#0x0,0x02c5b030
02c5b01c  ldr x0,[x19, #0x60]
02c5b020  cbz x0,0x02c5ae78
02c5b024  and w1,w21,#0x1
02c5b028  mov x2,xzr
02c5b02c  bl 0x057dff3c
02c5b030  ldr x0,[x23]
02c5b034  ldr x22,[x19, #0x68]
02c5b038  ldr w8,[x0, #0xe4]
02c5b03c  cbnz w8,0x02c5b044
02c5b040  bl 0x029f5bd0
02c5b044  mov x0,x22
02c5b048  mov x1,xzr
02c5b04c  mov x2,xzr
02c5b050  bl 0x057dfa70
02c5b054  tbz w0,#0x0,0x02c5b06c
02c5b058  ldr x0,[x19, #0x68]
02c5b05c  cbz x0,0x02c5ae78
02c5b060  and w1,w21,#0x1
02c5b064  mov x2,xzr
02c5b068  bl 0x057dff3c
02c5b06c  ldr x0,[x26]
02c5b070  ldr w8,[x0, #0xe4]
02c5b074  cbnz w8,0x02c5b080
02c5b078  bl 0x029f5bd0
02c5b07c  ldr x0,[x26]
02c5b080  ldr x8,[x0, #0xb8]
02c5b084  ldr x0,[x8]
02c5b088  cbz x0,0x02c5ae78
02c5b08c  mov x1,xzr
02c5b090  bl 0x02c587b8
02c5b094  ldr x8,[x19, #0x50]
02c5b098  cbz x8,0x02c5ae78
02c5b09c  cmn w20,#0x1
02c5b0a0  mov x2,xzr
02c5b0a4  ccmp w0,#0x1,#0x4,ne
02c5b0a8  mov x0,x8
02c5b0ac  cset w1,gt
02c5b0b0  bl 0x057dff3c
02c5b0b4  ldr x0,[x25]
02c5b0b8  ldr w8,[x0, #0xe4]
02c5b0bc  cbnz w8,0x02c5b0c8
02c5b0c0  bl 0x029f5bd0
02c5b0c4  ldr x0,[x25]
02c5b0c8  ldr x8,[x23]
02c5b0cc  ldr x9,[x0, #0xb8]
02c5b0d0  ldr w10,[x8, #0xe4]
02c5b0d4  ldr x20,[x9]
02c5b0d8  cbnz w10,0x02c5b0e4
02c5b0dc  mov x0,x8
02c5b0e0  bl 0x029f5bd0
02c5b0e4  mov x0,x20
02c5b0e8  mov x1,xzr
02c5b0ec  mov x2,xzr
02c5b0f0  bl 0x057dfa70
02c5b0f4  tbz w0,#0x0,0x02c5b1bc
02c5b0f8  ldr x0,[x25]
02c5b0fc  ldr w8,[x0, #0xe4]
02c5b100  cbnz w8,0x02c5b10c
02c5b104  bl 0x029f5bd0
02c5b108  ldr x0,[x25]
02c5b10c  ldr x8,[x0, #0xb8]
02c5b110  ldr x0,[x8]
02c5b114  cbz x0,0x02c5ae78
02c5b118  mov x1,xzr
02c5b11c  bl 0x02c6d80c
02c5b120  ldr x8,[x19, #0x90]
02c5b124  cbz x8,0x02c5ae78
02c5b128  mov w20,w0
02c5b12c  and w1,w0,#0x1
02c5b130  mov x0,x8
02c5b134  mov x2,xzr
02c5b138  bl 0x057dff3c
02c5b13c  tbz w20,#0x0,0x02c5b1d0
02c5b140  ldr x0,[x25]
02c5b144  ldr w8,[x0, #0xe4]
02c5b148  cbnz w8,0x02c5b154
02c5b14c  bl 0x029f5bd0
02c5b150  ldr x0,[x25]
02c5b154  ldr x8,[x0, #0xb8]
02c5b158  ldr x0,[x8]
02c5b15c  cbz x0,0x02c5ae78
02c5b160  ldr w1,[x19, #0x20]
02c5b164  mov x2,xzr
02c5b168  bl 0x02c6d8fc
02c5b16c  ldr x20,[x19, #0x98]
02c5b170  str w0,[sp, #0x6c]
02c5b174  add x0,sp,#0x6c
02c5b178  mov x1,xzr
02c5b17c  bl 0x0484e6a4
02c5b180  cbz x20,0x02c5ae78
02c5b184  ldr x8,[x20]
02c5b188  mov x1,x0
02c5b18c  mov x0,x20
02c5b190  ldr x9,[x8, #0x558]
02c5b194  ldr x2,[x8, #0x560]
02c5b198  blr x9
02c5b19c  ldr w8,[sp, #0x6c]
02c5b1a0  ldr x0,[x19, #0x78]
02c5b1a4  cmp w8,#0x1
02c5b1a8  b.lt 0x02c5b1f0
02c5b1ac  ldp s0,s1,[x19, #0xa0]
02c5b1b0  ldp s2,s3,[x19, #0xa8]
02c5b1b4  cbnz x0,0x02c5b204
02c5b1b8  b 0x02c5ae78
02c5b1bc  ldr x0,[x19, #0x90]
02c5b1c0  cbz x0,0x02c5ae78
02c5b1c4  mov w1,wzr
02c5b1c8  mov x2,xzr
02c5b1cc  bl 0x057dff3c
02c5b1d0  ldr x0,[x19, #0x78]
02c5b1d4  cbz x0,0x02c5ae78
02c5b1d8  ldr x8,[x0]
02c5b1dc  fmov s0,0x3f800000
02c5b1e0  fmov s1,0x3f800000
02c5b1e4  fmov s2,0x3f800000
02c5b1e8  fmov s3,0x3f800000
02c5b1ec  b 0x02c5b208
02c5b1f0  fmov s3,0x3f800000
02c5b1f4  fmov s2,0x3f800000
02c5b1f8  fmov s1,0x3f800000
02c5b1fc  fmov s0,0x3f800000
02c5b200  cbz x0,0x02c5ae78
02c5b204  ldr x8,[x0]
02c5b208  ldr x9,[x8, #0x2a8]
02c5b20c  ldr x1,[x8, #0x2b0]
02c5b210  blr x9
02c5b214  ldp x20,x19,[sp, #0xd0]
02c5b218  ldp x22,x21,[sp, #0xc0]
02c5b21c  ldp x24,x23,[sp, #0xb0]
02c5b220  ldp x26,x25,[sp, #0xa0]
02c5b224  ldp x30,x27,[sp, #0x90]
02c5b228  add sp,sp,#0xe0
02c5b22c  ret
02c5b230  bl 0x029f5d04
