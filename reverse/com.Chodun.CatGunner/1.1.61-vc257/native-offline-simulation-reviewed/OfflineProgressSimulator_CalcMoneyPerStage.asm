02c09480  stp x29,x30,[sp, #-0x60]!
02c09484  stp x28,x27,[sp, #0x10]
02c09488  stp x26,x25,[sp, #0x20]
02c0948c  stp x24,x23,[sp, #0x30]
02c09490  stp x22,x21,[sp, #0x40]
02c09494  stp x20,x19,[sp, #0x50]
02c09498  sub sp,sp,#0x3b0
02c0949c  adrp x29,0x625b000
02c094a0  adrp x28,0x5e62000
02c094a4  mov w20,w7
02c094a8  ldrb w9,[x29, #0xe81]
02c094ac  ldr x28,[x28, #0x40]
02c094b0  mov x21,x6
02c094b4  mov w22,w5
02c094b8  mov w23,w4
02c094bc  mov x24,x3
02c094c0  mov w26,w2
02c094c4  mov w27,w1
02c094c8  mov w25,w0
02c094cc  mov x19,x8
02c094d0  tbnz w9,#0x0,0x02c094e8
02c094d4  adrp x0,0x5e62000
02c094d8  ldr x0,[x0, #0x40]
02c094dc  bl 0x029f5a50
02c094e0  mov w8,#0x1
02c094e4  strb w8,[x29, #0xe81]
02c094e8  movi v0.2D,#0x0
02c094ec  ldr x0,[x28]
02c094f0  ldr w8,[x0, #0xe4]
02c094f4  stp q0,q0,[sp, #0x290]
02c094f8  stp q0,q0,[sp, #0x2b0]
02c094fc  stp q0,q0,[sp, #0x2d0]
02c09500  stp q0,q0,[sp, #0x2f0]
02c09504  stp q0,q0,[sp, #0x310]
02c09508  stp q0,q0,[sp, #0x330]
02c0950c  stp q0,q0,[sp, #0x350]
02c09510  stp q0,q0,[sp, #0x370]
02c09514  stp q0,q0,[sp, #0x390]
02c09518  cbnz w8,0x02c09520
02c0951c  bl 0x029f5bd0
02c09520  add x8,sp,#0x390
02c09524  mov w0,w27
02c09528  bl 0x02c090c8
02c0952c  mov w8,#0xa
02c09530  mov w9,#0x1e
02c09534  mov w0,w26
02c09538  madd w8,w27,w8,w9
02c0953c  mov w9,#0x64
02c09540  cmp w8,#0x64
02c09544  csel w8,w8,w9,lt
02c09548  mov w9,#0x1e
02c0954c  cmp w8,#0x1e
02c09550  csel w8,w8,w9,gt
02c09554  madd w27,w8,w26,w8
02c09558  bl 0x02c09264
02c0955c  add x8,sp,#0x2f0
02c09560  bl 0x02c089ac
02c09564  add x8,sp,#0x270
02c09568  add x0,sp,#0x390
02c0956c  add x1,sp,#0x2f0
02c09570  mov x2,xzr
02c09574  bl 0x04658538
02c09578  ldp q0,q1,[sp, #0x270]
02c0957c  add x8,sp,#0x250
02c09580  mov w0,w27
02c09584  mov x1,xzr
02c09588  stp q0,q1,[sp, #0x2d0]
02c0958c  bl 0x046544b8
02c09590  ldp q0,q1,[sp, #0x250]
02c09594  add x8,sp,#0x370
02c09598  add x0,sp,#0x2d0
02c0959c  add x1,sp,#0x2b0
02c095a0  mov x2,xzr
02c095a4  stp q0,q1,[sp, #0x2b0]
02c095a8  bl 0x04658538
02c095ac  cmp w26,#0x4
02c095b0  b.ne 0x02c0960c
02c095b4  ldr x0,[x28]
02c095b8  ldr w8,[x0, #0xe4]
02c095bc  cbnz w8,0x02c095c8
02c095c0  bl 0x029f5bd0
02c095c4  ldr x0,[x28]
02c095c8  ldr x8,[x0, #0xb8]
02c095cc  ldr x8,[x8, #0x8]
02c095d0  cbz x8,0x02c09874
02c095d4  ldr w9,[x8, #0x18]
02c095d8  tst w9,#0xfffffffc
02c095dc  b.eq 0x02c09878
02c095e0  ldr d0,[x8, #0x38]
02c095e4  add x8,sp,#0x270
02c095e8  bl 0x02c089ac
02c095ec  ldp q0,q1,[sp, #0x270]
02c095f0  add x8,sp,#0x290
02c095f4  add x0,sp,#0x390
02c095f8  add x1,sp,#0x2f0
02c095fc  mov x2,xzr
02c09600  stp q0,q1,[sp, #0x2f0]
02c09604  bl 0x04658538
02c09608  b 0x02c0961c
02c0960c  add x8,sp,#0x290
02c09610  mov w0,wzr
02c09614  mov x1,xzr
02c09618  bl 0x046544b8
02c0961c  ldp q0,q1,[sp, #0x290]
02c09620  add x8,sp,#0x270
02c09624  add x0,sp,#0x370
02c09628  add x1,sp,#0x350
02c0962c  mov x2,xzr
02c09630  stp q0,q1,[sp, #0x350]
02c09634  bl 0x04658020
02c09638  ldr x0,[x28]
02c0963c  ldp q0,q1,[sp, #0x270]
02c09640  ldr w8,[x0, #0xe4]
02c09644  stp q0,q1,[sp, #0x330]
02c09648  cbnz w8,0x02c09650
02c0964c  bl 0x029f5bd0
02c09650  add x8,sp,#0x310
02c09654  mov w0,w25
02c09658  bl 0x02c09360
02c0965c  add x8,sp,#0x250
02c09660  add x0,sp,#0x330
02c09664  add x1,sp,#0x310
02c09668  mov x2,xzr
02c0966c  bl 0x04658538
02c09670  ldp q0,q1,[sp, #0x250]
02c09674  add x8,sp,#0x230
02c09678  mov w0,#0x64
02c0967c  mov x1,xzr
02c09680  stp q0,q1,[sp, #0x2f0]
02c09684  bl 0x046544b8
02c09688  ldp q0,q1,[sp, #0x230]
02c0968c  add x8,sp,#0x210
02c09690  add x0,sp,#0x2f0
02c09694  add x1,sp,#0x2d0
02c09698  mov x2,xzr
02c0969c  stp q0,q1,[sp, #0x2d0]
02c096a0  bl 0x046587e8
02c096a4  ldp q0,q1,[sp, #0x210]
02c096a8  add x8,sp,#0x1f0
02c096ac  add x0,sp,#0x330
02c096b0  mov x1,x24
02c096b4  mov x2,xzr
02c096b8  stp q0,q1,[sp, #0x330]
02c096bc  bl 0x04658538
02c096c0  ldp q0,q1,[sp, #0x1f0]
02c096c4  add x8,sp,#0x1d0
02c096c8  mov w0,#0x64
02c096cc  mov x1,xzr
02c096d0  stp q0,q1,[sp, #0x2f0]
02c096d4  bl 0x046544b8
02c096d8  ldp q0,q1,[sp, #0x1d0]
02c096dc  add x8,sp,#0x1b0
02c096e0  add x0,sp,#0x2f0
02c096e4  add x1,sp,#0x2d0
02c096e8  mov x2,xzr
02c096ec  stp q0,q1,[sp, #0x2d0]
02c096f0  bl 0x046587e8
02c096f4  ldp q0,q1,[sp, #0x1b0]
02c096f8  add x8,sp,#0x190
02c096fc  mov w0,w23
02c09700  mov x1,xzr
02c09704  stp q0,q1,[sp, #0x330]
02c09708  bl 0x046544b8
02c0970c  ldp q0,q1,[sp, #0x190]
02c09710  add x8,sp,#0x170
02c09714  add x0,sp,#0x330
02c09718  add x1,sp,#0x2f0
02c0971c  mov x2,xzr
02c09720  stp q0,q1,[sp, #0x2f0]
02c09724  bl 0x04658538
02c09728  ldp q0,q1,[sp, #0x170]
02c0972c  add x8,sp,#0x150
02c09730  mov w0,#0x64
02c09734  mov x1,xzr
02c09738  stp q0,q1,[sp, #0x2d0]
02c0973c  bl 0x046544b8
02c09740  ldp q0,q1,[sp, #0x150]
02c09744  add x8,sp,#0x130
02c09748  add x0,sp,#0x2d0
02c0974c  add x1,sp,#0x2b0
02c09750  mov x2,xzr
02c09754  stp q0,q1,[sp, #0x2b0]
02c09758  bl 0x046587e8
02c0975c  ldp q0,q1,[sp, #0x130]
02c09760  add x8,sp,#0x110
02c09764  mov w0,w22
02c09768  mov x1,xzr
02c0976c  stp q0,q1,[sp, #0x330]
02c09770  bl 0x046544b8
02c09774  ldp q0,q1,[sp, #0x110]
02c09778  add x8,sp,#0xf0
02c0977c  add x0,sp,#0x330
02c09780  add x1,sp,#0x2f0
02c09784  mov x2,xzr
02c09788  stp q0,q1,[sp, #0x2f0]
02c0978c  bl 0x04658538
02c09790  ldp q0,q1,[sp, #0xf0]
02c09794  add x8,sp,#0xd0
02c09798  mov w0,#0x64
02c0979c  mov x1,xzr
02c097a0  stp q0,q1,[sp, #0x2d0]
02c097a4  bl 0x046544b8
02c097a8  ldp q0,q1,[sp, #0xd0]
02c097ac  add x8,sp,#0xb0
02c097b0  add x0,sp,#0x2d0
02c097b4  add x1,sp,#0x2b0
02c097b8  mov x2,xzr
02c097bc  stp q0,q1,[sp, #0x2b0]
02c097c0  bl 0x046587e8
02c097c4  ldp q0,q1,[sp, #0xb0]
02c097c8  add x8,sp,#0x90
02c097cc  add x0,sp,#0x330
02c097d0  mov x1,x21
02c097d4  mov x2,xzr
02c097d8  stp q0,q1,[sp, #0x330]
02c097dc  bl 0x04658538
02c097e0  ldp q0,q1,[sp, #0x90]
02c097e4  add x8,sp,#0x70
02c097e8  mov w0,#0x64
02c097ec  mov x1,xzr
02c097f0  stp q0,q1,[sp, #0x2f0]
02c097f4  bl 0x046544b8
02c097f8  ldp q0,q1,[sp, #0x70]
02c097fc  add x8,sp,#0x50
02c09800  add x0,sp,#0x2f0
02c09804  add x1,sp,#0x2d0
02c09808  mov x2,xzr
02c0980c  stp q0,q1,[sp, #0x2d0]
02c09810  bl 0x046587e8
02c09814  ldp q0,q1,[sp, #0x50]
02c09818  add x8,sp,#0x30
02c0981c  mov w0,w20
02c09820  mov x1,xzr
02c09824  stp q0,q1,[sp, #0x330]
02c09828  bl 0x046544b8
02c0982c  ldp q0,q1,[sp, #0x30]
02c09830  add x8,sp,#0x10
02c09834  add x0,sp,#0x330
02c09838  add x1,sp,#0x2f0
02c0983c  mov x2,xzr
02c09840  stp q0,q1,[sp, #0x2f0]
02c09844  bl 0x04658538
02c09848  ldp q0,q1,[sp, #0x10]
02c0984c  str q0,[sp, #0x330]
02c09850  stp q0,q1,[x19]
02c09854  add sp,sp,#0x3b0
02c09858  ldp x20,x19,[sp, #0x50]
02c0985c  ldp x22,x21,[sp, #0x40]
02c09860  ldp x24,x23,[sp, #0x30]
02c09864  ldp x26,x25,[sp, #0x20]
02c09868  ldp x28,x27,[sp, #0x10]
02c0986c  ldp x29,x30,[sp], #0x60
02c09870  ret
02c09874  bl 0x029f5cfc
02c09878  bl 0x029f5d04
