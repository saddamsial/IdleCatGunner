02c5276c  str x30,[sp, #-0x30]!
02c52770  stp x22,x21,[sp, #0x10]
02c52774  stp x20,x19,[sp, #0x20]
02c52778  adrp x20,0x625c000
02c5277c  adrp x21,0x5e5e000
02c52780  mov x19,x0
02c52784  ldrb w8,[x20, #0x16d]
02c52788  ldr x21,[x21, #0x68]
02c5278c  tbnz w8,#0x0,0x02c527b0
02c52790  adrp x0,0x5e59000
02c52794  ldr x0,[x0, #0x288]
02c52798  bl 0x029f5a50
02c5279c  adrp x0,0x5e5e000
02c527a0  ldr x0,[x0, #0x68]
02c527a4  bl 0x029f5a50
02c527a8  mov w8,#0x1
02c527ac  strb w8,[x20, #0x16d]
02c527b0  ldr x8,[x21]
02c527b4  adrp x22,0x5e59000
02c527b8  ldr x8,[x8, #0xb8]
02c527bc  ldr x22,[x22, #0x288]
02c527c0  ldr x20,[x8, #0x8]
02c527c4  mov x0,x20
02c527c8  mov x1,x19
02c527cc  mov x2,xzr
02c527d0  bl 0x04896870
02c527d4  mov x8,x0
02c527d8  cbz x0,0x02c527ec
02c527dc  ldr x1,[x22]
02c527e0  ldr x9,[x8]
02c527e4  cmp x9,x1
02c527e8  b.ne 0x02c52820
02c527ec  ldr x9,[x21]
02c527f0  mov x1,x8
02c527f4  mov x2,x20
02c527f8  ldr x9,[x9, #0xb8]
02c527fc  add x0,x9,#0x8
02c52800  bl 0x02a2e558
02c52804  cmp x0,x20
02c52808  mov x20,x0
02c5280c  b.ne 0x02c527c4
02c52810  ldp x20,x19,[sp, #0x20]
02c52814  ldp x22,x21,[sp, #0x10]
02c52818  ldr x30,[sp], #0x30
02c5281c  ret
02c52820  mov x0,x8
02c52824  bl 0x029f607c
