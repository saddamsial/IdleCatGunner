02c6bdfc  str x30,[sp, #-0x10]!
02c6be00  ldr x10,[x0, #0x20]
02c6be04  cbz x10,0x02c6be54
02c6be08  ldr x9,[x10, #0x18]
02c6be0c  cmp w9,#0x1
02c6be10  b.lt 0x02c6be44
02c6be14  bic w8,w9,w9, ASR #0x1f
02c6be18  mov w0,wzr
02c6be1c  and x9,x9,#0xffffffff
02c6be20  add x10,x10,#0x20
02c6be24  cbz x9,0x02c6be50
02c6be28  ldr w11,[x10], #0x4
02c6be2c  sub x8,x8,#0x1
02c6be30  sub x9,x9,#0x1
02c6be34  cmn w11,#0x1
02c6be38  cinc w0,w0,ne
02c6be3c  cbnz x8,0x02c6be24
02c6be40  b 0x02c6be48
02c6be44  mov w0,wzr
02c6be48  ldr x30,[sp], #0x10
02c6be4c  ret
02c6be50  bl 0x029f5d04
02c6be54  bl 0x029f5cfc
