02c62234  stp d9,d8,[sp, #-0x40]!
02c62238  str x30,[sp, #0x10]
02c6223c  stp x22,x21,[sp, #0x20]
02c62240  stp x20,x19,[sp, #0x30]
02c62244  adrp x21,0x625c000
02c62248  mov x19,x1
02c6224c  mov x20,x0
02c62250  ldrb w8,[x21, #0x22b]
02c62254  tbnz w8,#0x0,0x02c62278
02c62258  adrp x0,0x5e63000
02c6225c  ldr x0,[x0, #0x850]
02c62260  bl 0x029f5a50
02c62264  adrp x0,0x5e59000
02c62268  ldr x0,[x0, #0x1c0]
02c6226c  bl 0x029f5a50
02c62270  mov w8,#0x1
02c62274  strb w8,[x21, #0x22b]
02c62278  ldrb w8,[x20, #0x84]
02c6227c  cbz w8,0x02c62398
02c62280  mov w8,#0x1
02c62284  mov x0,x20
02c62288  mov x1,x19
02c6228c  strb w8,[x20, #0x85]
02c62290  bl 0x02c62104
02c62294  ldp s2,s3,[x20, #0x78]
02c62298  mov x0,x20
02c6229c  fadd s0,s0,s2
02c622a0  fadd s1,s1,s3
02c622a4  bl 0x02c61a8c
02c622a8  ldr x0,[x20, #0x50]
02c622ac  cbz x0,0x02c623ac
02c622b0  adrp x22,0x5e59000
02c622b4  mov x1,xzr
02c622b8  ldr x22,[x22, #0x1c0]
02c622bc  bl 0x057edec8
02c622c0  ldr x0,[x22]
02c622c4  ldr x21,[x20, #0x70]
02c622c8  ldr w8,[x0, #0xe4]
02c622cc  cbnz w8,0x02c622d4
02c622d0  bl 0x029f5bd0
02c622d4  mov x0,x21
02c622d8  mov x1,xzr
02c622dc  mov x2,xzr
02c622e0  bl 0x057dfa70
02c622e4  tbz w0,#0x0,0x02c622f8
02c622e8  ldr x0,[x20, #0x70]
02c622ec  cbz x0,0x02c623ac
02c622f0  mov x1,x20
02c622f4  bl 0x02c623b0
02c622f8  adrp x21,0x5e63000
02c622fc  ldr x21,[x21, #0x850]
02c62300  ldr x0,[x22]
02c62304  ldr x8,[x21]
02c62308  ldr w9,[x0, #0xe4]
02c6230c  ldr x8,[x8, #0xb8]
02c62310  ldr x20,[x8]
02c62314  cbnz w9,0x02c6231c
02c62318  bl 0x029f5bd0
02c6231c  mov x0,x20
02c62320  mov x1,xzr
02c62324  mov x2,xzr
02c62328  bl 0x057dfa70
02c6232c  tbz w0,#0x0,0x02c62398
02c62330  cbz x19,0x02c623ac
02c62334  ldr x8,[x21]
02c62338  ldr s8,[x19, #0x104]
02c6233c  mov x0,x19
02c62340  ldr s9,[x19, #0x108]
02c62344  mov x1,xzr
02c62348  ldr x8,[x8, #0xb8]
02c6234c  ldr x20,[x8]
02c62350  bl 0x05acda38
02c62354  cbz x20,0x02c623ac
02c62358  fmov s0,s8
02c6235c  fmov s1,s9
02c62360  mov x1,x0
02c62364  mov x0,x20
02c62368  bl 0x02c60150
02c6236c  ldr x8,[x21]
02c62370  ldr x8,[x8, #0xb8]
02c62374  ldr x8,[x8]
02c62378  cbz x8,0x02c623ac
02c6237c  ldp x20,x19,[sp, #0x30]
02c62380  and w1,w0,#0x1
02c62384  ldp x22,x21,[sp, #0x20]
02c62388  mov x0,x8
02c6238c  ldr x30,[sp, #0x10]
02c62390  ldp d9,d8,[sp], #0x40
02c62394  b 0x02c6007c
02c62398  ldp x20,x19,[sp, #0x30]
02c6239c  ldr x30,[sp, #0x10]
02c623a0  ldp x22,x21,[sp, #0x20]
02c623a4  ldp d9,d8,[sp], #0x40
02c623a8  ret
02c623ac  bl 0x029f5cfc
