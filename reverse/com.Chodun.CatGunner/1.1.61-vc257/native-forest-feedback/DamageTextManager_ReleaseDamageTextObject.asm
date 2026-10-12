02b83b64  str x30,[sp, #-0x20]!
02b83b68  stp x20,x19,[sp, #0x10]
02b83b6c  cbz x1,0x02b83bc0
02b83b70  mov x19,x0
02b83b74  mov x0,x1
02b83b78  mov x20,x1
02b83b7c  bl 0x02b83bc4
02b83b80  ldr x1,[x19, #0x10]!
02b83b84  mov x0,x20
02b83b88  str x1,[x0, #0x20]!
02b83b8c  bl 0x029f59f4
02b83b90  mov x0,x19
02b83b94  mov x1,x20
02b83b98  str x20,[x19]
02b83b9c  bl 0x029f59f4
02b83ba0  adrp x8,0x1170000
02b83ba4  ldr d0,[x19, #0x10]
02b83ba8  ldr d1,[x8, #0x6d0]
02b83bac  add v0.2S,v0.2S,v1.2S
02b83bb0  str d0,[x19, #0x10]
02b83bb4  ldp x20,x19,[sp, #0x10]
02b83bb8  ldr x30,[sp], #0x20
02b83bbc  ret
02b83bc0  bl 0x029f5cfc
