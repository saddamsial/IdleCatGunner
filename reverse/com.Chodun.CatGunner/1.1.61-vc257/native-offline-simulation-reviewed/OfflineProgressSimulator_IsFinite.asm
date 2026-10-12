02c08d70  fmov w8,s0
02c08d74  ubfx w8,w8,#0x17,#0x8
02c08d78  cmp w8,#0xff
02c08d7c  cset w0,cc
02c08d80  ret
