02c967e4  str x30,[sp, #-0x30]!
02c967e8  stp x22,x21,[sp, #0x10]
02c967ec  stp x20,x19,[sp, #0x20]
02c967f0  adrp x21,0x625c000
02c967f4  adrp x22,0x5e64000
02c967f8  mov x20,x1
02c967fc  ldrb w8,[x21, #0x44a]
02c96800  ldr x22,[x22, #0x298]
02c96804  mov x19,x0
02c96808  tbnz w8,#0x0,0x02c96898
02c9680c  adrp x0,0x5e62000
02c96810  ldr x0,[x0, #0x668]
02c96814  bl 0x029f5a50
02c96818  adrp x0,0x5e5d000
02c9681c  ldr x0,[x0, #0x338]
02c96820  bl 0x029f5a50
02c96824  adrp x0,0x5e5d000
02c96828  ldr x0,[x0, #0xd48]
02c9682c  bl 0x029f5a50
02c96830  adrp x0,0x5e59000
02c96834  ldr x0,[x0, #0x1c0]
02c96838  bl 0x029f5a50
02c9683c  adrp x0,0x5e5d000
02c96840  ldr x0,[x0, #0x920]
02c96844  bl 0x029f5a50
02c96848  adrp x0,0x5e64000
02c9684c  ldr x0,[x0, #0x1e0]
02c96850  bl 0x029f5a50
02c96854  adrp x0,0x5e64000
02c96858  ldr x0,[x0, #0x248]
02c9685c  bl 0x029f5a50
02c96860  adrp x0,0x5e64000
02c96864  ldr x0,[x0, #0x298]
02c96868  bl 0x029f5a50
02c9686c  adrp x0,0x5e64000
02c96870  ldr x0,[x0, #0x2a0]
02c96874  bl 0x029f5a50
02c96878  adrp x0,0x5e64000
02c9687c  ldr x0,[x0, #0x2c0]
02c96880  bl 0x029f5a50
02c96884  adrp x0,0x5e64000
02c96888  ldr x0,[x0, #0x2d0]
02c9688c  bl 0x029f5a50
02c96890  mov w8,#0x1
02c96894  strb w8,[x21, #0x44a]
02c96898  adrp x21,0x5e5d000
02c9689c  mov x0,x20
02c968a0  mov x2,xzr
02c968a4  ldr x21,[x21, #0x920]
02c968a8  ldr x1,[x22]
02c968ac  bl 0x046b2ddc
02c968b0  tbz w0,#0x0,0x02c9696c
02c968b4  ldr x0,[x21]
02c968b8  ldr w8,[x0, #0xe4]
02c968bc  cbnz w8,0x02c968c8
02c968c0  bl 0x029f5bd0
02c968c4  ldr x0,[x21]
02c968c8  ldr x8,[x0, #0xb8]
02c968cc  ldrb w9,[x8, #0x8]
02c968d0  cbnz w9,0x02c96948
02c968d4  ldr w9,[x0, #0xe4]
02c968d8  cbnz w9,0x02c968e8
02c968dc  bl 0x029f5bd0
02c968e0  ldr x8,[x21]
02c968e4  ldr x8,[x8, #0xb8]
02c968e8  ldrb w8,[x8, #0x9]
02c968ec  cbnz w8,0x02c96948
02c968f0  adrp x20,0x5e62000
02c968f4  adrp x8,0x5e59000
02c968f8  ldr x20,[x20, #0x668]
02c968fc  ldr x8,[x8, #0x1c0]
02c96900  ldr x9,[x20]
02c96904  ldr x0,[x8]
02c96908  ldr x8,[x9, #0xb8]
02c9690c  ldr w9,[x0, #0xe4]
02c96910  ldr x19,[x8]
02c96914  cbnz w9,0x02c9691c
02c96918  bl 0x029f5bd0
02c9691c  mov x0,x19
02c96920  mov x1,xzr
02c96924  mov x2,xzr
02c96928  bl 0x057dfa70
02c9692c  tbz w0,#0x0,0x02c96948
02c96930  ldr x8,[x20]
02c96934  ldr x8,[x8, #0xb8]
02c96938  ldr x0,[x8]
02c9693c  cbz x0,0x02c96d4c
02c96940  mov x1,xzr
02c96944  bl 0x02c8ca3c
02c96948  ldr x0,[x21]
02c9694c  ldr w8,[x0, #0xe4]
02c96950  cbnz w8,0x02c9695c
02c96954  bl 0x029f5bd0
02c96958  ldr x0,[x21]
02c9695c  ldr x8,[x0, #0xb8]
02c96960  mov w9,#0x1
02c96964  strb w9,[x8, #0x8]
02c96968  b 0x02c96d00
02c9696c  adrp x8,0x5e64000
02c96970  mov x0,x20
02c96974  mov x2,xzr
02c96978  ldr x8,[x8, #0x2c0]
02c9697c  ldr x1,[x8]
02c96980  bl 0x046b2ddc
02c96984  tbz w0,#0x0,0x02c96a40
02c96988  ldr x0,[x21]
02c9698c  ldr w8,[x0, #0xe4]
02c96990  cbnz w8,0x02c9699c
02c96994  bl 0x029f5bd0
02c96998  ldr x0,[x21]
02c9699c  ldr x8,[x0, #0xb8]
02c969a0  ldrb w9,[x8, #0x8]
02c969a4  cbnz w9,0x02c96a1c
02c969a8  ldr w9,[x0, #0xe4]
02c969ac  cbnz w9,0x02c969bc
02c969b0  bl 0x029f5bd0
02c969b4  ldr x8,[x21]
02c969b8  ldr x8,[x8, #0xb8]
02c969bc  ldrb w8,[x8, #0x9]
02c969c0  cbnz w8,0x02c96a1c
02c969c4  adrp x20,0x5e62000
02c969c8  adrp x8,0x5e59000
02c969cc  ldr x20,[x20, #0x668]
02c969d0  ldr x8,[x8, #0x1c0]
02c969d4  ldr x9,[x20]
02c969d8  ldr x0,[x8]
02c969dc  ldr x8,[x9, #0xb8]
02c969e0  ldr w9,[x0, #0xe4]
02c969e4  ldr x19,[x8]
02c969e8  cbnz w9,0x02c969f0
02c969ec  bl 0x029f5bd0
02c969f0  mov x0,x19
02c969f4  mov x1,xzr
02c969f8  mov x2,xzr
02c969fc  bl 0x057dfa70
02c96a00  tbz w0,#0x0,0x02c96a1c
02c96a04  ldr x8,[x20]
02c96a08  ldr x8,[x8, #0xb8]
02c96a0c  ldr x0,[x8]
02c96a10  cbz x0,0x02c96d4c
02c96a14  mov x1,xzr
02c96a18  bl 0x02c8ca3c
02c96a1c  ldr x0,[x21]
02c96a20  ldr w8,[x0, #0xe4]
02c96a24  cbnz w8,0x02c96a30
02c96a28  bl 0x029f5bd0
02c96a2c  ldr x0,[x21]
02c96a30  ldr x8,[x0, #0xb8]
02c96a34  mov w9,#0x1
02c96a38  strb w9,[x8, #0x9]
02c96a3c  b 0x02c96d00
02c96a40  adrp x8,0x5e64000
02c96a44  mov x0,x20
02c96a48  mov x2,xzr
02c96a4c  ldr x8,[x8, #0x1e0]
02c96a50  ldr x1,[x8]
02c96a54  bl 0x046b2ddc
02c96a58  tbz w0,#0x0,0x02c96acc
02c96a5c  ldr x0,[x21]
02c96a60  ldr w8,[x0, #0xe4]
02c96a64  cbnz w8,0x02c96a70
02c96a68  bl 0x029f5bd0
02c96a6c  ldr x0,[x21]
02c96a70  ldr x8,[x0, #0xb8]
02c96a74  ldrb w8,[x8, #0xa]
02c96a78  cbnz w8,0x02c96aac
02c96a7c  adrp x8,0x5e5d000
02c96a80  ldr x8,[x8, #0x338]
02c96a84  ldr x0,[x8]
02c96a88  ldr w8,[x0, #0xe4]
02c96a8c  cbnz w8,0x02c96a94
02c96a90  bl 0x029f5bd0
02c96a94  mov w0,#0x1f4
02c96a98  mov x1,xzr
02c96a9c  bl 0x02b7ed10
02c96aa0  ldr x1,[x19, #0x98]
02c96aa4  bl 0x02c947a8
02c96aa8  ldr x0,[x21]
02c96aac  ldr w8,[x0, #0xe4]
02c96ab0  cbnz w8,0x02c96abc
02c96ab4  bl 0x029f5bd0
02c96ab8  ldr x0,[x21]
02c96abc  ldr x8,[x0, #0xb8]
02c96ac0  mov w9,#0x1
02c96ac4  strb w9,[x8, #0xa]
02c96ac8  b 0x02c96d00
02c96acc  adrp x8,0x5e64000
02c96ad0  mov x0,x20
02c96ad4  mov x2,xzr
02c96ad8  ldr x8,[x8, #0x248]
02c96adc  ldr x1,[x8]
02c96ae0  bl 0x046b2ddc
02c96ae4  tbz w0,#0x0,0x02c96b58
02c96ae8  ldr x0,[x21]
02c96aec  ldr w8,[x0, #0xe4]
02c96af0  cbnz w8,0x02c96afc
02c96af4  bl 0x029f5bd0
02c96af8  ldr x0,[x21]
02c96afc  ldr x8,[x0, #0xb8]
02c96b00  ldrb w8,[x8, #0xb]
02c96b04  cbnz w8,0x02c96b38
02c96b08  adrp x8,0x5e5d000
02c96b0c  ldr x8,[x8, #0x338]
02c96b10  ldr x0,[x8]
02c96b14  ldr w8,[x0, #0xe4]
02c96b18  cbnz w8,0x02c96b20
02c96b1c  bl 0x029f5bd0
02c96b20  mov w0,#0x3e8
02c96b24  mov x1,xzr
02c96b28  bl 0x02b7ed10
02c96b2c  ldr x1,[x19, #0xa0]
02c96b30  bl 0x02c947a8
02c96b34  ldr x0,[x21]
02c96b38  ldr w8,[x0, #0xe4]
02c96b3c  cbnz w8,0x02c96b48
02c96b40  bl 0x029f5bd0
02c96b44  ldr x0,[x21]
02c96b48  ldr x8,[x0, #0xb8]
02c96b4c  mov w9,#0x1
02c96b50  strb w9,[x8, #0xb]
02c96b54  b 0x02c96d00
02c96b58  adrp x8,0x5e64000
02c96b5c  mov x0,x20
02c96b60  mov x2,xzr
02c96b64  ldr x8,[x8, #0x2a0]
02c96b68  ldr x1,[x8]
02c96b6c  bl 0x046b2ddc
02c96b70  tbz w0,#0x0,0x02c96be4
02c96b74  ldr x0,[x21]
02c96b78  ldr w8,[x0, #0xe4]
02c96b7c  cbnz w8,0x02c96b88
02c96b80  bl 0x029f5bd0
02c96b84  ldr x0,[x21]
02c96b88  ldr x8,[x0, #0xb8]
02c96b8c  ldrb w8,[x8, #0xc]
02c96b90  cbnz w8,0x02c96bc4
02c96b94  adrp x8,0x5e5d000
02c96b98  ldr x8,[x8, #0x338]
02c96b9c  ldr x0,[x8]
02c96ba0  ldr w8,[x0, #0xe4]
02c96ba4  cbnz w8,0x02c96bac
02c96ba8  bl 0x029f5bd0
02c96bac  mov w0,#0x3e80
02c96bb0  mov x1,xzr
02c96bb4  bl 0x02b7ed10
02c96bb8  ldr x1,[x19, #0xa8]
02c96bbc  bl 0x02c947a8
02c96bc0  ldr x0,[x21]
02c96bc4  ldr w8,[x0, #0xe4]
02c96bc8  cbnz w8,0x02c96bd4
02c96bcc  bl 0x029f5bd0
02c96bd0  ldr x0,[x21]
02c96bd4  ldr x8,[x0, #0xb8]
02c96bd8  mov w9,#0x1
02c96bdc  strb w9,[x8, #0xc]
02c96be0  b 0x02c96d00
02c96be4  adrp x8,0x5e64000
02c96be8  mov x0,x20
02c96bec  mov x2,xzr
02c96bf0  ldr x8,[x8, #0x2d0]
02c96bf4  ldr x1,[x8]
02c96bf8  bl 0x046b2ddc
02c96bfc  tbz w0,#0x0,0x02c96d00
02c96c00  ldr x0,[x21]
02c96c04  ldr w8,[x0, #0xe4]
02c96c08  cbnz w8,0x02c96c14
02c96c0c  bl 0x029f5bd0
02c96c10  ldr x0,[x21]
02c96c14  ldr x8,[x0, #0xb8]
02c96c18  ldrb w8,[x8, #0xd]
02c96c1c  cbnz w8,0x02c96c48
02c96c20  adrp x8,0x5e5d000
02c96c24  ldr x8,[x8, #0x338]
02c96c28  ldr x0,[x8]
02c96c2c  ldr w8,[x0, #0xe4]
02c96c30  cbnz w8,0x02c96c38
02c96c34  bl 0x029f5bd0
02c96c38  mov w0,#0x1f4
02c96c3c  mov x1,xzr
02c96c40  bl 0x02b7ed10
02c96c44  ldr x0,[x21]
02c96c48  ldr w8,[x0, #0xe4]
02c96c4c  cbnz w8,0x02c96c58
02c96c50  bl 0x029f5bd0
02c96c54  ldr x0,[x21]
02c96c58  adrp x20,0x5e5d000
02c96c5c  adrp x22,0x5e59000
02c96c60  mov w12,#0x1
02c96c64  ldr x20,[x20, #0xd48]
02c96c68  ldr x22,[x22, #0x1c0]
02c96c6c  ldr x10,[x0, #0xb8]
02c96c70  ldr x9,[x20]
02c96c74  ldr x8,[x22]
02c96c78  strb w12,[x10, #0xd]
02c96c7c  ldr x9,[x9, #0xb8]
02c96c80  ldr w11,[x8, #0xe4]
02c96c84  ldr x19,[x9]
02c96c88  cbnz w11,0x02c96c94
02c96c8c  mov x0,x8
02c96c90  bl 0x029f5bd0
02c96c94  mov x0,x19
02c96c98  mov x1,xzr
02c96c9c  mov x2,xzr
02c96ca0  bl 0x057dfa70
02c96ca4  tbz w0,#0x0,0x02c96d00
02c96ca8  ldr x8,[x20]
02c96cac  ldr x8,[x8, #0xb8]
02c96cb0  ldr x8,[x8]
02c96cb4  cbz x8,0x02c96d4c
02c96cb8  ldr x0,[x22]
02c96cbc  ldr x19,[x8, #0x28]
02c96cc0  ldr w9,[x0, #0xe4]
02c96cc4  cbnz w9,0x02c96ccc
02c96cc8  bl 0x029f5bd0
02c96ccc  mov x0,x19
02c96cd0  mov x1,xzr
02c96cd4  mov x2,xzr
02c96cd8  bl 0x057dfa70
02c96cdc  tbz w0,#0x0,0x02c96d00
02c96ce0  ldr x8,[x20]
02c96ce4  ldr x8,[x8, #0xb8]
02c96ce8  ldr x8,[x8]
02c96cec  cbz x8,0x02c96d4c
02c96cf0  ldr x0,[x8, #0x28]
02c96cf4  cbz x0,0x02c96d4c
02c96cf8  mov x1,xzr
02c96cfc  bl 0x02c49110
02c96d00  ldr x0,[x21]
02c96d04  ldr w8,[x0, #0xe4]
02c96d08  cbnz w8,0x02c96d14
02c96d0c  bl 0x029f5bd0
02c96d10  ldr x0,[x21]
02c96d14  ldr x8,[x0, #0xb8]
02c96d18  ldr x8,[x8, #0x50]
02c96d1c  cbz x8,0x02c96d3c
02c96d20  ldp x20,x19,[sp, #0x20]
02c96d24  ldr x0,[x8, #0x40]
02c96d28  ldp x22,x21,[sp, #0x10]
02c96d2c  ldr x1,[x8, #0x28]
02c96d30  ldr x2,[x8, #0x18]
02c96d34  ldr x30,[sp], #0x30
02c96d38  br x2
02c96d3c  ldp x20,x19,[sp, #0x20]
02c96d40  ldp x22,x21,[sp, #0x10]
02c96d44  ldr x30,[sp], #0x30
02c96d48  ret
02c96d4c  bl 0x029f5cfc
