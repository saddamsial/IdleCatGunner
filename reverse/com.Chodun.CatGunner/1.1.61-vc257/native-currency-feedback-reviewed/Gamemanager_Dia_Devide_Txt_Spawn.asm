02b807fc  str d10,[sp, #-0x40]!
02b80800  stp d9,d8,[sp, #0x10]
02b80804  stp x30,x21,[sp, #0x20]
02b80808  stp x20,x19,[sp, #0x30]
02b8080c  fmov s8,s2
02b80810  fmov s9,s1
02b80814  adrp x21,0x625b000
02b80818  fmov s10,s0
02b8081c  adrp x20,0x5e59000
02b80820  ldrb w8,[x21, #0x8cd]
02b80824  ldr x20,[x20, #0x1c0]
02b80828  mov x19,x0
02b8082c  tbnz w8,#0x0,0x02b80850
02b80830  adrp x0,0x5e59000
02b80834  ldr x0,[x0, #0x1c0]
02b80838  bl 0x029f5a50
02b8083c  adrp x0,0x5e5d000
02b80840  ldr x0,[x0, #0x538]
02b80844  bl 0x029f5a50
02b80848  mov w8,#0x1
02b8084c  strb w8,[x21, #0x8cd]
02b80850  mov x0,xzr
02b80854  bl 0x05797adc
02b80858  ldr x8,[x20]
02b8085c  mov x20,x0
02b80860  ldr w9,[x8, #0xe4]
02b80864  cbnz w9,0x02b80870
02b80868  mov x0,x8
02b8086c  bl 0x029f5bd0
02b80870  mov x0,x20
02b80874  mov x1,xzr
02b80878  mov x2,xzr
02b8087c  bl 0x057dfa70
02b80880  tbz w0,#0x0,0x02b808bc
02b80884  bl 0x02b80610
02b80888  cbz x0,0x02b808d0
02b8088c  adrp x8,0x5e5d000
02b80890  mov x2,x19
02b80894  fmov s1,s9
02b80898  ldr x8,[x8, #0x538]
02b8089c  fmov s2,s8
02b808a0  fmov s0,s10
02b808a4  ldp x20,x19,[sp, #0x30]
02b808a8  ldp x30,x21,[sp, #0x20]
02b808ac  ldr x1,[x8]
02b808b0  ldp d9,d8,[sp, #0x10]
02b808b4  ldr d10,[sp], #0x40
02b808b8  b 0x02b80694
02b808bc  ldp x20,x19,[sp, #0x30]
02b808c0  ldp x30,x21,[sp, #0x20]
02b808c4  ldp d9,d8,[sp, #0x10]
02b808c8  ldr d10,[sp], #0x40
02b808cc  ret
02b808d0  bl 0x029f5cfc
