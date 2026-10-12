02c46b9c  str x30,[sp, #-0x20]!
02c46ba0  stp x20,x19,[sp, #0x10]
02c46ba4  adrp x20,0x625c000
02c46ba8  mov x19,x0
02c46bac  ldrb w8,[x20, #0xe6]
02c46bb0  tbnz w8,#0x0,0x02c46bc8
02c46bb4  adrp x0,0x5e5d000
02c46bb8  ldr x0,[x0, #0x338]
02c46bbc  bl 0x029f5a50
02c46bc0  mov w8,#0x1
02c46bc4  strb w8,[x20, #0xe6]
02c46bc8  ldrb w8,[x19, #0x108]
02c46bcc  cbz w8,0x02c46be0
02c46bd0  mov x0,x19
02c46bd4  ldp x20,x19,[sp, #0x10]
02c46bd8  ldr x30,[sp], #0x20
02c46bdc  b 0x02c46c20
02c46be0  adrp x8,0x5e5d000
02c46be4  mov w9,#0x1
02c46be8  ldr x8,[x8, #0x338]
02c46bec  ldr w20,[x19, #0xd0]
02c46bf0  strb w9,[x19, #0x7e]
02c46bf4  ldr x0,[x8]
02c46bf8  ldr w8,[x0, #0xe4]
02c46bfc  cbnz w8,0x02c46c04
02c46c00  bl 0x029f5bd0
02c46c04  lsl w0,w20,#0x1
02c46c08  mov x1,xzr
02c46c0c  bl 0x02b7ed10
02c46c10  mov x0,x19
02c46c14  ldp x20,x19,[sp, #0x10]
02c46c18  ldr x30,[sp], #0x20
02c46c1c  b 0x02c46450
