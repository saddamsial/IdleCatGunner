02c32ab4  str x30,[sp, #-0x10]!
02c32ab8  bl 0x02c32bd0
02c32abc  cbz x0,0x02c32ae8
02c32ac0  ldrb w8,[x0, #0x20]
02c32ac4  cbz w8,0x02c32ad8
02c32ac8  ldr w8,[x0, #0x1c]
02c32acc  add w8,w8,#0x1
02c32ad0  str w8,[x0, #0x1c]
02c32ad4  b 0x02c32ae0
02c32ad8  mov w8,#0x1
02c32adc  strb w8,[x0, #0x20]
02c32ae0  ldr x30,[sp], #0x10
02c32ae4  ret
02c32ae8  bl 0x029f5cfc
