02c53ab4  ldr x8,[x0, #0x20]
02c53ab8  cbz x8,0x02c53acc
02c53abc  ldr w8,[x8, #0x18]
02c53ac0  cmp w8,#0x8
02c53ac4  b.ne 0x02c53acc
02c53ac8  ret
02c53acc  b 0x02c5412c
