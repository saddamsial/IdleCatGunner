02ba6acc  str x30,[sp, #-0x10]!
02ba6ad0  cbz w1,0x02ba6afc
02ba6ad4  ldr x8,[x0, #0x40]
02ba6ad8  cbz x8,0x02ba6b04
02ba6adc  ldr w9,[x8, #0x18]
02ba6ae0  cmp w9,w2
02ba6ae4  b.ls 0x02ba6b1c
02ba6ae8  add x8,x8,w2, SXTW 
02ba6aec  ldrb w8,[x8, #0x20]
02ba6af0  cbz w8,0x02ba6b08
02ba6af4  mov w0,#0x2
02ba6af8  b 0x02ba6b14
02ba6afc  ldr x8,[x0, #0x38]
02ba6b00  cbnz x8,0x02ba6adc
02ba6b04  bl 0x029f5cfc
02ba6b08  ldr w8,[x0, #0x48]
02ba6b0c  cmp w8,w2
02ba6b10  cset w0,gt
02ba6b14  ldr x30,[sp], #0x10
02ba6b18  ret
02ba6b1c  bl 0x029f5d04
