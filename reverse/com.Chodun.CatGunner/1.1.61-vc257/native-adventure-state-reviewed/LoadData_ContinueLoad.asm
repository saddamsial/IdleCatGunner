02c134d8  sub sp,sp,#0x80
02c134dc  stp x29,x30,[sp, #0x20]
02c134e0  stp x28,x27,[sp, #0x30]
02c134e4  stp x26,x25,[sp, #0x40]
02c134e8  stp x24,x23,[sp, #0x50]
02c134ec  stp x22,x21,[sp, #0x60]
02c134f0  stp x20,x19,[sp, #0x70]
02c134f4  adrp x21,0x625b000
02c134f8  adrp x20,0x5e5d000
02c134fc  mov x19,x0
02c13500  ldrb w8,[x21, #0xee6]
02c13504  ldr x20,[x20, #0xc20]
02c13508  tbnz w8,#0x0,0x02c13688
02c1350c  adrp x0,0x5e5d000
02c13510  ldr x0,[x0, #0xd28]
02c13514  bl 0x029f5a50
02c13518  adrp x0,0x5e5d000
02c1351c  ldr x0,[x0, #0x540]
02c13520  bl 0x029f5a50
02c13524  adrp x0,0x5e5d000
02c13528  ldr x0,[x0, #0xd30]
02c1352c  bl 0x029f5a50
02c13530  adrp x0,0x5e5d000
02c13534  ldr x0,[x0, #0x4c0]
02c13538  bl 0x029f5a50
02c1353c  adrp x0,0x5e5d000
02c13540  ldr x0,[x0, #0x5b0]
02c13544  bl 0x029f5a50
02c13548  adrp x0,0x5e5e000
02c1354c  ldr x0,[x0, #0x4f8]
02c13550  bl 0x029f5a50
02c13554  adrp x0,0x5e62000
02c13558  ldr x0,[x0, #0x660]
02c1355c  bl 0x029f5a50
02c13560  adrp x0,0x5e59000
02c13564  ldr x0,[x0, #0x7d0]
02c13568  bl 0x029f5a50
02c1356c  adrp x0,0x5e62000
02c13570  ldr x0,[x0, #0x668]
02c13574  bl 0x029f5a50
02c13578  adrp x0,0x5e5d000
02c1357c  ldr x0,[x0, #0xd38]
02c13580  bl 0x029f5a50
02c13584  adrp x0,0x5e5d000
02c13588  ldr x0,[x0, #0xfa0]
02c1358c  bl 0x029f5a50
02c13590  adrp x0,0x5e5d000
02c13594  ldr x0,[x0, #0xd48]
02c13598  bl 0x029f5a50
02c1359c  adrp x0,0x5e5d000
02c135a0  ldr x0,[x0, #0xd50]
02c135a4  bl 0x029f5a50
02c135a8  adrp x0,0x5e5d000
02c135ac  ldr x0,[x0, #0xd58]
02c135b0  bl 0x029f5a50
02c135b4  adrp x0,0x5e59000
02c135b8  ldr x0,[x0, #0x1c0]
02c135bc  bl 0x029f5a50
02c135c0  adrp x0,0x5e62000
02c135c4  ldr x0,[x0, #0x650]
02c135c8  bl 0x029f5a50
02c135cc  adrp x0,0x5e5e000
02c135d0  ldr x0,[x0, #0xb8]
02c135d4  bl 0x029f5a50
02c135d8  adrp x0,0x5e5e000
02c135dc  ldr x0,[x0, #0x68]
02c135e0  bl 0x029f5a50
02c135e4  adrp x0,0x5e5e000
02c135e8  ldr x0,[x0, #0x70]
02c135ec  bl 0x029f5a50
02c135f0  adrp x0,0x5e5d000
02c135f4  ldr x0,[x0, #0x498]
02c135f8  bl 0x029f5a50
02c135fc  adrp x0,0x5e62000
02c13600  ldr x0,[x0, #0x5c8]
02c13604  bl 0x029f5a50
02c13608  adrp x0,0x5e5d000
02c1360c  ldr x0,[x0, #0x6a8]
02c13610  bl 0x029f5a50
02c13614  adrp x0,0x5e62000
02c13618  ldr x0,[x0, #0x670]
02c1361c  bl 0x029f5a50
02c13620  adrp x0,0x5e5d000
02c13624  ldr x0,[x0, #0x920]
02c13628  bl 0x029f5a50
02c1362c  adrp x0,0x5e5d000
02c13630  ldr x0,[x0, #0xd68]
02c13634  bl 0x029f5a50
02c13638  adrp x0,0x5e5e000
02c1363c  ldr x0,[x0, #0x3e0]
02c13640  bl 0x029f5a50
02c13644  adrp x0,0x5e5e000
02c13648  ldr x0,[x0, #0x4b8]
02c1364c  bl 0x029f5a50
02c13650  adrp x0,0x5e5d000
02c13654  ldr x0,[x0, #0x3c0]
02c13658  bl 0x029f5a50
02c1365c  adrp x0,0x5e5d000
02c13660  ldr x0,[x0, #0xc20]
02c13664  bl 0x029f5a50
02c13668  adrp x0,0x5e5e000
02c1366c  ldr x0,[x0, #0x4d8]
02c13670  bl 0x029f5a50
02c13674  adrp x0,0x5e59000
02c13678  ldr x0,[x0, #0x50]
02c1367c  bl 0x029f5a50
02c13680  mov w8,#0x1
02c13684  strb w8,[x21, #0xee6]
02c13688  ldr x0,[x20]
02c1368c  str xzr,[sp, #0x18]
02c13690  str wzr,[sp, #0x10]
02c13694  ldr w8,[x0, #0xe4]
02c13698  cbnz w8,0x02c136a4
02c1369c  bl 0x029f5bd0
02c136a0  ldr x0,[x20]
02c136a4  ldr x8,[x0, #0xb8]
02c136a8  ldr x20,[x8, #0x10]
02c136ac  cbz x20,0x02c1449c
02c136b0  adrp x21,0x5e5d000
02c136b4  mov x0,x20
02c136b8  mov x1,xzr
02c136bc  ldr x21,[x21, #0xd68]
02c136c0  bl 0x02caac18
02c136c4  mov x0,x20
02c136c8  mov x1,xzr
02c136cc  bl 0x02cac9cc
02c136d0  ldr x0,[x21]
02c136d4  ldr w8,[x0, #0xe4]
02c136d8  cbnz w8,0x02c136e4
02c136dc  bl 0x029f5bd0
02c136e0  ldr x0,[x21]
02c136e4  cbz x19,0x02c1449c
02c136e8  ldr x8,[x0, #0xb8]
02c136ec  ldr x8,[x8, #0x8]
02c136f0  cbz x8,0x02c1449c
02c136f4  adrp x21,0x5e5e000
02c136f8  adrp x23,0x5e59000
02c136fc  ldr x21,[x21, #0x4b8]
02c13700  ldr w9,[x19, #0x1e8]
02c13704  ldr x0,[x21]
02c13708  ldr w10,[x0, #0xe4]
02c1370c  ldr x23,[x23, #0x1c0]
02c13710  str w9,[x8, #0x30]
02c13714  cbnz w10,0x02c13720
02c13718  bl 0x029f5bd0
02c1371c  ldr x0,[x21]
02c13720  ldr x8,[x23]
02c13724  ldr x9,[x0, #0xb8]
02c13728  ldr w10,[x8, #0xe4]
02c1372c  ldr x20,[x9]
02c13730  cbnz w10,0x02c1373c
02c13734  mov x0,x8
02c13738  bl 0x029f5bd0
02c1373c  mov x0,x20
02c13740  mov x1,xzr
02c13744  mov x2,xzr
02c13748  bl 0x057dfa70
02c1374c  tbz w0,#0x0,0x02c1377c
02c13750  ldr x0,[x21]
02c13754  ldr w8,[x0, #0xe4]
02c13758  cbnz w8,0x02c13764
02c1375c  bl 0x029f5bd0
02c13760  ldr x0,[x21]
02c13764  ldr x8,[x0, #0xb8]
02c13768  ldr x0,[x8]
02c1376c  cbz x0,0x02c1449c
02c13770  mov x1,x19
02c13774  mov x2,xzr
02c13778  bl 0x02ca3518
02c1377c  adrp x21,0x5e62000
02c13780  ldr x21,[x21, #0x660]
02c13784  ldr x0,[x21]
02c13788  ldr w8,[x0, #0xe4]
02c1378c  cbnz w8,0x02c13798
02c13790  bl 0x029f5bd0
02c13794  ldr x0,[x21]
02c13798  ldr x8,[x23]
02c1379c  ldr x9,[x0, #0xb8]
02c137a0  ldr w10,[x8, #0xe4]
02c137a4  ldr x20,[x9]
02c137a8  cbnz w10,0x02c137b4
02c137ac  mov x0,x8
02c137b0  bl 0x029f5bd0
02c137b4  mov x0,x20
02c137b8  mov x1,xzr
02c137bc  mov x2,xzr
02c137c0  bl 0x057dfa70
02c137c4  tbz w0,#0x0,0x02c137f4
02c137c8  ldr x0,[x21]
02c137cc  ldr w8,[x0, #0xe4]
02c137d0  cbnz w8,0x02c137dc
02c137d4  bl 0x029f5bd0
02c137d8  ldr x0,[x21]
02c137dc  ldr x8,[x0, #0xb8]
02c137e0  ldr x0,[x8]
02c137e4  cbz x0,0x02c1449c
02c137e8  mov x1,x19
02c137ec  mov x2,xzr
02c137f0  bl 0x02c8b868
02c137f4  adrp x21,0x5e5e000
02c137f8  ldr x21,[x21, #0xb8]
02c137fc  ldr x0,[x21]
02c13800  ldr w8,[x0, #0xe4]
02c13804  cbnz w8,0x02c13810
02c13808  bl 0x029f5bd0
02c1380c  ldr x0,[x21]
02c13810  ldr x8,[x23]
02c13814  ldr x9,[x0, #0xb8]
02c13818  ldr w10,[x8, #0xe4]
02c1381c  ldr x20,[x9]
02c13820  cbnz w10,0x02c1382c
02c13824  mov x0,x8
02c13828  bl 0x029f5bd0
02c1382c  mov x0,x20
02c13830  mov x1,xzr
02c13834  mov x2,xzr
02c13838  bl 0x057dfa70
02c1383c  tbz w0,#0x0,0x02c1386c
02c13840  ldr x0,[x21]
02c13844  ldr w8,[x0, #0xe4]
02c13848  cbnz w8,0x02c13854
02c1384c  bl 0x029f5bd0
02c13850  ldr x0,[x21]
02c13854  ldr x8,[x0, #0xb8]
02c13858  ldr x0,[x8]
02c1385c  cbz x0,0x02c1449c
02c13860  mov x1,x19
02c13864  mov x2,xzr
02c13868  bl 0x02c914e8
02c1386c  adrp x24,0x5e5e000
02c13870  ldr x24,[x24, #0x70]
02c13874  ldr x0,[x24]
02c13878  ldr w8,[x0, #0xe4]
02c1387c  cbnz w8,0x02c13888
02c13880  bl 0x029f5bd0
02c13884  ldr x0,[x24]
02c13888  ldr x8,[x23]
02c1388c  ldr x9,[x0, #0xb8]
02c13890  ldr w10,[x8, #0xe4]
02c13894  ldr x20,[x9]
02c13898  cbnz w10,0x02c138a4
02c1389c  mov x0,x8
02c138a0  bl 0x029f5bd0
02c138a4  adrp x25,0x5e5d000
02c138a8  mov x0,x20
02c138ac  mov x1,xzr
02c138b0  ldr x25,[x25, #0x3c0]
02c138b4  mov x2,xzr
02c138b8  bl 0x057dfa70
02c138bc  tbz w0,#0x0,0x02c13938
02c138c0  ldr x0,[x25]
02c138c4  ldr x21,[x19, #0x2a0]
02c138c8  ldr w8,[x0, #0xe4]
02c138cc  cbnz w8,0x02c138d4
02c138d0  bl 0x029f5bd0
02c138d4  mov x0,xzr
02c138d8  bl 0x02c25b48
02c138dc  mov x1,x0
02c138e0  mov x0,x21
02c138e4  mov x2,xzr
02c138e8  bl 0x02c06754
02c138ec  cbz x20,0x02c1449c
02c138f0  str x0,[x20, #0x68]
02c138f4  mov x0,x20
02c138f8  mov x2,xzr
02c138fc  ldr w8,[x19, #0x2a8]
02c13900  str w8,[x20, #0x70]
02c13904  ldrh w8,[x19, #0x2ac]
02c13908  strh w8,[x20, #0x74]
02c1390c  ldr d0,[x19, #0x2b0]
02c13910  ldr x1,[x19, #0x2c0]
02c13914  str d0,[x20, #0x78]
02c13918  ldr w8,[x19, #0x2b8]
02c1391c  str w8,[x20, #0x80]
02c13920  bl 0x02c59a5c
02c13924  ldr w8,[x19, #0x424]
02c13928  mov x0,x20
02c1392c  mov x1,xzr
02c13930  str w8,[x20, #0x100]
02c13934  bl 0x02c548dc
02c13938  adrp x21,0x5e5e000
02c1393c  ldr x21,[x21, #0x68]
02c13940  ldr x0,[x23]
02c13944  ldr x8,[x21]
02c13948  ldr w9,[x0, #0xe4]
02c1394c  ldr x8,[x8, #0xb8]
02c13950  ldr x20,[x8]
02c13954  cbnz w9,0x02c1395c
02c13958  bl 0x029f5bd0
02c1395c  mov x0,x20
02c13960  mov x1,xzr
02c13964  mov x2,xzr
02c13968  bl 0x057dfa70
02c1396c  tbz w0,#0x0,0x02c1398c
02c13970  ldr x8,[x21]
02c13974  ldr x8,[x8, #0xb8]
02c13978  ldr x0,[x8]
02c1397c  cbz x0,0x02c1449c
02c13980  mov x1,x19
02c13984  mov x2,xzr
02c13988  bl 0x02c54fc4
02c1398c  adrp x21,0x5e5e000
02c13990  ldr x21,[x21, #0x3e0]
02c13994  ldr x0,[x21]
02c13998  ldr w8,[x0, #0xe4]
02c1399c  cbnz w8,0x02c139a8
02c139a0  bl 0x029f5bd0
02c139a4  ldr x0,[x21]
02c139a8  ldr x8,[x23]
02c139ac  ldr x9,[x0, #0xb8]
02c139b0  ldr w10,[x8, #0xe4]
02c139b4  ldr x20,[x9]
02c139b8  cbnz w10,0x02c139c4
02c139bc  mov x0,x8
02c139c0  bl 0x029f5bd0
02c139c4  mov x0,x20
02c139c8  mov x1,xzr
02c139cc  mov x2,xzr
02c139d0  bl 0x057dfa70
02c139d4  tbz w0,#0x0,0x02c13a04
02c139d8  ldr x0,[x21]
02c139dc  ldr w8,[x0, #0xe4]
02c139e0  cbnz w8,0x02c139ec
02c139e4  bl 0x029f5bd0
02c139e8  ldr x0,[x21]
02c139ec  ldr x8,[x0, #0xb8]
02c139f0  ldr x0,[x8]
02c139f4  cbz x0,0x02c1449c
02c139f8  mov x1,x19
02c139fc  mov x2,xzr
02c13a00  bl 0x02ca1940
02c13a04  adrp x20,0x5e5d000
02c13a08  ldr x20,[x20, #0x920]
02c13a0c  ldr x0,[x20]
02c13a10  ldr w8,[x0, #0xe4]
02c13a14  cbnz w8,0x02c13a1c
02c13a18  bl 0x029f5bd0
02c13a1c  adrp x21,0x625b000
02c13a20  ldrb w8,[x21, #0x960]
02c13a24  cbnz w8,0x02c13a3c
02c13a28  adrp x0,0x5e5d000
02c13a2c  ldr x0,[x0, #0x920]
02c13a30  bl 0x029f5a50
02c13a34  mov w8,#0x1
02c13a38  strb w8,[x21, #0x960]
02c13a3c  ldr x0,[x20]
02c13a40  ldr w8,[x0, #0xe4]
02c13a44  cbnz w8,0x02c13a50
02c13a48  bl 0x029f5bd0
02c13a4c  ldr x0,[x20]
02c13a50  ldr x8,[x0, #0xb8]
02c13a54  ldr x0,[x8]
02c13a58  cbz x0,0x02c1449c
02c13a5c  adrp x20,0x5e5d000
02c13a60  mov x1,x19
02c13a64  mov x2,xzr
02c13a68  ldr x20,[x20, #0x4c0]
02c13a6c  bl 0x02c9aeb0
02c13a70  ldr x0,[x20]
02c13a74  ldr w8,[x0, #0xe4]
02c13a78  cbnz w8,0x02c13a84
02c13a7c  bl 0x029f5bd0
02c13a80  ldr x0,[x20]
02c13a84  ldr x8,[x0, #0xb8]
02c13a88  ldr x0,[x8]
02c13a8c  cbz x0,0x02c1449c
02c13a90  adrp x21,0x5e5d000
02c13a94  mov x1,xzr
02c13a98  ldr x21,[x21, #0xfa0]
02c13a9c  ldr s2,[x19, #0x330]
02c13aa0  ldr s1,[x19, #0x32c]
02c13aa4  ldr s0,[x19, #0x328]
02c13aa8  bl 0x02c379f4
02c13aac  ldr x8,[x21]
02c13ab0  ldr x0,[x23]
02c13ab4  ldr x8,[x8, #0xb8]
02c13ab8  ldr w9,[x0, #0xe4]
02c13abc  ldr x20,[x8]
02c13ac0  cbnz w9,0x02c13ac8
02c13ac4  bl 0x029f5bd0
02c13ac8  mov x0,x20
02c13acc  mov x1,xzr
02c13ad0  mov x2,xzr
02c13ad4  bl 0x057dfa70
02c13ad8  tbz w0,#0x0,0x02c13af8
02c13adc  ldr x8,[x21]
02c13ae0  ldr x8,[x8, #0xb8]
02c13ae4  ldr x0,[x8]
02c13ae8  cbz x0,0x02c1449c
02c13aec  mov x1,x19
02c13af0  mov x2,xzr
02c13af4  bl 0x02ba20f4
02c13af8  adrp x8,0x5e62000
02c13afc  ldr x8,[x8, #0x668]
02c13b00  ldr x8,[x8]
02c13b04  ldr x8,[x8, #0xb8]
02c13b08  ldr x0,[x8]
02c13b0c  cbz x0,0x02c1449c
02c13b10  adrp x20,0x5e62000
02c13b14  mov x2,xzr
02c13b18  ldr x20,[x20, #0x670]
02c13b1c  ldr x1,[x19, #0x220]
02c13b20  bl 0x02c8ca3c
02c13b24  ldr x8,[x20]
02c13b28  ldr x8,[x8, #0xb8]
02c13b2c  ldr x0,[x8, #0x8]
02c13b30  cbz x0,0x02c1449c
02c13b34  ldrb w8,[x19, #0x228]
02c13b38  adrp x20,0x5e5d000
02c13b3c  mov x1,xzr
02c13b40  strb w8,[x0, #0x20]
02c13b44  add x8,x19,#0x229
02c13b48  ldrh w8,[x8]
02c13b4c  ldr x20,[x20, #0x498]
02c13b50  sturh w8,[x0, #0x21]
02c13b54  bl 0x02c200b4
02c13b58  ldr x8,[x20]
02c13b5c  ldr x8,[x8, #0xb8]
02c13b60  ldr x20,[x8]
02c13b64  cbz x20,0x02c1449c
02c13b68  ldr x1,[x19, #0x238]
02c13b6c  mov x0,x20
02c13b70  str x1,[x0, #0x28]!
02c13b74  bl 0x029f59f4
02c13b78  ldr x1,[x19, #0x240]
02c13b7c  mov x0,x20
02c13b80  str x1,[x0, #0x30]!
02c13b84  bl 0x029f59f4
02c13b88  ldr x1,[x19, #0x248]
02c13b8c  mov x0,x20
02c13b90  str x1,[x0, #0x38]!
02c13b94  bl 0x029f59f4
02c13b98  mov x0,x20
02c13b9c  bl 0x02c0c914
02c13ba0  ldrb w8,[x19, #0x3c9]
02c13ba4  cbz w8,0x02c13bc8
02c13ba8  adrp x8,0x5e5e000
02c13bac  ldr x8,[x8, #0x4d8]
02c13bb0  ldr x8,[x8]
02c13bb4  ldr x8,[x8, #0xb8]
02c13bb8  ldr x0,[x8]
02c13bbc  cbz x0,0x02c1449c
02c13bc0  mov x1,xzr
02c13bc4  bl 0x02caf638
02c13bc8  adrp x8,0x5e5e000
02c13bcc  adrp x27,0x5e59000
02c13bd0  ldr x8,[x8, #0x4f8]
02c13bd4  ldr x0,[x25]
02c13bd8  ldr x8,[x8]
02c13bdc  ldr x8,[x8, #0xb8]
02c13be0  ldr x27,[x27, #0x7d0]
02c13be4  ldr w9,[x0, #0xe4]
02c13be8  ldr x21,[x19, #0x260]
02c13bec  ldr x20,[x8]
02c13bf0  cbnz w9,0x02c13bf8
02c13bf4  bl 0x029f5bd0
02c13bf8  mov x0,xzr
02c13bfc  bl 0x02c25b48
02c13c00  ldr x8,[x27]
02c13c04  str x0,[sp, #0x18]
02c13c08  ldr w9,[x8, #0xe4]
02c13c0c  cbnz w9,0x02c13c18
02c13c10  mov x0,x8
02c13c14  bl 0x029f5bd0
02c13c18  fmov d0,-0x4010000000000000
02c13c1c  add x0,sp,#0x18
02c13c20  mov x1,xzr
02c13c24  bl 0x0482f924
02c13c28  mov x1,x0
02c13c2c  mov x0,x21
02c13c30  mov x2,xzr
02c13c34  bl 0x02c06754
02c13c38  cbz x20,0x02c1449c
02c13c3c  str x0,[x20, #0x78]
02c13c40  adrp x26,0x5e5d000
02c13c44  mov x0,xzr
02c13c48  ldr x26,[x26, #0xd38]
02c13c4c  ldr x21,[x19, #0x250]
02c13c50  bl 0x02c25b48
02c13c54  mov x1,x0
02c13c58  mov x0,x21
02c13c5c  mov x2,xzr
02c13c60  bl 0x02c06754
02c13c64  ldr w2,[x19, #0x258]
02c13c68  ldr w3,[x19, #0x25c]
02c13c6c  mov x1,x0
02c13c70  mov x0,x20
02c13c74  mov x4,xzr
02c13c78  bl 0x02b9f374
02c13c7c  ldr x8,[x26]
02c13c80  ldr x8,[x8, #0xb8]
02c13c84  ldr x21,[x8]
02c13c88  cbz x21,0x02c1449c
02c13c8c  ldr w8,[x19, #0x278]
02c13c90  ldr x20,[x19, #0x270]
02c13c94  mov x0,xzr
02c13c98  str w8,[x21, #0x78]
02c13c9c  bl 0x02c25b48
02c13ca0  mov x1,x0
02c13ca4  mov x0,x20
02c13ca8  mov x2,xzr
02c13cac  bl 0x02c06754
02c13cb0  str x0,[x21, #0x70]
02c13cb4  ldr x8,[x19, #0x280]
02c13cb8  cbz x8,0x02c13d14
02c13cbc  ldr x8,[x26]
02c13cc0  ldr x8,[x8, #0xb8]
02c13cc4  ldr x8,[x8]
02c13cc8  cbz x8,0x02c1449c
02c13ccc  ldr x0,[x23]
02c13cd0  ldr x20,[x8, #0xa0]
02c13cd4  ldr w9,[x0, #0xe4]
02c13cd8  cbnz w9,0x02c13ce0
02c13cdc  bl 0x029f5bd0
02c13ce0  mov x0,x20
02c13ce4  mov x1,xzr
02c13ce8  mov x2,xzr
02c13cec  bl 0x057dfa70
02c13cf0  tbz w0,#0x0,0x02c13d14
02c13cf4  ldr x8,[x26]
02c13cf8  ldr x8,[x8, #0xb8]
02c13cfc  ldr x8,[x8]
02c13d00  cbz x8,0x02c1449c
02c13d04  ldr x0,[x8, #0xa0]
02c13d08  cbz x0,0x02c1449c
02c13d0c  mov x1,xzr
02c13d10  bl 0x02c5ef70
02c13d14  adrp x21,0x5e5d000
02c13d18  ldr x21,[x21, #0xd48]
02c13d1c  ldr x0,[x25]
02c13d20  ldr x20,[x19, #0x290]
02c13d24  ldr x8,[x21]
02c13d28  ldr w9,[x0, #0xe4]
02c13d2c  ldr x8,[x8, #0xb8]
02c13d30  ldr x22,[x8]
02c13d34  cbnz w9,0x02c13d3c
02c13d38  bl 0x029f5bd0
02c13d3c  mov x0,xzr
02c13d40  bl 0x02c25b48
02c13d44  mov x1,x0
02c13d48  mov x0,x20
02c13d4c  mov x2,xzr
02c13d50  bl 0x02c06754
02c13d54  cbz x22,0x02c1449c
02c13d58  ldr x8,[x21]
02c13d5c  str x0,[x22, #0x58]
02c13d60  ldr x8,[x8, #0xb8]
02c13d64  ldr x8,[x8]
02c13d68  cbz x8,0x02c1449c
02c13d6c  adrp x20,0x5e5d000
02c13d70  ldr x20,[x20, #0xd30]
02c13d74  ldr w9,[x19, #0x288]
02c13d78  ldr w10,[x19, #0x298]
02c13d7c  ldr x0,[x20]
02c13d80  str w9,[x8, #0x50]
02c13d84  str w10,[x8, #0x60]
02c13d88  ldr w11,[x0, #0xe4]
02c13d8c  cbnz w11,0x02c13d98
02c13d90  bl 0x029f5bd0
02c13d94  ldr x0,[x20]
02c13d98  ldr x8,[x0, #0xb8]
02c13d9c  ldr x8,[x8, #0x8]
02c13da0  cbz x8,0x02c1449c
02c13da4  adrp x20,0x5e5d000
02c13da8  ldr x20,[x20, #0xd58]
02c13dac  ldr w9,[x19, #0x2c8]
02c13db0  ldr x0,[x20]
02c13db4  str w9,[x8, #0x20]
02c13db8  ldr w10,[x0, #0xe4]
02c13dbc  cbnz w10,0x02c13dc8
02c13dc0  bl 0x029f5bd0
02c13dc4  ldr x0,[x20]
02c13dc8  ldr x8,[x0, #0xb8]
02c13dcc  ldr x8,[x8, #0x8]
02c13dd0  cbz x8,0x02c1449c
02c13dd4  adrp x20,0x5e5d000
02c13dd8  add x21,x19,#0x2cc
02c13ddc  ldr x20,[x20, #0xd28]
02c13de0  ldr d0,[x21]
02c13de4  ldr x0,[x20]
02c13de8  str d0,[x8, #0x20]
02c13dec  ldr w8,[x0, #0xe4]
02c13df0  cbnz w8,0x02c13dfc
02c13df4  bl 0x029f5bd0
02c13df8  ldr x0,[x20]
02c13dfc  ldr x8,[x23]
02c13e00  ldr x9,[x0, #0xb8]
02c13e04  ldr w10,[x8, #0xe4]
02c13e08  ldr x20,[x9, #0x10]
02c13e0c  cbnz w10,0x02c13e18
02c13e10  mov x0,x8
02c13e14  bl 0x029f5bd0
02c13e18  mov x0,x20
02c13e1c  mov x1,xzr
02c13e20  mov x2,xzr
02c13e24  bl 0x057dfa70
02c13e28  tbz w0,#0x0,0x02c140c4
02c13e2c  ldr x8,[x19, #0x338]
02c13e30  cbz x8,0x02c14074
02c13e34  cbz x20,0x02c1449c
02c13e38  ldr x8,[x20, #0x20]
02c13e3c  cbz x8,0x02c14078
02c13e40  ldr x11,[x19, #0x340]
02c13e44  cbz x11,0x02c13e98
02c13e48  ldr x12,[x20, #0x28]
02c13e4c  cbz x12,0x02c1449c
02c13e50  ldr x9,[x11, #0x18]
02c13e54  ldr x10,[x12, #0x18]
02c13e58  cmp w9,w10
02c13e5c  csel w8,w9,w10,lt
02c13e60  cmp w8,#0x1
02c13e64  b.lt 0x02c13e98
02c13e68  and x9,x9,#0xffffffff
02c13e6c  and x10,x10,#0xffffffff
02c13e70  add x11,x11,#0x20
02c13e74  add x12,x12,#0x20
02c13e78  cbz x9,0x02c144a0
02c13e7c  cbz x10,0x02c144a0
02c13e80  ldr w13,[x11], #0x4
02c13e84  subs x8,x8,#0x1
02c13e88  sub x10,x10,#0x1
02c13e8c  sub x9,x9,#0x1
02c13e90  str w13,[x12], #0x4
02c13e94  b.ne 0x02c13e78
02c13e98  ldr d0,[x19, #0x348]
02c13e9c  ldr x0,[x25]
02c13ea0  str x21,[sp]
02c13ea4  ldr x21,[x19, #0x358]
02c13ea8  str d0,[x20, #0x30]
02c13eac  ldr w8,[x19, #0x350]
02c13eb0  ldr w9,[x0, #0xe4]
02c13eb4  str w8,[x20, #0x58]
02c13eb8  cbnz w9,0x02c13ec0
02c13ebc  bl 0x029f5bd0
02c13ec0  mov x0,xzr
02c13ec4  bl 0x02c25b48
02c13ec8  mov x1,x0
02c13ecc  mov x0,x21
02c13ed0  mov x2,xzr
02c13ed4  bl 0x02c06754
02c13ed8  str x0,[x20, #0x60]
02c13edc  ldr x8,[x19, #0x338]
02c13ee0  cbz x8,0x02c1449c
02c13ee4  ldr x9,[x20, #0x20]
02c13ee8  cbz x9,0x02c1449c
02c13eec  ldr w8,[x8, #0x18]
02c13ef0  ldr w9,[x9, #0x18]
02c13ef4  cmp w8,w9
02c13ef8  csel w21,w8,w9,lt
02c13efc  cmp w21,#0x1
02c13f00  b.lt 0x02c13ff8
02c13f04  mov w27,wzr
02c13f08  ldr x9,[x19, #0x338]
02c13f0c  cbz x9,0x02c1449c
02c13f10  ldr w8,[x9, #0x18]
02c13f14  cmp w27,w8
02c13f18  b.cs 0x02c144a0
02c13f1c  mov w8,w27
02c13f20  add x9,x9,x8, LSL #0x3
02c13f24  ldr x9,[x9, #0x20]
02c13f28  cbz x9,0x02c13f34
02c13f2c  ldr x28,[x9, #0x10]
02c13f30  b 0x02c13f38
02c13f34  mov x28,xzr
02c13f38  ldr x9,[x20, #0x20]
02c13f3c  cbz x9,0x02c1449c
02c13f40  ldr w10,[x9, #0x18]
02c13f44  cmp w27,w10
02c13f48  b.cs 0x02c144a0
02c13f4c  add x8,x9,x8, LSL #0x3
02c13f50  ldr x8,[x8, #0x20]
02c13f54  cbz x8,0x02c1449c
02c13f58  cbz x28,0x02c13fec
02c13f5c  ldr x29,[x8, #0x18]
02c13f60  cbz x29,0x02c13fec
02c13f64  ldr w8,[x28, #0x18]
02c13f68  ldr w9,[x29, #0x18]
02c13f6c  cmp w8,w9
02c13f70  csel w10,w8,w9,lt
02c13f74  cmp w10,#0x1
02c13f78  b.lt 0x02c13fec
02c13f7c  sxtw x9,w9
02c13f80  sxtw x10,w8
02c13f84  mov x23,xzr
02c13f88  add x25,x29,#0x20
02c13f8c  add x24,x28,#0x20
02c13f90  cmp x9,w8, SXTW 
02c13f94  csel x22,x9,x10,lt
02c13f98  ldr w8,[x29, #0x18]
02c13f9c  cmp w23,w8
02c13fa0  b.cs 0x02c144a0
02c13fa4  ldr w8,[x28, #0x18]
02c13fa8  cmp w23,w8
02c13fac  b.cs 0x02c144a0
02c13fb0  ldr x8,[x24, x23, LSL #0x3]
02c13fb4  cbz x8,0x02c1449c
02c13fb8  ldr x26,[x25, x23, LSL #0x3]
02c13fbc  cbz x26,0x02c1449c
02c13fc0  ldrb w9,[x8, #0x10]
02c13fc4  ldr x0,[x8, #0x18]
02c13fc8  mov x1,xzr
02c13fcc  mov x2,xzr
02c13fd0  str xzr,[sp, #0x18]
02c13fd4  strb w9,[x26, #0x10]
02c13fd8  bl 0x02c06754
02c13fdc  add x23,x23,#0x1
02c13fe0  str x0,[x26, #0x18]
02c13fe4  cmp w22,w23
02c13fe8  b.ne 0x02c13f98
02c13fec  add w27,w27,#0x1
02c13ff0  cmp w27,w21
02c13ff4  b.ne 0x02c13f08
02c13ff8  ldr x8,[x20, #0x38]
02c13ffc  cbz x8,0x02c14008
02c14000  ldr x8,[x8, #0x18]
02c14004  cbnz x8,0x02c14014
02c14008  mov x0,x20
02c1400c  mov x1,xzr
02c14010  bl 0x02c2cf8c
02c14014  mov x0,x20
02c14018  mov x1,xzr
02c1401c  bl 0x02c2d168
02c14020  adrp x8,0x5e59000
02c14024  mov x0,x20
02c14028  ldr x8,[x8, #0x50]
02c1402c  ldr x9,[x19, #0x368]
02c14030  ldr w10,[x19, #0x360]
02c14034  ldr x8,[x8]
02c14038  cmp x9,#0x0
02c1403c  csel x1,x8,x9,eq
02c14040  str x1,[x0, #0x80]!
02c14044  stur w10,[x0, #-0x8]
02c14048  bl 0x029f59f4
02c1404c  adrp x23,0x5e59000
02c14050  adrp x24,0x5e5e000
02c14054  adrp x25,0x5e5d000
02c14058  adrp x27,0x5e59000
02c1405c  ldr x23,[x23, #0x1c0]
02c14060  ldr x24,[x24, #0x70]
02c14064  ldr x25,[x25, #0x3c0]
02c14068  ldr x27,[x27, #0x7d0]
02c1406c  ldr x21,[sp]
02c14070  b 0x02c140b8
02c14074  cbz x20,0x02c1449c
02c14078  ldr x0,[x25]
02c1407c  mov w9,#0x14
02c14080  str w9,[x20, #0x58]
02c14084  ldr w8,[x0, #0xe4]
02c14088  cbnz w8,0x02c14090
02c1408c  bl 0x029f5bd0
02c14090  mov x0,xzr
02c14094  bl 0x02c25b48
02c14098  ldr x8,[x20, #0x38]
02c1409c  str x0,[x20, #0x60]
02c140a0  cbz x8,0x02c140ac
02c140a4  ldr x8,[x8, #0x18]
02c140a8  cbnz x8,0x02c140b8
02c140ac  mov x0,x20
02c140b0  mov x1,xzr
02c140b4  bl 0x02c2cf8c
02c140b8  mov x0,x20
02c140bc  mov x1,xzr
02c140c0  bl 0x02c2c974
02c140c4  adrp x20,0x5e5d000
02c140c8  ldr x20,[x20, #0xd50]
02c140cc  ldr x0,[x20]
02c140d0  ldr w8,[x0, #0xe4]
02c140d4  cbnz w8,0x02c140e0
02c140d8  bl 0x029f5bd0
02c140dc  ldr x0,[x20]
02c140e0  ldr x8,[x0, #0xb8]
02c140e4  ldr x20,[x8, #0x8]
02c140e8  cbz x20,0x02c1449c
02c140ec  ldr d0,[x21, #0x8]
02c140f0  ldrb w10,[x19, #0x2ec]
02c140f4  str d0,[x20, #0x48]
02c140f8  ldr w9,[x19, #0x320]
02c140fc  strb w10,[x20, #0x65]
02c14100  str w9,[x20, #0x60]
02c14104  ldrb w9,[x19, #0x324]
02c14108  ldr q0,[x21, #0x10]
02c1410c  strb w9,[x20, #0x64]
02c14110  add x9,x19,#0x2ed
02c14114  str q0,[x20, #0x50]
02c14118  ldrh w9,[x9]
02c1411c  strh w9,[x8]
02c14120  ldr x0,[x25]
02c14124  ldr x21,[x19, #0x2f0]
02c14128  ldr w8,[x0, #0xe4]
02c1412c  cbnz w8,0x02c14134
02c14130  bl 0x029f5bd0
02c14134  mov x0,xzr
02c14138  bl 0x02c25b48
02c1413c  ldr x8,[x27]
02c14140  str x0,[sp, #0x18]
02c14144  ldr w9,[x8, #0xe4]
02c14148  cbnz w9,0x02c14154
02c1414c  mov x0,x8
02c14150  bl 0x029f5bd0
02c14154  add x0,sp,#0x18
02c14158  mov w1,#0x1
02c1415c  mov x2,xzr
02c14160  bl 0x0482facc
02c14164  mov x1,x0
02c14168  mov x0,x21
02c1416c  mov x2,xzr
02c14170  bl 0x02c06754
02c14174  str x0,[x20, #0x68]
02c14178  mov x0,xzr
02c1417c  ldr x21,[x19, #0x2f8]
02c14180  bl 0x02c25b48
02c14184  mov x1,x0
02c14188  mov x0,x21
02c1418c  mov x2,xzr
02c14190  bl 0x02c06754
02c14194  str x0,[x20, #0x70]
02c14198  ldr x12,[x19, #0x300]
02c1419c  cbz x12,0x02c141f0
02c141a0  ldr w8,[x12, #0x18]
02c141a4  cmp w8,#0x1
02c141a8  b.lt 0x02c141f0
02c141ac  ldr x11,[x20, #0x20]
02c141b0  cbz x11,0x02c1449c
02c141b4  ldr w9,[x11, #0x18]
02c141b8  add x11,x11,#0x20
02c141bc  add x12,x12,#0x20
02c141c0  bic w10,w9,w9, ASR #0x1f
02c141c4  cbz w10,0x02c141f0
02c141c8  cbz w9,0x02c144a0
02c141cc  ldr x13,[x11]
02c141d0  cbz x13,0x02c1449c
02c141d4  ldrb w14,[x12], #0x1
02c141d8  subs w8,w8,#0x1
02c141dc  add x11,x11,#0x8
02c141e0  sub w9,w9,#0x1
02c141e4  sub w10,w10,#0x1
02c141e8  strb w14,[x13, #0x24]
02c141ec  b.ne 0x02c141c4
02c141f0  ldr x12,[x19, #0x308]
02c141f4  cbz x12,0x02c14248
02c141f8  ldr w8,[x12, #0x18]
02c141fc  cmp w8,#0x1
02c14200  b.lt 0x02c14248
02c14204  ldr x11,[x20, #0x20]
02c14208  cbz x11,0x02c1449c
02c1420c  ldr w9,[x11, #0x18]
02c14210  add x11,x11,#0x20
02c14214  add x12,x12,#0x20
02c14218  bic w10,w9,w9, ASR #0x1f
02c1421c  cbz w10,0x02c14248
02c14220  cbz w9,0x02c144a0
02c14224  ldr x13,[x11]
02c14228  cbz x13,0x02c1449c
02c1422c  ldrb w14,[x12], #0x1
02c14230  subs w8,w8,#0x1
02c14234  add x11,x11,#0x8
02c14238  sub w9,w9,#0x1
02c1423c  sub w10,w10,#0x1
02c14240  strb w14,[x13, #0x25]
02c14244  b.ne 0x02c1421c
02c14248  ldr x11,[x19, #0x310]
02c1424c  cbz x11,0x02c1429c
02c14250  ldr x8,[x11, #0x18]
02c14254  cmp w8,#0x1
02c14258  b.lt 0x02c1429c
02c1425c  ldr x12,[x20, #0x38]
02c14260  cbz x12,0x02c1449c
02c14264  ldr x10,[x12, #0x18]
02c14268  and x8,x8,#0xffffffff
02c1426c  add x11,x11,#0x20
02c14270  add x12,x12,#0x20
02c14274  bic w9,w10,w10, ASR #0x1f
02c14278  and x10,x10,#0xffffffff
02c1427c  cbz x9,0x02c1429c
02c14280  cbz x10,0x02c144a0
02c14284  ldrb w13,[x11], #0x1
02c14288  subs x8,x8,#0x1
02c1428c  sub x10,x10,#0x1
02c14290  sub x9,x9,#0x1
02c14294  strb w13,[x12], #0x1
02c14298  b.ne 0x02c1427c
02c1429c  ldr x11,[x19, #0x318]
02c142a0  cbz x11,0x02c142f0
02c142a4  ldr x8,[x11, #0x18]
02c142a8  cmp w8,#0x1
02c142ac  b.lt 0x02c142f0
02c142b0  ldr x12,[x20, #0x40]
02c142b4  cbz x12,0x02c1449c
02c142b8  ldr x10,[x12, #0x18]
02c142bc  and x8,x8,#0xffffffff
02c142c0  add x11,x11,#0x20
02c142c4  add x12,x12,#0x20
02c142c8  bic w9,w10,w10, ASR #0x1f
02c142cc  and x10,x10,#0xffffffff
02c142d0  cbz x9,0x02c142f0
02c142d4  cbz x10,0x02c144a0
02c142d8  ldrb w13,[x11], #0x1
02c142dc  subs x8,x8,#0x1
02c142e0  sub x10,x10,#0x1
02c142e4  sub x9,x9,#0x1
02c142e8  strb w13,[x12], #0x1
02c142ec  b.ne 0x02c142d0
02c142f0  ldr x0,[x25]
02c142f4  adrp x21,0x5e62000
02c142f8  ldr w8,[x0, #0xe4]
02c142fc  ldr x21,[x21, #0x5c8]
02c14300  cbnz w8,0x02c14308
02c14304  bl 0x029f5bd0
02c14308  mov x0,xzr
02c1430c  bl 0x02c22c8c
02c14310  mov x0,x20
02c14314  mov x1,xzr
02c14318  bl 0x02ba3b80
02c1431c  ldr x8,[x21]
02c14320  ldr x8,[x8, #0xb8]
02c14324  ldr x8,[x8]
02c14328  cbz x8,0x02c1449c
02c1432c  adrp x20,0x5e5d000
02c14330  ldr x20,[x20, #0x5b0]
02c14334  ldrb w10,[x19, #0x3c8]
02c14338  ldr x9,[x20]
02c1433c  strb w10,[x8, #0x20]
02c14340  ldr x9,[x9, #0xb8]
02c14344  ldr x0,[x9, #0x8]
02c14348  cbz x0,0x02c1449c
02c1434c  mov x1,xzr
02c14350  bl 0x02c44944
02c14354  ldr x8,[x20]
02c14358  ldr x8,[x8, #0xb8]
02c1435c  ldr x0,[x8, #0x8]
02c14360  cbz x0,0x02c1449c
02c14364  adrp x20,0x5e62000
02c14368  mov x1,xzr
02c1436c  ldr x20,[x20, #0x650]
02c14370  bl 0x02c43744
02c14374  bl 0x02c14570
02c14378  ldr x8,[x20]
02c1437c  ldr x0,[x23]
02c14380  ldr x8,[x8, #0xb8]
02c14384  ldr w9,[x0, #0xe4]
02c14388  ldr x19,[x8]
02c1438c  cbnz w9,0x02c14394
02c14390  bl 0x029f5bd0
02c14394  mov x0,x19
02c14398  mov x1,xzr
02c1439c  mov x2,xzr
02c143a0  bl 0x057dfa70
02c143a4  tbz w0,#0x0,0x02c143c0
02c143a8  ldr x8,[x20]
02c143ac  ldr x8,[x8, #0xb8]
02c143b0  ldr x0,[x8]
02c143b4  cbz x0,0x02c1449c
02c143b8  mov x1,xzr
02c143bc  bl 0x02c90434
02c143c0  adrp x19,0x5e5d000
02c143c4  ldr x19,[x19, #0x6a8]
02c143c8  ldr x0,[x19]
02c143cc  ldr w8,[x0, #0xe4]
02c143d0  cbnz w8,0x02c143dc
02c143d4  bl 0x029f5bd0
02c143d8  ldr x0,[x19]
02c143dc  ldr x8,[x0, #0xb8]
02c143e0  ldr x0,[x8]
02c143e4  cbz x0,0x02c143f0
02c143e8  mov x1,xzr
02c143ec  bl 0x02c1ad80
02c143f0  ldr x0,[x24]
02c143f4  ldr w8,[x0, #0xe4]
02c143f8  cbnz w8,0x02c14404
02c143fc  bl 0x029f5bd0
02c14400  ldr x0,[x24]
02c14404  ldr x8,[x23]
02c14408  ldr x9,[x0, #0xb8]
02c1440c  ldr w10,[x8, #0xe4]
02c14410  ldr x19,[x9]
02c14414  cbnz w10,0x02c14420
02c14418  mov x0,x8
02c1441c  bl 0x029f5bd0
02c14420  mov x0,x19
02c14424  mov x1,xzr
02c14428  mov x2,xzr
02c1442c  bl 0x057dfa70
02c14430  tbz w0,#0x0,0x02c1445c
02c14434  ldr x0,[x24]
02c14438  ldr w8,[x0, #0xe4]
02c1443c  cbnz w8,0x02c14448
02c14440  bl 0x029f5bd0
02c14444  ldr x0,[x24]
02c14448  ldr x8,[x0, #0xb8]
02c1444c  ldr x0,[x8]
02c14450  cbz x0,0x02c1449c
02c14454  mov x1,xzr
02c14458  bl 0x02c57db4
02c1445c  adrp x8,0x5e5d000
02c14460  ldr x8,[x8, #0x540]
02c14464  ldr x0,[x8]
02c14468  ldr w8,[x0, #0xe4]
02c1446c  cbnz w8,0x02c14474
02c14470  bl 0x029f5bd0
02c14474  mov x0,xzr
02c14478  bl 0x02b94b74
02c1447c  ldp x20,x19,[sp, #0x70]
02c14480  ldp x22,x21,[sp, #0x60]
02c14484  ldp x24,x23,[sp, #0x50]
02c14488  ldp x26,x25,[sp, #0x40]
02c1448c  ldp x28,x27,[sp, #0x30]
02c14490  ldp x29,x30,[sp, #0x20]
02c14494  add sp,sp,#0x80
02c14498  ret
02c1449c  bl 0x029f5cfc
02c144a0  bl 0x029f5d04
