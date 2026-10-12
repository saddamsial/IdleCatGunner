02cac804  orr w8,w1,w1, LSL #0x8
02cac808  and w8,w8,#0xff00ff
02cac80c  orr w8,w8,w8, LSL #0x4
02cac810  and w8,w8,#0xf0f0f0f
02cac814  orr w8,w8,w8, LSL #0x2
02cac818  and w8,w8,#0x33333333
02cac81c  orr w8,w8,w8, LSL #0x1
02cac820  and w0,w8,#0x55555555
02cac824  ret
