02ca2178  str x30,[sp, #-0x40]!
02ca217c  stp x24,x23,[sp, #0x10]
02ca2180  stp x22,x21,[sp, #0x20]
02ca2184  stp x20,x19,[sp, #0x30]
02ca2188  adrp x20,0x625c000
02ca218c  adrp x22,0x5e59000
02ca2190  adrp x21,0x5e64000
02ca2194  adrp x24,0x5e5e000
02ca2198  ldr x22,[x22, #0x288]
02ca219c  ldrb w8,[x20, #0x48e]
02ca21a0  ldr x21,[x21, #0x8e0]
02ca21a4  ldr x24,[x24, #0x3e0]
02ca21a8  mov x19,x0
02ca21ac  tbnz w8,#0x0,0x02ca21e8
02ca21b0  adrp x0,0x5e59000
02ca21b4  ldr x0,[x0, #0x288]
02ca21b8  bl 0x029f5a50
02ca21bc  adrp x0,0x5e5d000
02ca21c0  ldr x0,[x0, #0x920]
02ca21c4  bl 0x029f5a50
02ca21c8  adrp x0,0x5e64000
02ca21cc  ldr x0,[x0, #0x8e0]
02ca21d0  bl 0x029f5a50
02ca21d4  adrp x0,0x5e5e000
02ca21d8  ldr x0,[x0, #0x3e0]
02ca21dc  bl 0x029f5a50
02ca21e0  mov w8,#0x1
02ca21e4  strb w8,[x20, #0x48e]
02ca21e8  adrp x23,0x5e5d000
02ca21ec  ldr x23,[x23, #0x920]
02ca21f0  ldr x0,[x22]
02ca21f4  bl 0x029f5cec
02ca21f8  ldr x2,[x21]
02ca21fc  mov x1,x19
02ca2200  mov x3,xzr
02ca2204  mov x20,x0
02ca2208  bl 0x047b3618
02ca220c  ldr x0,[x24]
02ca2210  ldr w8,[x0, #0xe4]
02ca2214  cbnz w8,0x02ca221c
02ca2218  bl 0x029f5bd0
02ca221c  mov x0,x20
02ca2220  bl 0x02ca0604
02ca2224  ldr x0,[x22]
02ca2228  bl 0x029f5cec
02ca222c  ldr x2,[x21]
02ca2230  mov x1,x19
02ca2234  mov x3,xzr
02ca2238  mov x20,x0
02ca223c  bl 0x047b3618
02ca2240  ldr x0,[x23]
02ca2244  ldr w8,[x0, #0xe4]
02ca2248  cbnz w8,0x02ca2250
02ca224c  bl 0x029f5bd0
02ca2250  mov x0,x20
02ca2254  ldp x20,x19,[sp, #0x30]
02ca2258  ldp x22,x21,[sp, #0x20]
02ca225c  mov x1,xzr
02ca2260  ldp x24,x23,[sp, #0x10]
02ca2264  ldr x30,[sp], #0x40
02ca2268  b 0x02c9c164
