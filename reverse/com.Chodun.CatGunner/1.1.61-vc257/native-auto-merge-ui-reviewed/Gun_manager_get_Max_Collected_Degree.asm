02c69554  str x30,[sp, #-0x10]!
02c69558  ldr x8,[x0, #0x30]
02c6955c  cbz x8,0x02c695a4
02c69560  ldr x9,[x8, #0x18]
02c69564  and x10,x9,#0xffffffff
02c69568  sub x11,x10,#0x1
02c6956c  mov w10,w9
02c69570  subs w10,w10,#0x1
02c69574  b.mi 0x02c695a4
02c69578  cmp w10,w9
02c6957c  b.cs 0x02c695b0
02c69580  add x12,x8,w11, UXTW 
02c69584  sub x11,x11,#0x1
02c69588  ldrb w12,[x12, #0x20]
02c6958c  cbz w12,0x02c69570
02c69590  mov w8,#0xcccd
02c69594  movk w8,#0xcccc, LSL #16
02c69598  umull x8,w10,w8
02c6959c  lsr x0,x8,#0x22
02c695a0  b 0x02c695a8
02c695a4  mov w0,#0xffffffff
02c695a8  ldr x30,[sp], #0x10
02c695ac  ret
02c695b0  bl 0x029f5d04
