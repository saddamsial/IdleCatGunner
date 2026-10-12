02cadce4  stp x30,x21,[sp, #-0x20]!
02cadce8  stp x20,x19,[sp, #0x10]
02cadcec  adrp x21,0x625c000
02cadcf0  adrp x20,0x5e5d000
02cadcf4  mov x19,x0
02cadcf8  ldrb w8,[x21, #0x525]
02cadcfc  ldr x20,[x20, #0x338]
02cadd00  tbnz w8,#0x0,0x02cadd18
02cadd04  adrp x0,0x5e5d000
02cadd08  ldr x0,[x0, #0x338]
02cadd0c  bl 0x029f5a50
02cadd10  mov w8,#0x1
02cadd14  strb w8,[x21, #0x525]
02cadd18  ldr x0,[x20]
02cadd1c  ldr w8,[x0, #0xe4]
02cadd20  cbnz w8,0x02cadd2c
02cadd24  bl 0x029f5bd0
02cadd28  ldr x0,[x20]
02cadd2c  ldr x8,[x0, #0xb8]
02cadd30  ldr x1,[x19, #0xc0]
02cadd34  strb wzr,[x8]
02cadd38  cbz x1,0x02cadd48
02cadd3c  mov x0,x19
02cadd40  mov x2,xzr
02cadd44  bl 0x057e2250
02cadd48  mov x0,x19
02cadd4c  bl 0x02caac18
02cadd50  ldr x0,[x19, #0x58]
02cadd54  cbz x0,0x02cadd80
02cadd58  mov w1,wzr
02cadd5c  mov x2,xzr
02cadd60  bl 0x057dff3c
02cadd64  ldr x0,[x19, #0x60]
02cadd68  cbz x0,0x02cadd80
02cadd6c  ldp x20,x19,[sp, #0x10]
02cadd70  mov w1,wzr
02cadd74  mov x2,xzr
02cadd78  ldp x30,x21,[sp], #0x20
02cadd7c  b 0x057dff3c
02cadd80  bl 0x029f5cfc
