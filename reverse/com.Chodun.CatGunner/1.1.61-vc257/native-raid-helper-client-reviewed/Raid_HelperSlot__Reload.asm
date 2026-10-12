02c515e4  sub sp,sp,#0xf0
02c515e8  stp x29,x30,[sp, #0x90]
02c515ec  stp x28,x27,[sp, #0xa0]
02c515f0  stp x26,x25,[sp, #0xb0]
02c515f4  stp x24,x23,[sp, #0xc0]
02c515f8  stp x22,x21,[sp, #0xd0]
02c515fc  stp x20,x19,[sp, #0xe0]
02c51600  adrp x20,0x625c000
02c51604  adrp x27,0x5e5e000
02c51608  mov x19,x0
02c5160c  ldrb w8,[x20, #0x161]
02c51610  ldr x27,[x27, #0x70]
02c51614  tbnz w8,#0x0,0x02c5165c
02c51618  adrp x0,0x5e5d000
02c5161c  ldr x0,[x0, #0xd40]
02c51620  bl 0x029f5a50
02c51624  adrp x0,0x5e59000
02c51628  ldr x0,[x0, #0x1c0]
02c5162c  bl 0x029f5a50
02c51630  adrp x0,0x5e5e000
02c51634  ldr x0,[x0, #0x70]
02c51638  bl 0x029f5a50
02c5163c  adrp x0,0x5e5e000
02c51640  ldr x0,[x0, #0x58]
02c51644  bl 0x029f5a50
02c51648  adrp x0,0x5e5e000
02c5164c  ldr x0,[x0, #0x6d0]
02c51650  bl 0x029f5a50
02c51654  mov w8,#0x1
02c51658  strb w8,[x20, #0x161]
02c5165c  movi v0.2D,#0x0
02c51660  ldr x0,[x27]
02c51664  str wzr,[sp, #0x8c]
02c51668  adrp x26,0x5e59000
02c5166c  ldr w8,[x0, #0xe4]
02c51670  ldr x26,[x26, #0x1c0]
02c51674  stp q0,q0,[sp, #0x60]
02c51678  cbnz w8,0x02c51684
02c5167c  bl 0x029f5bd0
02c51680  ldr x0,[x27]
02c51684  ldr x8,[x26]
02c51688  ldr x9,[x0, #0xb8]
02c5168c  ldr w10,[x8, #0xe4]
02c51690  ldr x20,[x9]
02c51694  cbnz w10,0x02c516a0
02c51698  mov x0,x8
02c5169c  bl 0x029f5bd0
02c516a0  mov x0,x20
02c516a4  mov x1,xzr
02c516a8  mov x2,xzr
02c516ac  bl 0x057dfa70
02c516b0  tbz w0,#0x0,0x02c516c8
02c516b4  cbz x20,0x02c5189c
02c516b8  mov x0,x20
02c516bc  bl 0x02c444d8
02c516c0  mov w20,w0
02c516c4  b 0x02c516cc
02c516c8  mov w20,wzr
02c516cc  ldr x0,[x26]
02c516d0  ldr x21,[x19, #0x38]
02c516d4  ldr w8,[x0, #0xe4]
02c516d8  cbnz w8,0x02c516e0
02c516dc  bl 0x029f5bd0
02c516e0  mov x0,x21
02c516e4  mov x1,xzr
02c516e8  mov x2,xzr
02c516ec  bl 0x057dfa70
02c516f0  tbz w0,#0x0,0x02c5170c
02c516f4  ldr x0,[x19, #0x38]
02c516f8  cbz x0,0x02c5189c
02c516fc  mov w8,#0x1
02c51700  mov x2,xzr
02c51704  bic w1,w8,w20
02c51708  bl 0x057dff3c
02c5170c  ldr x0,[x27]
02c51710  ldr w8,[x0, #0xe4]
02c51714  cbnz w8,0x02c5171c
02c51718  bl 0x029f5bd0
02c5171c  bl 0x02c44548
02c51720  tbnz w0,#0x1f,0x02c51b20
02c51724  adrp x23,0x5e5d000
02c51728  mov w21,w0
02c5172c  ldr x23,[x23, #0xd40]
02c51730  ldr x0,[x26]
02c51734  ldr x8,[x23]
02c51738  ldr w9,[x0, #0xe4]
02c5173c  ldr x8,[x8, #0xb8]
02c51740  ldr x20,[x8]
02c51744  cbnz w9,0x02c5174c
02c51748  bl 0x029f5bd0
02c5174c  mov x0,x20
02c51750  mov x1,xzr
02c51754  mov x2,xzr
02c51758  bl 0x057e14b4
02c5175c  tbnz w0,#0x0,0x02c51b20
02c51760  ldr x8,[x23]
02c51764  ldr x8,[x8, #0xb8]
02c51768  ldr x8,[x8]
02c5176c  cbz x8,0x02c5189c
02c51770  ldr x8,[x8, #0x20]
02c51774  cbz x8,0x02c5189c
02c51778  ldr w9,[x8, #0x18]
02c5177c  cmp w21,w9
02c51780  b.ge 0x02c51b20
02c51784  ldr x0,[x27]
02c51788  add x8,x8,w21, UXTW  #0x3
02c5178c  ldr w9,[x0, #0xe4]
02c51790  ldr x28,[x8, #0x20]
02c51794  cbnz w9,0x02c5179c
02c51798  bl 0x029f5bd0
02c5179c  bl 0x02c51b44
02c517a0  mov w22,w0
02c517a4  str w0,[sp, #0x8c]
02c517a8  mov w0,w21
02c517ac  bl 0x02c51cc8
02c517b0  ldr x8,[x23]
02c517b4  ldr x8,[x8, #0xb8]
02c517b8  ldr x8,[x8]
02c517bc  cbz x8,0x02c5189c
02c517c0  ldr x8,[x8, #0x48]
02c517c4  cbz x8,0x02c5189c
02c517c8  ldr w9,[x8, #0x18]
02c517cc  cmp w21,w9
02c517d0  b.cs 0x02c51b40
02c517d4  mov w20,w0
02c517d8  ldr x0,[x19, #0x20]
02c517dc  cbz x0,0x02c5189c
02c517e0  mov w29,w21
02c517e4  ldr x24,[x19, #0x28]
02c517e8  mov x2,xzr
02c517ec  add x8,x8,x29, LSL #0x3
02c517f0  ldr x23,[x8, #0x20]
02c517f4  mov x1,x23
02c517f8  bl 0x058d34cc
02c517fc  cbz x24,0x02c5189c
02c51800  mov w8,#0xcccd
02c51804  mov x0,x24
02c51808  mov x1,x23
02c5180c  movk w8,#0xcccc, LSL #16
02c51810  mov x2,xzr
02c51814  umull x8,w21,w8
02c51818  lsr x25,x8,#0x22
02c5181c  bl 0x058d34cc
02c51820  ldr x23,[x19, #0x30]
02c51824  mov w0,w25
02c51828  mov x1,xzr
02c5182c  bl 0x02c5b234
02c51830  cbz x23,0x02c5189c
02c51834  ldr x8,[x23]
02c51838  mov x0,x23
02c5183c  ldr x9,[x8, #0x2a8]
02c51840  ldr x1,[x8, #0x2b0]
02c51844  blr x9
02c51848  ldr x8,[x19, #0x58]
02c5184c  cbz x8,0x02c5189c
02c51850  orr x9,xzr,#0x3333333333333333
02c51854  mov x24,xzr
02c51858  movk x9,#0x3334
02c5185c  umulh x23,x29,x9
02c51860  ldr w9,[x8, #0x18]
02c51864  cmp w24,w9
02c51868  b.ge 0x02c518a0
02c5186c  cmp w24,w9
02c51870  b.cs 0x02c51b40
02c51874  add x8,x8,x24, LSL #0x3
02c51878  ldr x0,[x8, #0x20]
02c5187c  cbz x0,0x02c5189c
02c51880  cmp w23,w24
02c51884  mov x2,xzr
02c51888  cset w1,eq
02c5188c  bl 0x057dff3c
02c51890  ldr x8,[x19, #0x58]
02c51894  add x24,x24,#0x1
02c51898  cbnz x8,0x02c51860
02c5189c  bl 0x029f5cfc
02c518a0  ldr x0,[x27]
02c518a4  ldr x23,[x19, #0x60]
02c518a8  ldr w8,[x0, #0xe4]
02c518ac  cbnz w8,0x02c518b4
02c518b0  bl 0x029f5bd0
02c518b4  add x8,sp,#0x40
02c518b8  mov w0,w21
02c518bc  bl 0x02c51d80
02c518c0  adrp x24,0x5e5e000
02c518c4  ldr x24,[x24, #0x58]
02c518c8  ldr x0,[x24]
02c518cc  ldr w8,[x0, #0xe4]
02c518d0  cbnz w8,0x02c518d8
02c518d4  bl 0x029f5bd0
02c518d8  ldp q0,q1,[sp, #0x40]
02c518dc  add x8,sp,#0x20
02c518e0  mov x0,sp
02c518e4  mov w1,w22
02c518e8  mov x2,xzr
02c518ec  stp q0,q1,[sp]
02c518f0  bl 0x02c6da2c
02c518f4  ldp q0,q1,[sp, #0x20]
02c518f8  add x0,sp,#0x60
02c518fc  mov x1,xzr
02c51900  stp q0,q1,[sp, #0x60]
02c51904  bl 0x0465bddc
02c51908  cbz x23,0x02c5189c
02c5190c  ldr x8,[x23]
02c51910  mov x1,x0
02c51914  mov x0,x23
02c51918  ldr x9,[x8, #0x558]
02c5191c  ldr x2,[x8, #0x560]
02c51920  blr x9
02c51924  cbz x28,0x02c5189c
02c51928  ldr x22,[x19, #0x68]
02c5192c  add x0,x28,#0x40
02c51930  mov x1,xzr
02c51934  bl 0x04863c00
02c51938  adrp x8,0x5e5e000
02c5193c  mov x1,x0
02c51940  mov x2,xzr
02c51944  ldr x8,[x8, #0x6d0]
02c51948  ldr x8,[x8]
02c5194c  mov x0,x8
02c51950  bl 0x046b6c0c
02c51954  cbz x22,0x02c5189c
02c51958  ldr x8,[x22]
02c5195c  mov x1,x0
02c51960  mov x0,x22
02c51964  ldr x9,[x8, #0x558]
02c51968  ldr x2,[x8, #0x560]
02c5196c  blr x9
02c51970  ldr x22,[x19, #0x70]
02c51974  mov w0,w21
02c51978  mov x1,xzr
02c5197c  bl 0x02c5b2ac
02c51980  cbz x22,0x02c5189c
02c51984  ldr x8,[x22]
02c51988  mov x1,x0
02c5198c  mov x0,x22
02c51990  ldr x9,[x8, #0x558]
02c51994  ldr x2,[x8, #0x560]
02c51998  blr x9
02c5199c  ldr x0,[x26]
02c519a0  ldr x21,[x19, #0x40]
02c519a4  ldr w8,[x0, #0xe4]
02c519a8  cbnz w8,0x02c519b0
02c519ac  bl 0x029f5bd0
02c519b0  mov x0,x21
02c519b4  mov x1,xzr
02c519b8  mov x2,xzr
02c519bc  bl 0x057dfa70
02c519c0  tbz w0,#0x0,0x02c519d8
02c519c4  ldr x0,[x19, #0x40]
02c519c8  cbz x0,0x02c5189c
02c519cc  and w1,w20,#0x1
02c519d0  mov x2,xzr
02c519d4  bl 0x057dff3c
02c519d8  ldr x0,[x26]
02c519dc  ldr x21,[x19, #0x48]
02c519e0  ldr w8,[x0, #0xe4]
02c519e4  cbnz w8,0x02c519ec
02c519e8  bl 0x029f5bd0
02c519ec  mov x0,x21
02c519f0  mov x1,xzr
02c519f4  mov x2,xzr
02c519f8  bl 0x057dfa70
02c519fc  tbz w0,#0x0,0x02c51a14
02c51a00  ldr x0,[x19, #0x48]
02c51a04  cbz x0,0x02c5189c
02c51a08  and w1,w20,#0x1
02c51a0c  mov x2,xzr
02c51a10  bl 0x057dff3c
02c51a14  ldr x0,[x26]
02c51a18  ldr x21,[x19, #0x50]
02c51a1c  ldr w8,[x0, #0xe4]
02c51a20  cbnz w8,0x02c51a28
02c51a24  bl 0x029f5bd0
02c51a28  mov x0,x21
02c51a2c  mov x1,xzr
02c51a30  mov x2,xzr
02c51a34  bl 0x057dfa70
02c51a38  tbz w0,#0x0,0x02c51a50
02c51a3c  ldr x0,[x19, #0x50]
02c51a40  cbz x0,0x02c5189c
02c51a44  and w1,w20,#0x1
02c51a48  mov x2,xzr
02c51a4c  bl 0x057dff3c
02c51a50  ldr x0,[x24]
02c51a54  ldr w8,[x0, #0xe4]
02c51a58  cbnz w8,0x02c51a64
02c51a5c  bl 0x029f5bd0
02c51a60  ldr x0,[x24]
02c51a64  ldr x8,[x26]
02c51a68  ldr x9,[x0, #0xb8]
02c51a6c  ldr w10,[x8, #0xe4]
02c51a70  ldr x20,[x9]
02c51a74  cbnz w10,0x02c51a80
02c51a78  mov x0,x8
02c51a7c  bl 0x029f5bd0
02c51a80  mov x0,x20
02c51a84  mov x1,xzr
02c51a88  mov x2,xzr
02c51a8c  bl 0x057dfa70
02c51a90  tbz w0,#0x0,0x02c51b0c
02c51a94  ldr x0,[x24]
02c51a98  ldr w8,[x0, #0xe4]
02c51a9c  cbnz w8,0x02c51aa8
02c51aa0  bl 0x029f5bd0
02c51aa4  ldr x0,[x24]
02c51aa8  ldr x8,[x0, #0xb8]
02c51aac  ldr x0,[x8]
02c51ab0  cbz x0,0x02c5189c
02c51ab4  mov x1,xzr
02c51ab8  bl 0x02c6d80c
02c51abc  ldr x8,[x19, #0x78]
02c51ac0  cbz x8,0x02c5189c
02c51ac4  mov w20,w0
02c51ac8  and w1,w0,#0x1
02c51acc  mov x0,x8
02c51ad0  mov x2,xzr
02c51ad4  bl 0x057dff3c
02c51ad8  tbz w20,#0x0,0x02c51b20
02c51adc  ldr x19,[x19, #0x80]
02c51ae0  add x0,sp,#0x8c
02c51ae4  mov x1,xzr
02c51ae8  bl 0x0484e6a4
02c51aec  cbz x19,0x02c5189c
02c51af0  ldr x8,[x19]
02c51af4  mov x1,x0
02c51af8  mov x0,x19
02c51afc  ldr x9,[x8, #0x558]
02c51b00  ldr x2,[x8, #0x560]
02c51b04  blr x9
02c51b08  b 0x02c51b20
02c51b0c  ldr x0,[x19, #0x78]
02c51b10  cbz x0,0x02c5189c
02c51b14  mov w1,wzr
02c51b18  mov x2,xzr
02c51b1c  bl 0x057dff3c
02c51b20  ldp x20,x19,[sp, #0xe0]
02c51b24  ldp x22,x21,[sp, #0xd0]
02c51b28  ldp x24,x23,[sp, #0xc0]
02c51b2c  ldp x26,x25,[sp, #0xb0]
02c51b30  ldp x28,x27,[sp, #0xa0]
02c51b34  ldp x29,x30,[sp, #0x90]
02c51b38  add sp,sp,#0xf0
02c51b3c  ret
02c51b40  bl 0x029f5d04
