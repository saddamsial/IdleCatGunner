02c977fc  sub sp,sp,#0x50
02c97800  stp x30,x23,[sp, #0x20]
02c97804  stp x22,x21,[sp, #0x30]
02c97808  stp x20,x19,[sp, #0x40]
02c9780c  adrp x23,0x625c000
02c97810  adrp x22,0x5e64000
02c97814  mov x20,x2
02c97818  ldrb w8,[x23, #0x437]
02c9781c  ldr x22,[x22, #0x298]
02c97820  mov x19,x1
02c97824  mov x21,x0
02c97828  tbnz w8,#0x0,0x02c97960
02c9782c  adrp x0,0x5e5d000
02c97830  ldr x0,[x0, #0x4c0]
02c97834  bl 0x029f5a50
02c97838  adrp x0,0x5e5d000
02c9783c  ldr x0,[x0, #0x5b0]
02c97840  bl 0x029f5a50
02c97844  adrp x0,0x5e58000
02c97848  ldr x0,[x0, #0xf08]
02c9784c  bl 0x029f5a50
02c97850  adrp x0,0x5e64000
02c97854  ldr x0,[x0, #0x428]
02c97858  bl 0x029f5a50
02c9785c  adrp x0,0x5e59000
02c97860  ldr x0,[x0, #0x1c0]
02c97864  bl 0x029f5a50
02c97868  adrp x0,0x5e64000
02c9786c  ldr x0,[x0, #0x430]
02c97870  bl 0x029f5a50
02c97874  adrp x0,0x5e64000
02c97878  ldr x0,[x0, #0x1c8]
02c9787c  bl 0x029f5a50
02c97880  adrp x0,0x5e64000
02c97884  ldr x0,[x0, #0x1d8]
02c97888  bl 0x029f5a50
02c9788c  adrp x0,0x5e64000
02c97890  ldr x0,[x0, #0x1e0]
02c97894  bl 0x029f5a50
02c97898  adrp x0,0x5e64000
02c9789c  ldr x0,[x0, #0x208]
02c978a0  bl 0x029f5a50
02c978a4  adrp x0,0x5e63000
02c978a8  ldr x0,[x0, #0xec0]
02c978ac  bl 0x029f5a50
02c978b0  adrp x0,0x5e64000
02c978b4  ldr x0,[x0, #0x438]
02c978b8  bl 0x029f5a50
02c978bc  adrp x0,0x5e64000
02c978c0  ldr x0,[x0, #0x440]
02c978c4  bl 0x029f5a50
02c978c8  adrp x0,0x5e64000
02c978cc  ldr x0,[x0, #0x248]
02c978d0  bl 0x029f5a50
02c978d4  adrp x0,0x5e5e000
02c978d8  ldr x0,[x0, #0x160]
02c978dc  bl 0x029f5a50
02c978e0  adrp x0,0x5e64000
02c978e4  ldr x0,[x0, #0x268]
02c978e8  bl 0x029f5a50
02c978ec  adrp x0,0x5e64000
02c978f0  ldr x0,[x0, #0x288]
02c978f4  bl 0x029f5a50
02c978f8  adrp x0,0x5e64000
02c978fc  ldr x0,[x0, #0x2f8]
02c97900  bl 0x029f5a50
02c97904  adrp x0,0x5e64000
02c97908  ldr x0,[x0, #0x298]
02c9790c  bl 0x029f5a50
02c97910  adrp x0,0x5e5e000
02c97914  ldr x0,[x0, #0x170]
02c97918  bl 0x029f5a50
02c9791c  adrp x0,0x5e64000
02c97920  ldr x0,[x0, #0x2a0]
02c97924  bl 0x029f5a50
02c97928  adrp x0,0x5e64000
02c9792c  ldr x0,[x0, #0x448]
02c97930  bl 0x029f5a50
02c97934  adrp x0,0x5e64000
02c97938  ldr x0,[x0, #0x2c0]
02c9793c  bl 0x029f5a50
02c97940  adrp x0,0x5e64000
02c97944  ldr x0,[x0, #0x2d0]
02c97948  bl 0x029f5a50
02c9794c  adrp x0,0x5e64000
02c97950  ldr x0,[x0, #0x1b0]
02c97954  bl 0x029f5a50
02c97958  mov w8,#0x1
02c9795c  strb w8,[x23, #0x437]
02c97960  ldr x1,[x22]
02c97964  str wzr,[sp, #0x18]
02c97968  mov x0,x19
02c9796c  mov x2,xzr
02c97970  bl 0x046b2ddc
02c97974  adrp x22,0x5e64000
02c97978  ldr x22,[x22, #0x248]
02c9797c  tbnz w0,#0x0,0x02c97a04
02c97980  adrp x8,0x5e64000
02c97984  ldr x8,[x8, #0x2c0]
02c97988  ldr x1,[x8]
02c9798c  mov x0,x19
02c97990  mov x2,xzr
02c97994  bl 0x046b2ddc
02c97998  tbnz w0,#0x0,0x02c97a04
02c9799c  adrp x8,0x5e64000
02c979a0  ldr x8,[x8, #0x1e0]
02c979a4  ldr x1,[x8]
02c979a8  mov x0,x19
02c979ac  mov x2,xzr
02c979b0  bl 0x046b2ddc
02c979b4  tbnz w0,#0x0,0x02c97a04
02c979b8  ldr x1,[x22]
02c979bc  mov x0,x19
02c979c0  mov x2,xzr
02c979c4  bl 0x046b2ddc
02c979c8  tbnz w0,#0x0,0x02c97a04
02c979cc  adrp x8,0x5e64000
02c979d0  ldr x8,[x8, #0x2a0]
02c979d4  ldr x1,[x8]
02c979d8  mov x0,x19
02c979dc  mov x2,xzr
02c979e0  bl 0x046b2ddc
02c979e4  tbnz w0,#0x0,0x02c97a04
02c979e8  adrp x8,0x5e64000
02c979ec  ldr x8,[x8, #0x2d0]
02c979f0  ldr x1,[x8]
02c979f4  mov x0,x19
02c979f8  mov x2,xzr
02c979fc  bl 0x046b2ddc
02c97a00  tbz w0,#0x0,0x02c97b1c
02c97a04  mov x0,x21
02c97a08  mov x1,x19
02c97a0c  bl 0x02c967e4
02c97a10  mov x0,xzr
02c97a14  bl 0x02c0faf8
02c97a18  mov x0,x21
02c97a1c  bl 0x02c9442c
02c97a20  ldr x1,[x22]
02c97a24  mov x0,x19
02c97a28  mov x2,xzr
02c97a2c  bl 0x046b2ddc
02c97a30  tbz w0,#0x0,0x02c97b00
02c97a34  adrp x22,0x5e5d000
02c97a38  adrp x21,0x5e59000
02c97a3c  ldr x22,[x22, #0x5b0]
02c97a40  ldr x21,[x21, #0x1c0]
02c97a44  ldr x8,[x22]
02c97a48  ldr x0,[x21]
02c97a4c  ldr x8,[x8, #0xb8]
02c97a50  ldr w9,[x0, #0xe4]
02c97a54  ldr x20,[x8, #0x8]
02c97a58  cbnz w9,0x02c97a60
02c97a5c  bl 0x029f5bd0
02c97a60  mov x0,x20
02c97a64  mov x1,xzr
02c97a68  mov x2,xzr
02c97a6c  bl 0x057dfa70
02c97a70  tbz w0,#0x0,0x02c97a8c
02c97a74  ldr x8,[x22]
02c97a78  ldr x8,[x8, #0xb8]
02c97a7c  ldr x0,[x8, #0x8]
02c97a80  cbz x0,0x02c97d88
02c97a84  mov x1,xzr
02c97a88  bl 0x02c43744
02c97a8c  adrp x22,0x5e5d000
02c97a90  ldr x22,[x22, #0x4c0]
02c97a94  ldr x0,[x22]
02c97a98  ldr w8,[x0, #0xe4]
02c97a9c  cbnz w8,0x02c97aa8
02c97aa0  bl 0x029f5bd0
02c97aa4  ldr x0,[x22]
02c97aa8  ldr x8,[x21]
02c97aac  ldr x9,[x0, #0xb8]
02c97ab0  ldr w10,[x8, #0xe4]
02c97ab4  ldr x20,[x9]
02c97ab8  cbnz w10,0x02c97ac4
02c97abc  mov x0,x8
02c97ac0  bl 0x029f5bd0
02c97ac4  mov x0,x20
02c97ac8  mov x1,xzr
02c97acc  mov x2,xzr
02c97ad0  bl 0x057dfa70
02c97ad4  tbz w0,#0x0,0x02c97b00
02c97ad8  ldr x0,[x22]
02c97adc  ldr w8,[x0, #0xe4]
02c97ae0  cbnz w8,0x02c97aec
02c97ae4  bl 0x029f5bd0
02c97ae8  ldr x0,[x22]
02c97aec  ldr x8,[x0, #0xb8]
02c97af0  ldr x0,[x8]
02c97af4  cbz x0,0x02c97d8c
02c97af8  mov x1,xzr
02c97afc  bl 0x02c378dc
02c97b00  mov w0,#0x1
02c97b04  ldp x20,x19,[sp, #0x40]
02c97b08  and w0,w0,#0x1
02c97b0c  ldp x22,x21,[sp, #0x30]
02c97b10  ldp x30,x23,[sp, #0x20]
02c97b14  add sp,sp,#0x50
02c97b18  ret
02c97b1c  adrp x8,0x5e63000
02c97b20  ldr x8,[x8, #0xec0]
02c97b24  ldr x1,[x8]
02c97b28  mov x0,x19
02c97b2c  mov x2,xzr
02c97b30  bl 0x046b2ddc
02c97b34  tbz w0,#0x0,0x02c97b40
02c97b38  bl 0x02c97f0c
02c97b3c  b 0x02c97b04
02c97b40  adrp x8,0x5e64000
02c97b44  ldr x8,[x8, #0x288]
02c97b48  ldr x1,[x8]
02c97b4c  mov x0,x19
02c97b50  mov x2,xzr
02c97b54  bl 0x046b2ddc
02c97b58  tbz w0,#0x0,0x02c97b64
02c97b5c  bl 0x02c95bd4
02c97b60  b 0x02c97b04
02c97b64  adrp x8,0x5e64000
02c97b68  ldr x8,[x8, #0x1c8]
02c97b6c  ldr x1,[x8]
02c97b70  mov x0,x19
02c97b74  mov x2,xzr
02c97b78  bl 0x046b2ddc
02c97b7c  tbz w0,#0x0,0x02c97b88
02c97b80  bl 0x02c97ff8
02c97b84  b 0x02c97b00
02c97b88  adrp x8,0x5e64000
02c97b8c  ldr x8,[x8, #0x208]
02c97b90  ldr x1,[x8]
02c97b94  mov x0,x19
02c97b98  mov x2,xzr
02c97b9c  bl 0x046b2ddc
02c97ba0  tbz w0,#0x0,0x02c97bac
02c97ba4  bl 0x02c981a4
02c97ba8  b 0x02c97b00
02c97bac  adrp x8,0x5e5e000
02c97bb0  ldr x8,[x8, #0x170]
02c97bb4  ldr x1,[x8]
02c97bb8  mov x0,x19
02c97bbc  mov x2,xzr
02c97bc0  bl 0x046b2ddc
02c97bc4  tbnz w0,#0x0,0x02c97be4
02c97bc8  adrp x8,0x5e5e000
02c97bcc  ldr x8,[x8, #0x160]
02c97bd0  ldr x1,[x8]
02c97bd4  mov x0,x19
02c97bd8  mov x2,xzr
02c97bdc  bl 0x046b2ddc
02c97be0  tbz w0,#0x0,0x02c97bec
02c97be4  bl 0x02c98350
02c97be8  b 0x02c97b00
02c97bec  str wzr,[sp, #0x8]
02c97bf0  add x2,sp,#0x8
02c97bf4  mov x1,x19
02c97bf8  bl 0x02c954d8
02c97bfc  tbz w0,#0x0,0x02c97c0c
02c97c00  mov x1,x19
02c97c04  bl 0x02c95830
02c97c08  b 0x02c97b04
02c97c0c  cbz x19,0x02c97d90
02c97c10  adrp x8,0x5e64000
02c97c14  ldr x8,[x8, #0x438]
02c97c18  ldr x1,[x8]
02c97c1c  mov x0,x19
02c97c20  mov x2,xzr
02c97c24  bl 0x046bf554
02c97c28  tbz w0,#0x0,0x02c97c3c
02c97c2c  mov x0,x21
02c97c30  mov x1,x19
02c97c34  bl 0x02c98490
02c97c38  b 0x02c97b04
02c97c3c  adrp x8,0x5e64000
02c97c40  ldr x8,[x8, #0x1b0]
02c97c44  ldr x1,[x8]
02c97c48  mov x0,x19
02c97c4c  mov x2,xzr
02c97c50  bl 0x046bf554
02c97c54  tbz w0,#0x0,0x02c97c64
02c97c58  mov x1,x19
02c97c5c  bl 0x02c93c80
02c97c60  b 0x02c97b04
02c97c64  adrp x8,0x5e64000
02c97c68  ldr x8,[x8, #0x2f8]
02c97c6c  ldr x1,[x8]
02c97c70  mov x0,x19
02c97c74  mov x2,xzr
02c97c78  bl 0x046bf554
02c97c7c  tbz w0,#0x0,0x02c97c8c
02c97c80  mov x1,x19
02c97c84  bl 0x02c9412c
02c97c88  b 0x02c97b04
02c97c8c  adrp x8,0x5e64000
02c97c90  ldr x8,[x8, #0x448]
02c97c94  ldr x1,[x8]
02c97c98  mov x0,x19
02c97c9c  mov x2,xzr
02c97ca0  bl 0x046bf554
02c97ca4  tbz w0,#0x0,0x02c97cb4
02c97ca8  mov x1,x19
02c97cac  bl 0x02c94280
02c97cb0  b 0x02c97b04
02c97cb4  adrp x8,0x5e64000
02c97cb8  ldr x8,[x8, #0x440]
02c97cbc  ldr x1,[x8]
02c97cc0  mov x0,x19
02c97cc4  mov x2,xzr
02c97cc8  bl 0x046bf554
02c97ccc  tbz w0,#0x0,0x02c97cdc
02c97cd0  mov x1,x19
02c97cd4  bl 0x02c98728
02c97cd8  b 0x02c97b04
02c97cdc  adrp x8,0x5e64000
02c97ce0  ldr x8,[x8, #0x1d8]
02c97ce4  ldr x1,[x8]
02c97ce8  mov x0,x19
02c97cec  mov x2,xzr
02c97cf0  bl 0x046b2ddc
02c97cf4  tbz w0,#0x0,0x02c97d00
02c97cf8  bl 0x02c98870
02c97cfc  b 0x02c97b04
02c97d00  adrp x8,0x5e64000
02c97d04  ldr x8,[x8, #0x268]
02c97d08  ldr x1,[x8]
02c97d0c  mov x0,x19
02c97d10  mov x2,xzr
02c97d14  bl 0x046b2ddc
02c97d18  tbz w0,#0x0,0x02c97d24
02c97d1c  bl 0x02c9895c
02c97d20  b 0x02c97b04
02c97d24  adrp x8,0x5e64000
02c97d28  ldr x8,[x8, #0x428]
02c97d2c  str x20,[sp, #0x8]
02c97d30  ldr x0,[x8]
02c97d34  add x1,sp,#0x8
02c97d38  bl 0x029f5bd8
02c97d3c  adrp x8,0x5e64000
02c97d40  mov x2,x0
02c97d44  ldr x8,[x8, #0x430]
02c97d48  ldr x0,[x8]
02c97d4c  mov x1,x19
02c97d50  mov x3,xzr
02c97d54  bl 0x046c1d14
02c97d58  adrp x8,0x5e58000
02c97d5c  mov x20,x0
02c97d60  ldr x8,[x8, #0xf08]
02c97d64  ldr x0,[x8]
02c97d68  ldr w8,[x0, #0xe4]
02c97d6c  cbnz w8,0x02c97d74
02c97d70  bl 0x029f5bd0
02c97d74  mov x0,x20
02c97d78  mov x1,xzr
02c97d7c  bl 0x0579a47c
02c97d80  mov w0,wzr
02c97d84  b 0x02c97b04
02c97d88  bl 0x029f5cfc
02c97d8c  bl 0x029f5cfc
02c97d90  bl 0x029f5cfc
