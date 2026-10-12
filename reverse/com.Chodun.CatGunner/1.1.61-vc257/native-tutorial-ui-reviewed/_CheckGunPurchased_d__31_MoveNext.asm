02caff2c  stp x30,x21,[sp, #-0x20]!
02caff30  stp x20,x19,[sp, #0x10]
02caff34  adrp x20,0x625c000
02caff38  mov x19,x0
02caff3c  ldrb w8,[x20, #0x541]
02caff40  tbnz w8,#0x0,0x02caff70
02caff44  adrp x0,0x5e5d000
02caff48  ldr x0,[x0, #0xd40]
02caff4c  bl 0x029f5a50
02caff50  adrp x0,0x5e59000
02caff54  ldr x0,[x0, #0x1c0]
02caff58  bl 0x029f5a50
02caff5c  adrp x0,0x5e5a000
02caff60  ldr x0,[x0, #0x710]
02caff64  bl 0x029f5a50
02caff68  mov w8,#0x1
02caff6c  strb w8,[x20, #0x541]
02caff70  ldr w8,[x19, #0x10]
02caff74  cmp w8,#0x2
02caff78  b.cs 0x02cb00b0
02caff7c  ldr x20,[x19, #0x20]
02caff80  mov w8,#0xffffffff
02caff84  str w8,[x19, #0x10]
02caff88  cbz x20,0x02cb00c4
02caff8c  ldr w8,[x20, #0x60]
02caff90  cmp w8,#0x3
02caff94  b.ne 0x02cb00b0
02caff98  adrp x8,0x5e59000
02caff9c  ldr x8,[x8, #0x1c0]
02caffa0  ldr x21,[x20, #0x58]
02caffa4  ldr x0,[x8]
02caffa8  ldr w8,[x0, #0xe4]
02caffac  cbnz w8,0x02caffb4
02caffb0  bl 0x029f5bd0
02caffb4  mov x0,x21
02caffb8  mov x1,xzr
02caffbc  mov x2,xzr
02caffc0  bl 0x057dfa70
02caffc4  tbz w0,#0x0,0x02caffdc
02caffc8  ldr x0,[x20, #0x58]
02caffcc  cbz x0,0x02cb00c4
02caffd0  mov x1,xzr
02caffd4  bl 0x057e00b4
02caffd8  b 0x02caffe0
02caffdc  mov w0,wzr
02caffe0  ldr x8,[x20, #0x38]
02caffe4  cbz x8,0x02cb00c4
02caffe8  and w1,w0,#0x1
02caffec  mov x0,x8
02cafff0  mov x2,xzr
02cafff4  bl 0x057dff3c
02cafff8  adrp x8,0x5e5d000
02cafffc  ldr x8,[x8, #0xd40]
02cb0000  ldr x8,[x8]
02cb0004  ldr x8,[x8, #0xb8]
02cb0008  ldr x8,[x8]
02cb000c  cbz x8,0x02cb00c4
02cb0010  ldr x8,[x8, #0x40]
02cb0014  cbz x8,0x02cb00c4
02cb0018  ldr w9,[x8, #0x18]
02cb001c  cmp w9,#0x1
02cb0020  b.lt 0x02cb0050
02cb0024  bic w10,w9,w9, ASR #0x1f
02cb0028  mov w11,wzr
02cb002c  cmp w9,w11
02cb0030  b.eq 0x02cb00c0
02cb0034  add x12,x8,w11, SXTW  #0x2
02cb0038  ldr w12,[x12, #0x20]
02cb003c  cmn w12,#0x1
02cb0040  b.ne 0x02cb0090
02cb0044  add w11,w11,#0x1
02cb0048  cmp w10,w11
02cb004c  b.ne 0x02cb002c
02cb0050  adrp x8,0x5e5a000
02cb0054  ldr x8,[x8, #0x710]
02cb0058  ldr x0,[x8]
02cb005c  bl 0x029f5cec
02cb0060  adrp x8,0x116c000
02cb0064  mov x1,xzr
02cb0068  mov x20,x0
02cb006c  ldr s0,[x8, #0x60]
02cb0070  bl 0x057e84e0
02cb0074  str x20,[x19, #0x18]!
02cb0078  mov x0,x19
02cb007c  mov x1,x20
02cb0080  bl 0x029f59f4
02cb0084  mov w0,#0x1
02cb0088  stur w0,[x19, #-0x8]
02cb008c  b 0x02cb00b4
02cb0090  ldr x0,[x20, #0x38]
02cb0094  cbz x0,0x02cb00c4
02cb0098  mov w1,wzr
02cb009c  mov x2,xzr
02cb00a0  bl 0x057dff3c
02cb00a4  mov x0,x20
02cb00a8  mov w1,#0x4
02cb00ac  bl 0x02caf65c
02cb00b0  mov w0,wzr
02cb00b4  ldp x20,x19,[sp, #0x10]
02cb00b8  ldp x30,x21,[sp], #0x20
02cb00bc  ret
02cb00c0  bl 0x029f5d04
02cb00c4  bl 0x029f5cfc
