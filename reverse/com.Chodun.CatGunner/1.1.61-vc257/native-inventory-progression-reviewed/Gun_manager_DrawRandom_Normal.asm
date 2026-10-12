02c687b4  stp x30,x21,[sp, #-0x20]!
02c687b8  stp x20,x19,[sp, #0x10]
02c687bc  adrp x20,0x625c000
02c687c0  adrp x21,0x5e5d000
02c687c4  mov x19,x0
02c687c8  ldrb w8,[x20, #0x264]
02c687cc  ldr x21,[x21, #0x338]
02c687d0  tbnz w8,#0x0,0x02c687e8
02c687d4  adrp x0,0x5e5d000
02c687d8  ldr x0,[x0, #0x338]
02c687dc  bl 0x029f5a50
02c687e0  mov w8,#0x1
02c687e4  strb w8,[x20, #0x264]
02c687e8  ldr x0,[x21]
02c687ec  ldr w8,[x0, #0xe4]
02c687f0  cbnz w8,0x02c687fc
02c687f4  bl 0x029f5bd0
02c687f8  ldr x0,[x21]
02c687fc  ldr x8,[x0, #0xb8]
02c68800  mov x2,xzr
02c68804  ldp x0,x1,[x8, #0x90]
02c68808  bl 0x02b1e644
02c6880c  cmp w0,#0x64
02c68810  b.ge 0x02c68858
02c68814  adrp x19,0x625b000
02c68818  ldrb w8,[x19, #0xa57]
02c6881c  cbnz w8,0x02c68834
02c68820  adrp x0,0x5e5d000
02c68824  ldr x0,[x0, #0xd70]
02c68828  bl 0x029f5a50
02c6882c  mov w8,#0x1
02c68830  strb w8,[x19, #0xa57]
02c68834  adrp x8,0x5e5d000
02c68838  ldr x8,[x8, #0xd70]
02c6883c  ldr x8,[x8]
02c68840  ldr x8,[x8, #0xb8]
02c68844  ldr x0,[x8]
02c68848  cbz x0,0x02c68914
02c6884c  fmov s0,0x3f800000
02c68850  mov w1,#0x5
02c68854  b 0x02c688f4
02c68858  mov x0,x19
02c6885c  mov w1,wzr
02c68860  bl 0x02c686ac
02c68864  cmn w0,#0x1
02c68868  b.eq 0x02c68908
02c6886c  mov w20,w0
02c68870  ldr x0,[x21]
02c68874  ldr w8,[x0, #0xe4]
02c68878  cbnz w8,0x02c68880
02c6887c  bl 0x029f5bd0
02c68880  mov w0,#0x64
02c68884  mov w1,#0x1
02c68888  mov x2,xzr
02c6888c  mov w21,#0x1
02c68890  bl 0x02b7f278
02c68894  ldr w8,[x19, #0xd4]
02c68898  mov x0,x19
02c6889c  mov w1,w20
02c688a0  add w8,w8,#0x1
02c688a4  str w8,[x19, #0xd4]
02c688a8  bl 0x02c68918
02c688ac  mov x0,x19
02c688b0  mov w1,w20
02c688b4  bl 0x02c68ac8
02c688b8  adrp x19,0x625b000
02c688bc  ldrb w8,[x19, #0xa57]
02c688c0  cbnz w8,0x02c688d4
02c688c4  adrp x0,0x5e5d000
02c688c8  ldr x0,[x0, #0xd70]
02c688cc  bl 0x029f5a50
02c688d0  strb w21,[x19, #0xa57]
02c688d4  adrp x8,0x5e5d000
02c688d8  ldr x8,[x8, #0xd70]
02c688dc  ldr x8,[x8]
02c688e0  ldr x8,[x8, #0xb8]
02c688e4  ldr x0,[x8]
02c688e8  cbz x0,0x02c68914
02c688ec  fmov s0,0x3f800000
02c688f0  mov w1,#0x2
02c688f4  ldp x20,x19,[sp, #0x10]
02c688f8  mov x2,xzr
02c688fc  mov x3,xzr
02c68900  ldp x30,x21,[sp], #0x20
02c68904  b 0x02c1f10c
02c68908  ldp x20,x19,[sp, #0x10]
02c6890c  ldp x30,x21,[sp], #0x20
02c68910  ret
02c68914  bl 0x029f5cfc
