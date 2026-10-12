02c7ce70  ldr x9,[x0, #0x40]
02c7ce74  cbz x9,0x02c7ceac
02c7ce78  ldr x8,[x9, #0x18]
02c7ce7c  cmp w8,#0x1
02c7ce80  b.lt 0x02c7ceac
02c7ce84  and x8,x8,#0xffffffff
02c7ce88  add x9,x9,#0x20
02c7ce8c  mov w10,#0xffffffff
02c7ce90  ldr w11,[x9]
02c7ce94  cmp w11,w1
02c7ce98  b.ne 0x02c7cea0
02c7ce9c  str w10,[x9]
02c7cea0  subs x8,x8,#0x1
02c7cea4  add x9,x9,#0x4
02c7cea8  b.ne 0x02c7ce90
02c7ceac  ldr x9,[x0, #0x48]
02c7ceb0  cbz x9,0x02c7cee8
02c7ceb4  ldr x8,[x9, #0x18]
02c7ceb8  cmp w8,#0x1
02c7cebc  b.lt 0x02c7cee8
02c7cec0  and x8,x8,#0xffffffff
02c7cec4  add x9,x9,#0x20
02c7cec8  mov w10,#0xffffffff
02c7cecc  ldr w11,[x9]
02c7ced0  cmp w11,w1
02c7ced4  b.ne 0x02c7cedc
02c7ced8  str w10,[x9]
02c7cedc  subs x8,x8,#0x1
02c7cee0  add x9,x9,#0x4
02c7cee4  b.ne 0x02c7cecc
02c7cee8  b 0x02c7ceec
