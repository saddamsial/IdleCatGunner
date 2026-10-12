02b829ac  str x30,[sp, #-0x30]!
02b829b0  stp x22,x21,[sp, #0x10]
02b829b4  stp x20,x19,[sp, #0x20]
02b829b8  adrp x20,0x625b000
02b829bc  adrp x21,0x5e5d000
02b829c0  mov x19,x0
02b829c4  ldrb w8,[x20, #0x8df]
02b829c8  ldr x21,[x21, #0x5e8]
02b829cc  tbnz w8,#0x0,0x02b829e4
02b829d0  adrp x0,0x5e5d000
02b829d4  ldr x0,[x0, #0x5e8]
02b829d8  bl 0x029f5a50
02b829dc  mov w8,#0x1
02b829e0  strb w8,[x20, #0x8df]
02b829e4  ldr x0,[x21]
02b829e8  mov w1,#0x41
02b829ec  bl 0x029f5b40
02b829f0  mov x20,x0
02b829f4  cbz x19,0x02b82a40
02b829f8  mov x0,x19
02b829fc  mov x1,xzr
02b82a00  bl 0x057912b4
02b82a04  cbz w0,0x02b82a40
02b82a08  mov x21,xzr
02b82a0c  add x22,x20,#0x20
02b82a10  scvtf s0,w21,#0x6
02b82a14  mov x0,x19
02b82a18  mov x1,xzr
02b82a1c  bl 0x05790ba0
02b82a20  cbz x20,0x02b82a54
02b82a24  ldr w8,[x20, #0x18]
02b82a28  cmp x21,x8
02b82a2c  b.cs 0x02b82a58
02b82a30  str s0,[x22,x21, lsl #2]
02b82a34  add x21,x21,#0x1
02b82a38  cmp x21,#0x41
02b82a3c  b.ne 0x02b82a10
02b82a40  mov x0,x20
02b82a44  ldp x20,x19,[sp, #0x20]
02b82a48  ldp x22,x21,[sp, #0x10]
02b82a4c  ldr x30,[sp], #0x30
02b82a50  ret
02b82a54  bl 0x029f5cfc
02b82a58  bl 0x029f5d04
