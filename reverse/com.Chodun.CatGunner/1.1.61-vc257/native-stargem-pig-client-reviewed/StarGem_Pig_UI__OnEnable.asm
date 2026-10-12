02ca207c  str x30,[sp, #-0x40]!
02ca2080  stp x24,x23,[sp, #0x10]
02ca2084  stp x22,x21,[sp, #0x20]
02ca2088  stp x20,x19,[sp, #0x30]
02ca208c  adrp x20,0x625c000
02ca2090  adrp x22,0x5e59000
02ca2094  adrp x21,0x5e64000
02ca2098  adrp x24,0x5e5e000
02ca209c  ldr x22,[x22, #0x288]
02ca20a0  ldrb w8,[x20, #0x48d]
02ca20a4  ldr x21,[x21, #0x8e0]
02ca20a8  ldr x24,[x24, #0x3e0]
02ca20ac  mov x19,x0
02ca20b0  tbnz w8,#0x0,0x02ca20ec
02ca20b4  adrp x0,0x5e59000
02ca20b8  ldr x0,[x0, #0x288]
02ca20bc  bl 0x029f5a50
02ca20c0  adrp x0,0x5e5d000
02ca20c4  ldr x0,[x0, #0x920]
02ca20c8  bl 0x029f5a50
02ca20cc  adrp x0,0x5e64000
02ca20d0  ldr x0,[x0, #0x8e0]
02ca20d4  bl 0x029f5a50
02ca20d8  adrp x0,0x5e5e000
02ca20dc  ldr x0,[x0, #0x3e0]
02ca20e0  bl 0x029f5a50
02ca20e4  mov w8,#0x1
02ca20e8  strb w8,[x20, #0x48d]
02ca20ec  adrp x23,0x5e5d000
02ca20f0  ldr x23,[x23, #0x920]
02ca20f4  ldr x0,[x22]
02ca20f8  bl 0x029f5cec
02ca20fc  ldr x2,[x21]
02ca2100  mov x1,x19
02ca2104  mov x3,xzr
02ca2108  mov x20,x0
02ca210c  bl 0x047b3618
02ca2110  ldr x0,[x24]
02ca2114  ldr w8,[x0, #0xe4]
02ca2118  cbnz w8,0x02ca2120
02ca211c  bl 0x029f5bd0
02ca2120  mov x0,x20
02ca2124  bl 0x02ca0528
02ca2128  ldr x0,[x22]
02ca212c  bl 0x029f5cec
02ca2130  ldr x2,[x21]
02ca2134  mov x1,x19
02ca2138  mov x3,xzr
02ca213c  mov x20,x0
02ca2140  bl 0x047b3618
02ca2144  ldr x0,[x23]
02ca2148  ldr w8,[x0, #0xe4]
02ca214c  cbnz w8,0x02ca2154
02ca2150  bl 0x029f5bd0
02ca2154  mov x0,x20
02ca2158  mov x1,xzr
02ca215c  bl 0x02c9c088
02ca2160  mov x0,x19
02ca2164  ldp x20,x19,[sp, #0x30]
02ca2168  ldp x22,x21,[sp, #0x20]
02ca216c  ldp x24,x23,[sp, #0x10]
02ca2170  ldr x30,[sp], #0x40
02ca2174  b 0x02ca08f4
