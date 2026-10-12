02be1828  sub sp,sp,#0x30
02be182c  str x30,[sp, #0x10]
02be1830  stp x20,x19,[sp, #0x20]
02be1834  adrp x20,0x625b000
02be1838  adrp x19,0x5e5e000
02be183c  ldrb w8,[x20, #0xc7a]
02be1840  ldr x19,[x19, #0x528]
02be1844  tbnz w8,#0x0,0x02be1868
02be1848  adrp x0,0x5e5e000
02be184c  ldr x0,[x0, #0x528]
02be1850  bl 0x029f5a50
02be1854  adrp x0,0x5e60000
02be1858  ldr x0,[x0, #0xe78]
02be185c  bl 0x029f5a50
02be1860  mov w8,#0x1
02be1864  strb w8,[x20, #0xc7a]
02be1868  ldr x0,[x19]
02be186c  adrp x19,0x5e60000
02be1870  ldr w8,[x0, #0xe4]
02be1874  ldr x19,[x19, #0xe78]
02be1878  cbnz w8,0x02be1880
02be187c  bl 0x029f5bd0
02be1880  ldr x0,[x19]
02be1884  mov w1,#0x1
02be1888  mov w2,wzr
02be188c  mov w3,#0x1
02be1890  mov w4,wzr
02be1894  mov x5,xzr
02be1898  mov x6,xzr
02be189c  mov w7,#0x1
02be18a0  str xzr,[sp]
02be18a4  bl 0x02bccb00
02be18a8  ldp x20,x19,[sp, #0x20]
02be18ac  ldr x30,[sp, #0x10]
02be18b0  add sp,sp,#0x30
02be18b4  ret
