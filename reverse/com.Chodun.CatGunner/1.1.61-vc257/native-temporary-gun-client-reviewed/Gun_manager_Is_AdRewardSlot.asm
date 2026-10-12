02c68408  ldr w8,[x0, #0xc0]
02c6840c  cmn w8,#0x1
02c68410  ccmp w8,w1,#0x0,ne
02c68414  cset w0,eq
02c68418  ret
