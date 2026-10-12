02c30760  stp x30,x25,[sp, #-0x40]!
02c30764  stp x24,x23,[sp, #0x10]
02c30768  stp x22,x21,[sp, #0x20]
02c3076c  stp x20,x19,[sp, #0x30]
02c30770  mov w19,w2
02c30774  mov w21,w1
02c30778  mov x20,x0
02c3077c  bl 0x02c30434
02c30780  mov w22,w0
02c30784  mov x0,x20
02c30788  bl 0x02c30434
02c3078c  cmp w0,#0x1
02c30790  b.lt 0x02c30834
02c30794  mul w21,w22,w21
02c30798  mov w22,#0x4
02c3079c  ldr x8,[x20, #0x68]
02c307a0  cbz x8,0x02c30848
02c307a4  sub x25,x22,#0x4
02c307a8  ldr w23,[x8, #0x18]
02c307ac  add x24,x25,x21
02c307b0  cmp w24,w23
02c307b4  b.ge 0x02c307ec
02c307b8  ldr x9,[x20, #0x28]
02c307bc  cbz x9,0x02c30848
02c307c0  ldr w10,[x9, #0x18]
02c307c4  cmp w25,w10
02c307c8  b.cs 0x02c3084c
02c307cc  cmp w24,w23
02c307d0  b.cs 0x02c3084c
02c307d4  ldr x0,[x9, x22, LSL #0x3]
02c307d8  cbz x0,0x02c30848
02c307dc  add x8,x8,w24, SXTW  #0x3
02c307e0  mov x2,xzr
02c307e4  ldr x1,[x8, #0x20]
02c307e8  bl 0x02c30f64
02c307ec  ldr x8,[x20, #0x38]
02c307f0  cbz x8,0x02c30848
02c307f4  ldr w9,[x8, #0x18]
02c307f8  cmp w25,w9
02c307fc  b.cs 0x02c3084c
02c30800  ldr x0,[x8, x22, LSL #0x3]
02c30804  cbz x0,0x02c30848
02c30808  cmp w24,w23
02c3080c  mov x2,xzr
02c30810  cset w8,lt
02c30814  and w1,w8,w19
02c30818  bl 0x057dff3c
02c3081c  mov x0,x20
02c30820  bl 0x02c30434
02c30824  add x22,x22,#0x1
02c30828  sub w8,w22,#0x4
02c3082c  cmp w8,w0
02c30830  b.lt 0x02c3079c
02c30834  ldp x20,x19,[sp, #0x30]
02c30838  ldp x22,x21,[sp, #0x20]
02c3083c  ldp x24,x23,[sp, #0x10]
02c30840  ldp x30,x25,[sp], #0x40
02c30844  ret
02c30848  bl 0x029f5cfc
02c3084c  bl 0x029f5d04
