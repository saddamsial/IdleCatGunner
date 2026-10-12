02c83e8c  sub sp,sp,#0xb0
02c83e90  stp x29,x30,[sp, #0x50]
02c83e94  stp x28,x27,[sp, #0x60]
02c83e98  stp x26,x25,[sp, #0x70]
02c83e9c  stp x24,x23,[sp, #0x80]
02c83ea0  stp x22,x21,[sp, #0x90]
02c83ea4  stp x20,x19,[sp, #0xa0]
02c83ea8  adrp x20,0x625c000
02c83eac  adrp x19,0x5e5d000
02c83eb0  mov x22,x2
02c83eb4  ldrb w8,[x20, #0x36b]
02c83eb8  ldr x19,[x19, #0x4d0]
02c83ebc  mov x23,x1
02c83ec0  mov x21,x0
02c83ec4  tbnz w8,#0x0,0x02c83f48
02c83ec8  adrp x0,0x5e63000
02c83ecc  ldr x0,[x0, #0xda0]
02c83ed0  bl 0x029f5a50
02c83ed4  adrp x0,0x5e63000
02c83ed8  ldr x0,[x0, #0xda8]
02c83edc  bl 0x029f5a50
02c83ee0  adrp x0,0x5e63000
02c83ee4  ldr x0,[x0, #0xdb0]
02c83ee8  bl 0x029f5a50
02c83eec  adrp x0,0x5e63000
02c83ef0  ldr x0,[x0, #0xe20]
02c83ef4  bl 0x029f5a50
02c83ef8  adrp x0,0x5e63000
02c83efc  ldr x0,[x0, #0xe28]
02c83f00  bl 0x029f5a50
02c83f04  adrp x0,0x5e63000
02c83f08  ldr x0,[x0, #0xe30]
02c83f0c  bl 0x029f5a50
02c83f10  adrp x0,0x5e63000
02c83f14  ldr x0,[x0, #0xe38]
02c83f18  bl 0x029f5a50
02c83f1c  adrp x0,0x5e63000
02c83f20  ldr x0,[x0, #0xdb8]
02c83f24  bl 0x029f5a50
02c83f28  adrp x0,0x5e59000
02c83f2c  ldr x0,[x0, #0x1c0]
02c83f30  bl 0x029f5a50
02c83f34  adrp x0,0x5e5d000
02c83f38  ldr x0,[x0, #0x4d0]
02c83f3c  bl 0x029f5a50
02c83f40  mov w8,#0x1
02c83f44  strb w8,[x20, #0x36b]
02c83f48  mov x0,x23
02c83f4c  mov x1,xzr
02c83f50  stp xzr,xzr,[sp, #0x30]
02c83f54  str xzr,[sp, #0x40]
02c83f58  str xzr,[x23]
02c83f5c  bl 0x029f59f4
02c83f60  mov x0,x22
02c83f64  mov x1,xzr
02c83f68  str xzr,[x22]
02c83f6c  bl 0x029f59f4
02c83f70  ldr x0,[x19]
02c83f74  ldr w8,[x0, #0xe4]
02c83f78  cbnz w8,0x02c83f84
02c83f7c  bl 0x029f5bd0
02c83f80  ldr x0,[x19]
02c83f84  ldr x9,[x21, #0x40]
02c83f88  stp x23,x22,[sp, #0x8]
02c83f8c  cbz x9,0x02c8432c
02c83f90  adrp x26,0x5e63000
02c83f94  adrp x27,0x5e63000
02c83f98  adrp x19,0x5e63000
02c83f9c  ldr x26,[x26, #0xdb8]
02c83fa0  adrp x20,0x5e63000
02c83fa4  adrp x28,0x5e63000
02c83fa8  ldr x27,[x27, #0xda8]
02c83fac  ldr x19,[x19, #0xe38]
02c83fb0  ldr x20,[x20, #0xe30]
02c83fb4  ldr x28,[x28, #0xe20]
02c83fb8  ldr x8,[x0, #0xb8]
02c83fbc  adrp x29,0x5e63000
02c83fc0  ldr x29,[x29, #0xda0]
02c83fc4  ldr x1,[x26]
02c83fc8  mov x0,x9
02c83fcc  ldr x22,[x8, #0x28]
02c83fd0  add x8,sp,#0x18
02c83fd4  bl 0x0452d690
02c83fd8  ldr x8,[sp, #0x28]
02c83fdc  ldur q0,[sp, #0x18]
02c83fe0  mov x23,xzr
02c83fe4  str x8,[sp, #0x40]
02c83fe8  add x8,sp,#0x30
02c83fec  str q0,[sp, #0x30]
02c83ff0  stp xzr,x8,[sp, #0x18]
02c83ff4  ldr x1,[x27]
02c83ff8  add x0,sp,#0x30
02c83ffc  bl 0x03fa4e10
02c84000  tbz w0,#0x0,0x02c840d4
02c84004  ldr x24,[sp, #0x40]
02c84008  cbz x24,0x02c84324
02c8400c  mov x0,x24
02c84010  mov x1,xzr
02c84014  bl 0x057dc1c8
02c84018  cbz x0,0x02c84328
02c8401c  mov x1,xzr
02c84020  bl 0x057e0000
02c84024  tbz w0,#0x0,0x02c83ff4
02c84028  ldrb w8,[x24, #0x90]
02c8402c  cbz w8,0x02c83ff4
02c84030  cbnz x23,0x02c84048
02c84034  ldr x0,[x19]
02c84038  bl 0x029f5cec
02c8403c  ldr x1,[x20]
02c84040  mov x23,x0
02c84044  bl 0x042bb9a4
02c84048  adrp x8,0x5e59000
02c8404c  ldr x8,[x8, #0x1c0]
02c84050  ldr x25,[x24, #0x98]
02c84054  ldr x0,[x8]
02c84058  ldr w8,[x0, #0xe4]
02c8405c  cbnz w8,0x02c84064
02c84060  bl 0x029f5bd0
02c84064  mov x0,x25
02c84068  mov x1,xzr
02c8406c  mov x2,xzr
02c84070  bl 0x057dfa70
02c84074  tbz w0,#0x0,0x02c8408c
02c84078  cbz x23,0x02c84338
02c8407c  ldr x1,[x24, #0x98]
02c84080  ldr x2,[x28]
02c84084  mov x0,x23
02c84088  bl 0x042bcb98
02c8408c  adrp x8,0x5e59000
02c84090  ldr x8,[x8, #0x1c0]
02c84094  ldr x25,[x24, #0xa0]
02c84098  ldr x0,[x8]
02c8409c  ldr w8,[x0, #0xe4]
02c840a0  cbnz w8,0x02c840a8
02c840a4  bl 0x029f5bd0
02c840a8  mov x0,x25
02c840ac  mov x1,xzr
02c840b0  mov x2,xzr
02c840b4  bl 0x057dfa70
02c840b8  tbz w0,#0x0,0x02c83ff4
02c840bc  cbz x23,0x02c8433c
02c840c0  ldr x1,[x24, #0xa0]
02c840c4  ldr x2,[x28]
02c840c8  mov x0,x23
02c840cc  bl 0x042bcb98
02c840d0  b 0x02c83ff4
02c840d4  ldr x24,[sp, #0x18]
02c840d8  mov w19,#0x6
02c840dc  ldr x0,[sp, #0x20]
02c840e0  ldr x1,[x29]
02c840e4  bl 0x03fa4e0c
02c840e8  cbnz x24,0x02c84330
02c840ec  cmp w19,#0x6
02c840f0  b.eq 0x02c840f8
02c840f4  cbnz w19,0x02c84300
02c840f8  cbz x22,0x02c8432c
02c840fc  ldr x8,[x22, #0x20]
02c84100  cbz x8,0x02c8432c
02c84104  ldr w8,[x8, #0x18]
02c84108  mov x0,x22
02c8410c  mov x1,xzr
02c84110  sub w19,w8,#0x2
02c84114  bl 0x02c7d834
02c84118  cmp w0,w19
02c8411c  csel w19,w0,w19,lt
02c84120  tbnz w19,#0x1f,0x02c842f4
02c84124  mov w20,wzr
02c84128  add x28,sp,#0x30
02c8412c  str wzr,[sp, #0x4]
02c84130  ldr x0,[x21, #0x40]
02c84134  cbz x0,0x02c8432c
02c84138  ldr x1,[x26]
02c8413c  add x8,sp,#0x18
02c84140  bl 0x0452d690
02c84144  ldur q0,[sp, #0x18]
02c84148  ldr x9,[sp, #0x28]
02c8414c  mov x8,xzr
02c84150  stp xzr,x28,[sp, #0x18]
02c84154  str q0,[sp, #0x30]
02c84158  str x9,[sp, #0x40]
02c8415c  ldr x1,[x27]
02c84160  mov x24,x8
02c84164  add x0,sp,#0x30
02c84168  bl 0x03fa4e10
02c8416c  tbz w0,#0x0,0x02c84268
02c84170  ldr x25,[sp, #0x40]
02c84174  cbz x25,0x02c8429c
02c84178  mov x0,x25
02c8417c  mov x1,xzr
02c84180  bl 0x057dc1c8
02c84184  cbz x0,0x02c842a4
02c84188  mov x1,xzr
02c8418c  bl 0x057e0000
02c84190  mov x8,x24
02c84194  tbz w0,#0x0,0x02c8415c
02c84198  ldr w8,[x25, #0x64]
02c8419c  cmp w8,w20
02c841a0  mov x8,x24
02c841a4  b.ne 0x02c8415c
02c841a8  ldrb w9,[x25, #0x6c]
02c841ac  mov x8,x24
02c841b0  cbnz w9,0x02c8415c
02c841b4  ldrb w9,[x25, #0x90]
02c841b8  mov x8,x24
02c841bc  cbnz w9,0x02c8415c
02c841c0  ldrb w9,[x25, #0x6d]
02c841c4  mov x8,x24
02c841c8  cbnz w9,0x02c8415c
02c841cc  ldr w1,[x25, #0x68]
02c841d0  mov x0,x22
02c841d4  mov x2,xzr
02c841d8  bl 0x02c7cc68
02c841dc  mov x8,x24
02c841e0  tbnz w0,#0x0,0x02c8415c
02c841e4  cbz x23,0x02c84208
02c841e8  adrp x8,0x5e63000
02c841ec  ldr x8,[x8, #0xe28]
02c841f0  ldr x2,[x8]
02c841f4  mov x0,x23
02c841f8  mov x1,x25
02c841fc  bl 0x042bc0a8
02c84200  mov x8,x24
02c84204  tbnz w0,#0x0,0x02c8415c
02c84208  adrp x8,0x5e59000
02c8420c  ldr x8,[x8, #0x1c0]
02c84210  ldr x0,[x8]
02c84214  ldr w8,[x0, #0xe4]
02c84218  cbnz w8,0x02c84220
02c8421c  bl 0x029f5bd0
02c84220  mov x0,x24
02c84224  mov x1,xzr
02c84228  mov x2,xzr
02c8422c  bl 0x057e14b4
02c84230  mov x8,x25
02c84234  tbnz w0,#0x0,0x02c8415c
02c84238  ldr x0,[sp, #0x10]
02c8423c  str x24,[x0]
02c84240  mov x1,x24
02c84244  bl 0x029f59f4
02c84248  ldr x0,[sp, #0x8]
02c8424c  str x25,[x0]
02c84250  mov x1,x25
02c84254  bl 0x029f59f4
02c84258  mov w8,#0x1
02c8425c  mov w25,#0xd
02c84260  str w8,[sp, #0x4]
02c84264  b 0x02c8426c
02c84268  mov w25,#0xe
02c8426c  ldr x24,[sp, #0x18]
02c84270  ldr x0,[sp, #0x20]
02c84274  ldr x1,[x29]
02c84278  bl 0x03fa4e0c
02c8427c  cbnz x24,0x02c84330
02c84280  cmp w25,#0xe
02c84284  b.eq 0x02c8428c
02c84288  cbnz w25,0x02c842fc
02c8428c  add w20,w20,#0x1
02c84290  cmp w20,w19
02c84294  b.le 0x02c84130
02c84298  b 0x02c842f4
02c8429c  bl 0x029f5cfc
02c842a4  bl 0x029f5cfc
02c842f4  mov w8,wzr
02c842f8  b 0x02c84300
02c842fc  ldr w8,[sp, #0x4]
02c84300  ldp x20,x19,[sp, #0xa0]
02c84304  and w0,w8,#0x1
02c84308  ldp x22,x21,[sp, #0x90]
02c8430c  ldp x24,x23,[sp, #0x80]
02c84310  ldp x26,x25,[sp, #0x70]
02c84314  ldp x28,x27,[sp, #0x60]
02c84318  ldp x29,x30,[sp, #0x50]
02c8431c  add sp,sp,#0xb0
02c84320  ret
02c84324  bl 0x029f5cfc
02c84328  bl 0x029f5cfc
02c8432c  bl 0x029f5cfc
02c84330  mov x0,x24
02c84334  bl 0x029f5cf4
02c84338  bl 0x029f5cfc
02c8433c  bl 0x029f5cfc
