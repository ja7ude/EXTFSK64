	.386p
	ifdef ??version
	if    ??version GT 500H
	.mmx
	endif
	endif
	model flat
	ifndef	??version
	?debug	macro
	endm
	endif
	?debug	S "D:\MyProjects\amprog\ExtFsk\ExtFsk64eOpenSource\Main.cpp"
	?debug	T "D:\MyProjects\amprog\ExtFsk\ExtFsk64eOpenSource\Main.cpp"
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
_DATA	segment dword public use32 'DATA'
_DATA	ends
_BSS	segment dword public use32 'BSS'
_BSS	ends
DGROUP	group	_BSS,_DATA
_BSS	segment dword public use32 'BSS'
	align	4
_sys	label	byte
	db	532	dup(?)
 ?debug  C FB0C0100600000
_BSS	ends
_TEXT	segment dword public use32 'CODE'
@TimeProc$qqsuiuiululul	segment virtual
	align	2
@@TimeProc$qqsuiuiululul	proc	near
?live16385@0:
@1:
	push      ebp
	mov       ebp,esp
	mov       eax,dword ptr [ebp+16]
?live16385@32: ; EAX = pMain
	mov       edx,dword ptr [ebp+8]
	cmp       edx,dword ptr [eax+896]
	jne       short @3
?live16385@48: ; 
	add       eax,820
	call      @@CFSK@Timer$qqrv
@4:
@3:
	pop       ebp
	ret       20
@@TimeProc$qqsuiuiululul	endp
@TimeProc$qqsuiuiululul	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@TimeProc2$qqrv	segment virtual
	align	2
@@TExtFSK@TimeProc2$qqrv	proc	near
?live16386@0:
@5:
	add       eax,820
	call      @@CFSK@Timer$qqrv
@6:
	ret 
@@TExtFSK@TimeProc2$qqrv	endp
@TExtFSK@TimeProc2$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCHE$@SetDirName$qqrpcpxc	segment virtual
	align	2
@@_$DCHE$@SetDirName$qqrpcpxc	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
@_$DCHE$@SetDirName$qqrpcpxc	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTIE$@SetDirName$qqrpcpxc	segment virtual
	align	2
@@_$ECTIE$@SetDirName$qqrpcpxc	label	dword
	dd	0
	dd	-48
	dw	0
	dw	5
	dd	0
	dd	@@_$DCHE$@SetDirName$qqrpcpxc+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCHE$@SetDirName$qqrpcpxc
	dw	20
	dw	5
	dd	1
	dd	@@_$DCHE$@SetDirName$qqrpcpxc+32
	dw	20
	dw	5
	dd	1
	dd	@@_$DCHE$@SetDirName$qqrpcpxc+48
@_$ECTIE$@SetDirName$qqrpcpxc	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@SetDirName$qqrpcpxc	segment virtual
	align	2
@@SetDirName$qqrpcpxc	proc	near
?live16387@0:
@7:
	push      ebp
	mov       ebp,esp
	add       esp,-820
	push      ebx
	push      esi
	mov       esi,edx
	mov       ebx,eax
	mov       eax,offset @@_$ECTIE$@SetDirName$qqrpcpxc
	call      @__InitExceptBlockLDTC
?live16387@16: ; EBX = t, ESI = pName
	mov       word ptr [ebp-32],8
	xor       edx,edx
	lea       ecx,dword ptr [ebp-820]
	mov       dword ptr [ebp-4],edx
	lea       eax,dword ptr [ebp-564]
	inc       dword ptr [ebp-20]
	lea       edx,dword ptr [ebp-308]
	mov       word ptr [ebp-32],20
	push      ecx
	push      eax
	push      edx
	lea       ecx,dword ptr [ebp-51]
	push      ecx
	push      esi
	call      @__splitpath
?live16387@144: ; EBX = t
	mov       word ptr [ebp-32],32
?live16387@160: ; EBX = t, ESI = pName
	add       esp,20
?live16387@176: ; EBX = t
	lea       edx,dword ptr [ebp-51]
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-20]
	lea       edx,dword ptr [ebp-8]
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$basg$qqrrx17System@AnsiString
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-32],44
	lea       edx,dword ptr [ebp-308]
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-20]
	lea       edx,dword ptr [ebp-12]
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$brplu$qqrrx17System@AnsiString
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	push      259
	cmp       dword ptr [ebp-4],0
	je        short @8
	mov       ecx,dword ptr [ebp-4]
	jmp       short @9
@8:
	mov       ecx,offset s@
@9:
	push      ecx
	push      ebx
	call      @_strncpy
	add       esp,12
?live16387@224: ; 
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr fs:[0],eax
@10:
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@SetDirName$qqrpcpxc	endp
@SetDirName$qqrpcpxc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@SetEXT$qqrpcpxc	segment virtual
	align	2
@@SetEXT$qqrpcpxc	proc	near
?live16391@0:
@11:
	push      ebx
	push      esi
	push      edi
	mov       edi,edx
	mov       esi,eax
?live16391@16: ; ESI = t, EDI = pExt
	push      esi
	call      @@%LASTP$pc%$qpc$pc
	pop       ecx
	mov       ebx,eax
?live16391@32: ; EBX = p, ESI = t, EDI = pExt
	cmp       esi,ebx
	jae       short @13
@12:
	movsx     eax,byte ptr [ebx]
	cmp       eax,46
	jne       short @14
?live16391@64: ; EBX = p, EDI = pExt
	inc       ebx
	xor       eax,eax
	push      edi
	or        ecx,-1
	repnz scasb
	not       ecx
	sub       edi,ecx
	mov       esi,ebx
	xchg      edi,esi
	mov       edx,ecx
	mov       eax,edi
	shr       ecx,2
	rep   movsd
	mov       ecx,edx
	and       ecx,3
	rep   movsb
	pop       edi
?live16391@96: ; 
	jmp       short @15
?live16391@112: ; EBX = p, ESI = t, EDI = pExt
@14:
	dec       ebx
	cmp       esi,ebx
	jb        short @12
?live16391@128: ; 
@13:
@17:
@15:
	pop       edi
	pop       esi
	pop       ebx
	ret 
@@SetEXT$qqrpcpxc	endp
@SetEXT$qqrpcpxc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@%LASTP$pc%$qpc$pc	segment virtual
	align	2
@@%LASTP$pc%$qpc$pc	proc	near
?live16392@0:
@18:
	push      ebp
	mov       ebp,esp
	push      ebx
	mov       ebx,dword ptr [ebp+8]
?live16392@16: ; EBX = p
	push      ebx
	call      @_strlen
	pop       ecx
?live16392@32: ; EBX = p, EAX = l
	test      eax,eax
	je        short @19
	dec       eax
	add       ebx,eax
?live16392@48: ; EBX = p
@19:
	mov       eax,ebx
?live16392@64: ; 
@21:
@20:
	pop       ebx
	pop       ebp
	ret 
@@%LASTP$pc%$qpc$pc	endp
@%LASTP$pc%$qpc$pc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@htow$qqrpxc	segment virtual
	align	2
@@htow$qqrpxc	proc	near
?live16393@0:
@22:
	push      ebx
?live16393@16: ; EAX = p
	xor       ecx,ecx
	jmp       short @24
?live16393@32: ; EAX = p, ECX = d
@23:
	movsx     edx,byte ptr [eax]
	cmp       edx,32
	je        short @25
	cmp       edx,36
	je        short @25
?live16393@48: ; EAX = p, EDX = @temp1, ECX = d
	shl       ecx,4
	mov       ebx,edx
	and       ebx,15
	add       ecx,ebx
	cmp       edx,65
	jl        short @26
	add       ecx,9
?live16393@96: ; EAX = p, ECX = d
@26:
@25:
	inc       eax
@24:
	cmp       byte ptr [eax],0
	jne       short @23
?live16393@112: ; ECX = d
	mov       eax,ecx
?live16393@128: ; 
@29:
@28:
	pop       ebx
	ret 
@@htow$qqrpxc	endp
@htow$qqrpxc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@_bOutport$qusuc	segment virtual
	align	2
@@_bOutport$qusuc	proc	near
?live16394@0:
	push      ebp
	mov       ebp,esp
@30:
	mov       eax,dword ptr [_sys+528]
	test      eax,eax
	je        short @31
?live16394@32: ; EAX = @temp0
	mov       cl,byte ptr [ebp+12]
	mov       dx,word ptr [ebp+8]
	call      @@CDLPort@bOutport$qqrusuc
?live16394@48: ; 
@35:
	pop       ebp
	ret 
@31:
	cmp       dword ptr [_sys+4],0
	jne       short @33
	push		edx
	mov			al,byte ptr [ebp+12]
	mov			dx,word ptr [ebp+8]
	out			dx,al
	pop			edx
@33:
@32:
@34:
	pop       ebp
	ret 
@@_bOutport$qusuc	endp
@_bOutport$qusuc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@_bInport$qus	segment virtual
	align	2
@@_bInport$qus	proc	near
?live16395@0:
	push      ebp
	mov       ebp,esp
@36:
	mov       eax,dword ptr [_sys+528]
	test      eax,eax
	je        short @37
?live16395@32: ; EAX = @temp0
	mov       dx,word ptr [ebp+8]
	call      @@CDLPort@bInport$qqrus
@42:
	pop       ebp
	ret 
?live16395@48: ; 
@37:
	cmp       dword ptr [_sys+4],0
	jne       short @39
	push		edx
	mov			dx,word ptr [ebp+8]
	in			al,dx
	pop			edx
@43:
	pop       ebp
	ret 
@39:
	mov       al,-1
@40:
@41:
@38:
	pop       ebp
	ret 
@@_bInport$qus	endp
@_bInport$qus	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@Is64bitOS$qv	segment virtual
	align	2
@@Is64bitOS$qv	proc	near
?live16396@0:
@44:
	push      offset s@+1
	call      @_getenv
	pop       ecx
?live16396@16: ; EAX = ptr
	test      eax,eax
	je        short @45
?live16396@32: ; 
	mov       al,1
@49:
	ret 
@45:
	xor       eax,eax
@48:
@46:
	ret 
@@Is64bitOS$qv	endp
@Is64bitOS$qv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
$ifkimmia	label	byte
	db	46
	db	92
	db	105
	db	110
	db	112
	db	111
	db	117
	db	116
	db	51
	db	50
	db	46
	db	100
	db	108
	db	108
	db	0
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCJE$@CDLPort@$bctr$qqrpxc	segment virtual
	align	2
@@_$DCJE$@CDLPort@$bctr$qqrpxc	label	dword
	dd	@@$xt$p7CDLPort
	dd	5
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	0
@_$DCJE$@CDLPort@$bctr$qqrpxc	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTKE$@CDLPort@$bctr$qqrpxc	segment virtual
	align	2
@@_$ECTKE$@CDLPort@$bctr$qqrpxc	label	dword
	dd	0
	dd	-52
	dw	0
	dw	5
	dd	0
	dd	@@_$DCJE$@CDLPort@$bctr$qqrpxc
	dw	8
	dw	5
	dd	2
	dd	@@_$DCJE$@CDLPort@$bctr$qqrpxc+16
	dw	8
	dw	5
	dd	2
	dd	@@_$DCJE$@CDLPort@$bctr$qqrpxc+32
	dw	8
	dw	5
	dd	2
	dd	@@_$DCJE$@CDLPort@$bctr$qqrpxc+48
@_$ECTKE$@CDLPort@$bctr$qqrpxc	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@CDLPort@$bctr$qqrpxc	segment virtual
	align	2
@@CDLPort@$bctr$qqrpxc	proc	near
?live16397@0:
@50:
	push      ebp
	mov       ebp,esp
	add       esp,-396
	push      ebx
	push      esi
	push      edi
	mov       edi,edx
	mov       dword ptr [ebp-4],eax
	lea       ebx,dword ptr [ebp-4]
	lea       esi,dword ptr [ebp-52]
	mov       eax,offset @@_$ECTKE$@CDLPort@$bctr$qqrpxc
	call      @__InitExceptBlockLDTC
?live16397@16: ; EBX = &this, ESI = &@temp9, EDI = pPath
	mov       word ptr [esi+16],8
	mov       eax,dword ptr [ebx]
	xor       edx,edx
	add       eax,4
	mov       dword ptr [eax],edx
	xor       edx,edx
	inc       dword ptr [esi+28]
	mov       eax,dword ptr [ebx]
	add       eax,8
	mov       dword ptr [eax],edx
	xor       eax,eax
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [ebx]
	mov       dword ptr [ecx],eax
	xor       ecx,ecx
	mov       edx,dword ptr [ebx]
	mov       dword ptr [edx+12],ecx
	xor       edx,edx
	mov       eax,dword ptr [ebx]
	mov       dword ptr [eax+16],edx
	lea       eax,dword ptr [ebp-8]
	mov       word ptr [esi+16],20
	mov       edx,edi
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	lea       edx,dword ptr [ebp-8]
	mov       eax,dword ptr [ebx]
	add       eax,8
	call      @@System@AnsiString@$basg$qqrrx17System@AnsiString
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
?live16397@128: ; EBX = &this, ESI = &@temp9
	mov       eax,dword ptr [ebx]
	add       eax,8
	cmp       dword ptr [eax],0
	je        short @51
	mov       edx,dword ptr [eax]
	jmp       short @52
@51:
	mov       edx,offset s@
@52:
	push      edx
	call      @@%LASTP$pc%$qpc$pc
	pop       ecx
	mov       word ptr [esi+16],8
?live16397@144: ; EAX = p, EBX = &this, ESI = &@temp9
	movsx     ecx,byte ptr [eax]
	cmp       ecx,92
	jne       short @53
	mov       byte ptr [eax],0
?live16397@176: ; EBX = &this, ESI = &@temp9
@53:
	push      esi
	lea       edi,dword ptr [ebp-68]
	mov       esi,offset $ifkimmia
	mov       ecx,3
	rep   movsd
	movsw
	movsb
	xor       eax,eax
	pop       esi
	push      esi
	lea       edi,dword ptr [ebp-68]
	or        ecx,-1
	lea       esi,dword ptr [ebp-396]
	repnz scasb
	not       ecx
	sub       edi,ecx
	mov       edx,ecx
	xchg      edi,esi
	shr       ecx,2
	mov       eax,edi
	rep   movsd
	mov       ecx,edx
	lea       edx,dword ptr [ebp-396]
	and       ecx,3
	rep   movsb
	pop       esi
	push      edx
	mov       eax,dword ptr [ebx]
	add       eax,8
	cmp       dword ptr [eax],0
	je        short @54
	mov       ecx,dword ptr [eax]
	jmp       short @55
@54:
	mov       ecx,offset s@
@55:
	push      ecx
	push      offset s@+14
	lea       eax,dword ptr [ebp-328]
	push      eax
	call      @_wsprintfA
	mov       word ptr [esi+16],32
	add       esp,16
	lea       edx,dword ptr [ebp-328]
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       eax,dword ptr [eax]
	call      @@Sysutils@FileExists$qqrx17System@AnsiString
	xor       edx,edx
	mov       dl,al
	lea       eax,dword ptr [ebp-12]
	cmp       edx,1
	mov       edx,2
	sbb       ecx,ecx
	neg       ecx
	push      ecx
	dec       dword ptr [esi+28]
	call      @@System@AnsiString@$bdtr$qqrv
	pop       ecx
	test      cl,cl
	je        short @56
	mov       eax,dword ptr [esi]
	mov       dword ptr fs:[0],eax
	jmp       @57
@56:
	mov       word ptr [esi+16],44
	mov       edx,offset s@
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	lea       edx,dword ptr [ebp-16]
	mov       eax,dword ptr [ebx]
	add       eax,8
	call      @@System@AnsiString@$basg$qqrrx17System@AnsiString
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	lea       ecx,dword ptr [ebp-396]
	push      ecx
	call      @LoadLibraryA
	mov       edi,eax
	mov       eax,dword ptr [ebx]
	mov       dword ptr [eax],edi
?live16397@384: ; EBX = &this, EDI = @temp6, ESI = &@temp9
	test      edi,edi
	jne       short @58
?live16397@400: ; EBX = &this, ESI = &@temp9
	mov       edx,dword ptr [esi]
	mov       dword ptr fs:[0],edx
	jmp       short @57
@58:
	push      offset s@+20
	mov       ecx,dword ptr [ebx]
	mov       eax,dword ptr [ecx]
	push      eax
	call      @GetProcAddress
	mov       edi,eax
	mov       eax,dword ptr [ebx]
	mov       dword ptr [eax+12],edi
?live16397@432: ; EBX = &this, EDI = @temp7, ESI = &@temp9
	test      edi,edi
	jne       short @59
?live16397@448: ; EBX = &this, ESI = &@temp9
	mov       edx,dword ptr [ebx]
	mov       ecx,dword ptr [edx]
	push      ecx
	call      @FreeLibrary
	mov       eax,dword ptr [ebx]
	xor       edx,edx
	mov       dword ptr [eax],edx
	mov       ecx,dword ptr [esi]
	mov       dword ptr fs:[0],ecx
	jmp       short @57
@59:
	push      offset s@+26
	mov       eax,dword ptr [ebx]
	mov       edx,dword ptr [eax]
	push      edx
	call      @GetProcAddress
	mov       edi,eax
	mov       eax,dword ptr [ebx]
	mov       dword ptr [eax+16],edi
?live16397@512: ; EBX = &this, EDI = @temp8, ESI = &@temp9
	test      edi,edi
	jne       short @60
?live16397@528: ; EBX = &this, ESI = &@temp9
	mov       edx,dword ptr [ebx]
	mov       ecx,dword ptr [edx]
	push      ecx
	call      @FreeLibrary
	mov       eax,dword ptr [ebx]
	xor       edx,edx
	mov       dword ptr [eax],edx
	mov       ecx,dword ptr [esi]
	mov       dword ptr fs:[0],ecx
@60:
@57:
	mov       eax,dword ptr [esi]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebx]
?live16397@592: ; 
@62:
@61:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@CDLPort@$bctr$qqrpxc	endp
@CDLPort@$bctr$qqrpxc	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCLE$@CDLPort@$bdtr$qqrv	segment virtual
	align	2
@@_$DCLE$@CDLPort@$bdtr$qqrv	label	dword
	dd	@@$xt$p7CDLPort
	dd	5
	dd	-4
	dd	0
@_$DCLE$@CDLPort@$bdtr$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTME$@CDLPort@$bdtr$qqrv	segment virtual
	align	2
@@_$ECTME$@CDLPort@$bdtr$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCLE$@CDLPort@$bdtr$qqrv
@_$ECTME$@CDLPort@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@CDLPort@$bdtr$qqrv	segment virtual
	align	2
@@CDLPort@$bdtr$qqrv	proc	near
?live16401@0:
@63:
	push      ebp
	mov       ebp,esp
	add       esp,-40
	push      ebx
	mov       ebx,edx
	mov       dword ptr [ebp-4],eax
	mov       eax,offset @@_$ECTME$@CDLPort@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-12],2
	cmp       dword ptr [ebp-4],0
	je        short @64
?live16401@16: ; EBX = $delflag
	mov       word ptr [ebp-24],8
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx]
	test      eax,eax
	je        short @65
?live16401@48: ; EAX = @temp0, EBX = $delflag
	push      eax
	call      @FreeLibrary
?live16401@64: ; EBX = $delflag
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
@65:
	dec       dword ptr [ebp-12]
	mov       edx,2
	mov       eax,dword ptr [ebp-4]
	add       eax,8
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-12]
	mov       edx,2
	mov       eax,dword ptr [ebp-4]
	add       eax,4
	call      @@System@AnsiString@$bdtr$qqrv
	test      bl,1
	je        short @66
	mov       ecx,dword ptr [ebp-4]
	push      ecx
	call      @$bdele$qpv
	pop       ecx
?live16401@80: ; 
@66:
@64:
	mov       eax,dword ptr [ebp-40]
	mov       dword ptr fs:[0],eax
@67:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@CDLPort@$bdtr$qqrv	endp
@CDLPort@$bdtr$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CDLPort@GetProc_$qpxc	segment virtual
	align	2
@@CDLPort@GetProc_$qpxc	proc	near
?live16404@0:
@68:
	push      ebp
	mov       ebp,esp
	xor       eax,eax
@70:
@69:
	pop       ebp
	ret 
@@CDLPort@GetProc_$qpxc	endp
@CDLPort@GetProc_$qpxc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CDLPort@GetProc$qpxc	segment virtual
	align	2
@@CDLPort@GetProc$qpxc	proc	near
?live16405@0:
@71:
	push      ebp
	mov       ebp,esp
	xor       eax,eax
@73:
@72:
	pop       ebp
	ret 
@@CDLPort@GetProc$qpxc	endp
@CDLPort@GetProc$qpxc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CDLPort@IsFile$qqrpxc	segment virtual
	align	2
@@CDLPort@IsFile$qqrpxc	proc	near
?live16406@0:
@74:
	push      ebx
?live16406@16: ; EDX = pName
	push      0
	push      0
	push      3
	push      0
	push      1
	push      0
	push      edx
	call      @CreateFileA
	mov       ebx,eax
?live16406@32: ; EBX = hFile
	cmp       ebx,-1
	je        short @75
	push      ebx
	call      @CloseHandle
@75:
	cmp       ebx,-1
	setne     al
	and       eax,1
?live16406@80: ; 
@77:
@76:
	pop       ebx
	ret 
@@CDLPort@IsFile$qqrpxc	endp
@CDLPort@IsFile$qqrpxc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CDLPort@bInport$qqrus	segment virtual
	align	2
@@CDLPort@bInport$qqrus	proc	near
?live16407@0:
@78:
	push      ebx
	push      esi
	mov       esi,edx
	mov       ebx,eax
?live16407@16: ; EBX = this, ESI = port
	push      esi
	call      dword ptr [ebx+12]
?live16407@32: ; 
@80:
@79:
	pop       esi
	pop       ebx
	ret 
@@CDLPort@bInport$qqrus	endp
@CDLPort@bInport$qqrus	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CDLPort@bOutport$qqrusuc	segment virtual
	align	2
@@CDLPort@bOutport$qqrusuc	proc	near
?live16408@0:
@81:
	and       ecx,255
	push      ecx
	push      edx
	call      dword ptr [eax+16]
@82:
	ret 
@@CDLPort@bOutport$qqrusuc	endp
@CDLPort@bOutport$qqrusuc	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$ECTNE$@CFSK@$bctr$qqrv	segment virtual
	align	2
@@_$ECTNE$@CFSK@$bctr$qqrv	label	dword
	dd	0
	dd	-36
@_$ECTNE$@CFSK@$bctr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@CFSK@$bctr$qqrv	segment virtual
	align	2
@@CFSK@$bctr$qqrv	proc	near
?live16409@0:
@83:
	push      ebp
	mov       ebp,esp
	add       esp,-36
	push      ebx
	mov       ebx,eax
	mov       eax,offset @@_$ECTNE$@CFSK@$bctr$qqrv
	call      @__InitExceptBlockLDTC
?live16409@16: ; EBX = this
	mov       word ptr [ebx+4],0
	mov       byte ptr [ebx+6],0
	xor       edx,edx
	mov       dword ptr [ebx+68],edx
	mov       dword ptr [ebx+8],5
	mov       eax,ebx
	call      @@CFSK@Init$qqrv
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
	mov       eax,ebx
?live16409@112: ; 
@85:
@84:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@CFSK@$bctr$qqrv	endp
@CFSK@$bctr$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CFSK@Init$qqrv	segment virtual
	align	2
@@CFSK@Init$qqrv	proc	near
?live16411@0:
@86:
	mov       dword ptr [eax],-1
?live16411@16: ; EAX = this
	xor       edx,edx
	mov       dword ptr [eax+36],-1
	mov       dword ptr [eax+12],edx
	xor       ecx,ecx
	mov       dword ptr [eax+16],2
	mov       dword ptr [eax+20],ecx
	xor       edx,edx
	mov       dword ptr [eax+24],edx
	xor       ecx,ecx
	mov       dword ptr [eax+48],1
	mov       dword ptr [eax+52],-1
	mov       dword ptr [eax+60],ecx
	mov       dword ptr [eax+64],-1
?live16411@208: ; 
@87:
	ret 
@@CFSK@Init$qqrv	endp
@CFSK@Init$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CFSK@SetHandle$qqrpvii	segment virtual
	align	2
@@CFSK@SetHandle$qqrpvii	proc	near
?live16412@0:
@88:
	push      ebp
	mov       ebp,esp
?live16412@16: ; EAX = this, EDX = hPort, ECX = nFSK
	mov       dword ptr [eax],-1
	mov       dword ptr [eax+12],ecx
?live16412@48: ; EAX = this, EDX = hPort
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [eax+16],ecx
	mov       dword ptr [eax+52],-1
	mov       dword ptr [eax+64],-1
	mov       dword ptr [eax],edx
?live16412@112: ; EAX = this
	xor       edx,edx
	mov       dword ptr [eax+68],edx
?live16412@128: ; 
@89:
	pop       ebp
	ret       4
@@CFSK@SetHandle$qqrpvii	endp
@CFSK@SetHandle$qqrpvii	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CFSK@SetPara$qqrl	segment virtual
	align	2
@@CFSK@SetPara$qqrl	proc	near
?live16413@0:
@90:
	sar       edx,2
	and       edx,15
	mov       dword ptr [eax+8],edx
@91:
	ret 
@@CFSK@SetPara$qqrl	endp
@CFSK@SetPara$qqrl	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CFSK@SetPort$qqrii	segment virtual
	align	2
@@CFSK@SetPort$qqrii	proc	near
?live16414@0:
@92:
	push      ebx
	mov       ebx,eax
?live16414@16: ; EBX = this, EDX = port, ECX = sw
	cmp       word ptr [ebx+4],0
	jne       short @93
	sub       edx,1
	jb        short @98
	je        short @97
	dec       edx
	je        short @96
	jmp       @101
?live16414@48: ; EBX = this, ECX = sw
@98:
	test      ecx,ecx
	je        short @99
	mov       eax,8
	jmp       short @100
@99:
	mov       eax,9
@100:
	push      eax
	mov       edx,dword ptr [ebx]
	push      edx
	call      @EscapeCommFunction
?live16414@64: ; 
@121:
	pop       ebx
	ret 
?live16414@80: ; EBX = this, ECX = sw
@97:
	test      ecx,ecx
	je        short @102
	mov       ecx,3
	jmp       short @103
@102:
	mov       ecx,4
@103:
	push      ecx
	mov       eax,dword ptr [ebx]
	push      eax
	call      @EscapeCommFunction
?live16414@96: ; 
@122:
	pop       ebx
	ret 
?live16414@112: ; EBX = this, ECX = sw
@96:
	test      ecx,ecx
	je        short @104
	mov       edx,5
	jmp       short @105
@104:
	mov       edx,6
@105:
	push      edx
	mov       eax,dword ptr [ebx]
	push      eax
	call      @EscapeCommFunction
?live16414@128: ; 
@123:
	pop       ebx
	ret 
@93:
	cmp       dword ptr [ebx+68],0
	jne       short @107
?live16414@160: ; EBX = this, EDX = port, ECX = sw
	inc       dword ptr [ebx+68]
	sub       edx,1
	jb        short @112
	je        short @111
	dec       edx
	je        short @110
	jmp       short @108
?live16414@192: ; EBX = this, ECX = sw
@112:
	test      ecx,ecx
	je        short @113
?live16414@208: ; EBX = this
	or        byte ptr [ebx+6],15
	jmp       short @114
@113:
	and       byte ptr [ebx+6],-16
@114:
	mov       cl,byte ptr [ebx+6]
	push      ecx
	mov       ax,word ptr [ebx+4]
	push      eax
	call      @@_bOutport$qusuc
	add       esp,8
	jmp       short @115
?live16414@288: ; EBX = this, ECX = sw
@111:
	test      ecx,ecx
	je        short @116
?live16414@304: ; EBX = this
	or        byte ptr [ebx+6],-16
	jmp       short @117
@116:
	and       byte ptr [ebx+6],15
@117:
	mov       dl,byte ptr [ebx+6]
	push      edx
	mov       cx,word ptr [ebx+4]
	push      ecx
	call      @@_bOutport$qusuc
	add       esp,8
	jmp       short @115
?live16414@384: ; EBX = this, ECX = sw
@110:
	test      ecx,ecx
	je        short @118
	mov       al,13
	jmp       short @119
@118:
	mov       al,12
@119:
	push      eax
	mov       dx,word ptr [ebx+4]
	add       dx,2
	push      edx
	call      @@_bOutport$qusuc
	add       esp,8
?live16414@400: ; EBX = this
@108:
@115:
	dec       dword ptr [ebx+68]
?live16414@416: ; 
@101:
@120:
@107:
	pop       ebx
	ret 
@@CFSK@SetPort$qqrii	endp
@CFSK@SetPort$qqrii	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CFSK@Timer$qqrv	segment virtual
	align	2
@@CFSK@Timer$qqrv	proc	near
?live16415@0:
@124:
	push      ebx
	mov       ebx,eax
?live16415@16: ; EBX = this
	cmp       dword ptr [ebx+24],0
	jne       @125
	mov       eax,dword ptr [ebx+20]
	dec       eax
	je        short @129
	dec       eax
	je        short @128
	jmp       short @126
@129:
	test      byte ptr [ebx+32],1
	je        short @130
	mov       edx,1
	jmp       short @131
@130:
	xor       edx,edx
@131:
	mov       dword ptr [ebx+48],edx
	sar       dword ptr [ebx+32],1
	dec       dword ptr [ebx+28]
	cmp       dword ptr [ebx+28],0
	jne       short @132
	inc       dword ptr [ebx+20]
@132:
	mov       dword ptr [ebx+24],1
	jmp       short @133
@128:
	mov       dword ptr [ebx+48],1
	mov       dword ptr [ebx+24],2
	xor       eax,eax
	mov       dword ptr [ebx+20],eax
	jmp       short @133
@126:
	mov       eax,dword ptr [ebx+36]
	cmp       eax,-1
	je        short @134
?live16415@240: ; EBX = this, EAX = @temp3
	mov       dword ptr [ebx+32],eax
?live16415@256: ; EBX = this
	xor       ecx,ecx
	mov       dword ptr [ebx+36],-1
	mov       edx,dword ptr [ebx+8]
	xor       eax,eax
	mov       dword ptr [ebx+28],edx
	mov       dword ptr [ebx+48],ecx
	mov       dword ptr [ebx+20],1
	mov       dword ptr [ebx+24],1
	mov       dword ptr [ebx+40],eax
	jmp       short @133
@134:
	mov       dword ptr [ebx+48],1
	mov       dword ptr [ebx+40],1
	jmp       short @133
@125:
	dec       dword ptr [ebx+24]
@133:
	cmp       dword ptr [ebx],-1
	je        short @136
	mov       eax,dword ptr [ebx+48]
	cmp       eax,dword ptr [ebx+52]
	je        short @137
?live16415@512: ; EBX = this, EAX = @temp1
	mov       dword ptr [ebx+52],eax
?live16415@528: ; EBX = this
	cmp       dword ptr [ebx+44],0
	je        short @138
	mov       ecx,dword ptr [ebx+48]
	jmp       short @139
@138:
	cmp       dword ptr [ebx+48],0
	sete      cl
	and       ecx,1
@139:
	mov       edx,dword ptr [ebx+12]
	mov       eax,ebx
	call      @@CFSK@SetPort$qqrii
@137:
	mov       eax,dword ptr [ebx+60]
	cmp       eax,dword ptr [ebx+64]
	je        short @140
	mov       eax,dword ptr [ebx+60]
	test      eax,eax
	jne       short @142
	cmp       dword ptr [ebx+40],0
	je        short @141
?live16415@576: ; EBX = this, EAX = @temp2
@142:
	mov       dword ptr [ebx+64],eax
?live16415@592: ; EBX = this
	cmp       dword ptr [ebx+56],0
	je        short @143
	cmp       dword ptr [ebx+60],0
	sete      cl
	and       ecx,1
	jmp       short @144
@143:
	mov       ecx,dword ptr [ebx+60]
@144:
	mov       edx,dword ptr [ebx+16]
	mov       eax,ebx
	call      @@CFSK@SetPort$qqrii
?live16415@608: ; 
@141:
@140:
@145:
@136:
	pop       ebx
	ret 
@@CFSK@Timer$qqrv	endp
@CFSK@Timer$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@CFSK@SetPTT$qqri	segment virtual
	align	2
@@CFSK@SetPTT$qqri	proc	near
?live16416@0:
@146:
	cmp       edx,dword ptr [eax+60]
	je        short @147
?live16416@16: ; EAX = this, EDX = sw
	mov       dword ptr [eax+60],edx
	test      edx,edx
	je        short @148
?live16416@48: ; EAX = this
	mov       dword ptr [eax+24],8
?live16416@64: ; 
@148:
@147:
@149:
	ret 
@@CFSK@SetPTT$qqri	endp
@CFSK@SetPTT$qqri	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent	segment virtual
	align	2
@@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent	label	dword
	dd	@@$xt$p7TExtFSK
	dd	1029
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	0
@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTPE$@TExtFSK@$bctr$qqrp18Classes@TComponent	segment virtual
	align	2
@@_$ECTPE$@TExtFSK@$bctr$qqrp18Classes@TComponent	label	dword
	dd	0
	dd	-52
	dw	0
	dw	5
	dd	0
	dd	@@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent
	dw	8
	dw	5
	dd	16
	dd	@@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent+32
	dw	8
	dw	5
	dd	16
	dd	@@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent+16
	dw	32
	dw	5
	dd	16
	dd	@@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent+48
	dw	32
	dw	5
	dd	17
	dd	@@_$DCOE$@TExtFSK@$bctr$qqrp18Classes@TComponent+64
@_$ECTPE$@TExtFSK@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@$bctr$qqrp18Classes@TComponent	segment virtual
	align	2
@@TExtFSK@$bctr$qqrp18Classes@TComponent	proc	near
?live16417@0:
	push      ebp
	mov       ebp,esp
	add       esp,-56
	push      ebx
	push      esi
	push      edi
	mov       byte ptr [ebp-20],dl
	test      dl,dl
	jle       short @150
	call      __ClassCreate
@150:
@151:
	mov       edi,ecx
	mov       byte ptr [ebp-53],dl
	mov       dword ptr [ebp-4],eax
	lea       ebx,dword ptr [ebp-4]
	lea       esi,dword ptr [ebp-52]
	mov       eax,offset @@_$ECTPE$@TExtFSK@$bctr$qqrp18Classes@TComponent
	call      @__InitExceptBlockLDTC
?live16417@16: ; EBX = &this, EDI = Owner, ESI = &@temp4
	mov       word ptr [esi+16],8
	mov       ecx,edi
	xor       edx,edx
	mov       eax,dword ptr [ebx]
	call      @@Forms@TForm@$bctr$qqrp18Classes@TComponent
	add       dword ptr [esi+28],15
	mov       eax,dword ptr [ebx]
	add       eax,776
	xor       edx,edx
	mov       dword ptr [eax],edx
	inc       dword ptr [esi+28]
	mov       eax,dword ptr [ebx]
	add       eax,820
	call      @@CFSK@$bctr$qqrv
?live16417@32: ; EBX = &this, ESI = &@temp4
	mov       edx,dword ptr [ebx]
	mov       dword ptr [edx+764],1
	xor       edx,edx
	mov       eax,dword ptr [ebx]
	call      @@Controls@TControl@SetTop$qqri
	xor       edx,edx
	mov       eax,dword ptr [ebx]
	call      @@Controls@TControl@SetLeft$qqri
	mov       ecx,dword ptr [ebx]
	mov       dword ptr [ecx+788],-1
	mov       eax,dword ptr [ebx]
	mov       word ptr [eax+900],0
	mov       edx,dword ptr [ebx]
	xor       eax,eax
	mov       word ptr [edx+902],0
	mov       ecx,dword ptr [ebx]
	mov       dword ptr [ecx+772],eax
	lea       eax,dword ptr [ebp-12]
	mov       edx,dword ptr [ebx]
	mov       dword ptr [edx+920],34359738
	mov       dword ptr [edx+924],1065781035
	mov       word ptr [esi+16],20
	mov       edx,offset _sys+268
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	lea       edx,dword ptr [ebp-12]
	mov       eax,dword ptr [ebx]
	add       eax,776
	call      @@System@AnsiString@$basg$qqrrx17System@AnsiString
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edx,offset s@+32
	mov       eax,dword ptr [ebx]
	add       eax,776
	cmp       dword ptr [eax],0
	je        short @152
	mov       ecx,dword ptr [eax]
	jmp       short @153
@152:
	mov       ecx,offset s@
@153:
	mov       eax,ecx
	call      @@SetEXT$qqrpcpxc
	mov       eax,dword ptr [ebx]
	call      @@TExtFSK@ListLPT$qqrv
	mov       edx,dword ptr [ebx]
	mov       eax,dword ptr [edx+728]
	xor       edx,edx
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	mov       eax,dword ptr [ebx]
	call      @@TExtFSK@ReadIniFile$qqrv
	mov       edx,dword ptr [ebx]
	mov       eax,dword ptr [ebx]
	movsx     ecx,byte ptr [edx+531]
	mov       dword ptr [eax+760],ecx
	mov       eax,dword ptr [ebx]
	call      @@TExtFSK@OpenPort$qqrv
	mov       eax,dword ptr [ebx]
	call      @@TExtFSK@UpdatePort$qqrv
	mov       edx,dword ptr [ebx]
	xor       ecx,ecx
	lea       eax,dword ptr [ebp-8]
	mov       dword ptr [edx+764],ecx
	mov       word ptr [esi+16],44
	mov       edx,offset s@+36
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       edx,offset s@+44
	mov       word ptr [esi+16],32
	mov       word ptr [esi+16],56
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	lea       edx,dword ptr [ebp-16]
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$brplu$qqrrx17System@AnsiString
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edx,dword ptr [ebp-8]
	mov       eax,dword ptr [ebx]
	call      @@Controls@TControl@SetText$qqrx17System@AnsiString
	mov       ecx,dword ptr [ebx]
	xor       eax,eax
	mov       dword ptr [ecx+896],eax
	mov       edx,dword ptr [ebx]
	xor       ecx,ecx
	mov       dword ptr [edx+912],ecx
	xor       ecx,ecx
	xor       edx,edx
	mov       eax,dword ptr [ebx]
	call      @@TExtFSK@SetPTT$qqrii
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [esi+16],8
	mov       ecx,dword ptr [esi]
	mov       dword ptr fs:[0],ecx
	mov       eax,dword ptr [ebx]
@155:
@154:
	cmp       byte ptr [ebp-53],0
	je        short @156
	call      __AfterConstruction
?live16417@528: ; 
@156:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@$bctr$qqrp18Classes@TComponent	endp
@TExtFSK@$bctr$qqrp18Classes@TComponent	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@killTimer$qqrv	segment virtual
	align	2
@@TExtFSK@killTimer$qqrv	proc	near
?live16422@0:
@157:
	push      ebx
	mov       ebx,eax
?live16422@16: ; EBX = this
	mov       eax,dword ptr [ebx+896]
	test      eax,eax
	je        short @158
?live16422@32: ; EBX = this, EAX = @temp1
	push      eax
	call      @timeKillEvent
?live16422@48: ; EBX = this
	xor       edx,edx
	mov       dword ptr [ebx+896],edx
	mov       ecx,dword ptr [ebx+780]
	push      ecx
	call      @timeEndPeriod
@158:
	mov       eax,dword ptr [ebx+912]
	test      eax,eax
	je        short @159
?live16422@96: ; EBX = this, EAX = @temp2
	call      @@Classes@TThread@Terminate$qqrv
?live16422@112: ; EBX = this
	xor       edx,edx
	mov       dword ptr [ebx+912],edx
?live16422@128: ; 
@159:
@160:
	pop       ebx
	ret 
@@TExtFSK@killTimer$qqrv	endp
@TExtFSK@killTimer$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@FormClose$qqrp14System@TObjectr18Forms@TCloseAction	segment virtual
	align	2
@@TExtFSK@FormClose$qqrp14System@TObjectr18Forms@TCloseAction	proc	near
?live16423@0:
@161:
	push      ebx
	mov       ebx,eax
?live16423@16: ; EBX = this
	mov       eax,ebx
	call      @@TExtFSK@killTimer$qqrv
	cmp       dword ptr [ebx+788],-1
	je        short @162
	mov       eax,dword ptr [ebx+748]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	xor       ecx,ecx
	mov       cl,al
	mov       eax,dword ptr [ebx+740]
	mov       edx,dword ptr [eax+512]
	lea       eax,dword ptr [ebx+820]
	call      @@CFSK@SetPort$qqrii
@162:
	mov       eax,ebx
	call      @@TExtFSK@ClosePort$qqrv
	mov       eax,ebx
	call      @@TExtFSK@WriteIniFile$qqrv
?live16423@96: ; 
@163:
	pop       ebx
	ret 
@@TExtFSK@FormClose$qqrp14System@TObjectr18Forms@TCloseAction	endp
@TExtFSK@FormClose$qqrp14System@TObjectr18Forms@TCloseAction	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCQE$@TExtFSK@ReadIniFile$qqrv	segment virtual
	align	2
@@_$DCQE$@TExtFSK@ReadIniFile$qqrv	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-20
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-24
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-28
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-32
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-36
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-40
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-44
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-48
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-52
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-56
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-60
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-64
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-68
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-72
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-76
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-80
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-84
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-88
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-92
	dd	0
	dd	@@$xt$a2$p20Inifiles@TMemIniFile
	dd	20495
	dd	-100
	dd	0
@_$DCQE$@TExtFSK@ReadIniFile$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTRE$@TExtFSK@ReadIniFile$qqrv	segment virtual
	align	2
@@_$ECTRE$@TExtFSK@ReadIniFile$qqrv	label	dword
	dd	0
	dd	-136
	dw	0
	dw	5
	dd	0
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+16
	dw	8
	dw	5
	dd	0
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+32
	dw	8
	dw	5
	dd	1
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+84
	dw	0
	dw	5
	dd	0
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+100
	dw	0
	dw	5
	dd	0
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+128
	dw	0
	dw	5
	dd	0
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+156
	dw	0
	dw	5
	dd	0
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv
	dw	80
	dw	5
	dd	0
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+184
	dw	80
	dw	5
	dd	1
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+236
	dw	80
	dw	5
	dd	1
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+264
	dw	80
	dw	5
	dd	1
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+292
	dw	80
	dw	5
	dd	1
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+320
	dw	80
	dw	5
	dd	0
	dd	0
	dw	152
	dw	5
	dd	1
	dd	@@_$DCQE$@TExtFSK@ReadIniFile$qqrv+348
@_$ECTRE$@TExtFSK@ReadIniFile$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@ReadIniFile$qqrv	segment virtual
	align	2
@@TExtFSK@ReadIniFile$qqrv	proc	near
?live16424@0:
@164:
	push      ebp
	mov       ebp,esp
	add       esp,-168
	push      ebx
	push      esi
	push      edi
	mov       ebx,eax
	mov       eax,offset @@_$ECTRE$@TExtFSK@ReadIniFile$qqrv
	call      @__InitExceptBlockLDTC
?live16424@16: ; EBX = this
	mov       ecx,dword ptr [ebx+776]
	mov       dl,1
	mov       eax,dword ptr [@Inifiles@TMemIniFile@]
	call      @@Inifiles@TMemIniFile@$bctr$qqrx17System@AnsiString
	mov       esi,eax
?live16424@32: ; EBX = this, ESI = pIniFile
	cmp       dword ptr [_sys+4],0
	je        short @166
	cmp       dword ptr [_sys+528],0
	je        @165
@166:
@167:
	mov       word ptr [ebp-120],20
	mov       edx,offset s@+73
	lea       eax,dword ptr [ebp-20]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	lea       edx,dword ptr [ebp-8]
	mov       ecx,dword ptr [eax]
	xor       eax,eax
	push      ecx
	mov       dword ptr [ebp-8],eax
	push      edx
	mov       edx,offset s@+66
	inc       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+53
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-12]
	push      ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi]
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-20]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-120],8
	cmp       dword ptr [ebp-8],0
	je        short @168
	mov       eax,dword ptr [ebp-8]
	jmp       short @169
@168:
	mov       eax,offset s@
@169:
	call      @@htow$qqrpxc
	mov       edi,eax
	mov       word ptr [ebx+902],di
?live16424@80: ; EBX = this, ESI = pIniFile, EDI = @temp7
	test      di,di
	je        short @170
@171:
	movzx     eax,di
	push      eax
	push      offset s@+75
	lea       edx,dword ptr [ebp-168]
	push      edx
	call      @_wsprintfA
?live16424@112: ; EBX = this, ESI = pIniFile
	mov       edi,dword ptr [ebx+728]
?live16424@128: ; EBX = this, ESI = pIniFile, EDI = @temp7
	add       esp,12
?live16424@144: ; EBX = this, ESI = pIniFile
	mov       word ptr [ebp-120],32
	add       edi,496
	lea       edx,dword ptr [ebp-168]
	lea       eax,dword ptr [ebp-24]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-24]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
@172:
@170:
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-120],0
@173:
@165:
	mov       ecx,dword ptr [ebx+52]
	push      ecx
	mov       edx,offset s@+89
	lea       eax,dword ptr [ebp-32]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+82
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-28]
	push      ecx
	mov       word ptr [ebp-120],44
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+8]
	mov       edx,eax
	mov       eax,ebx
	call      @@Controls@TControl@SetTop$qqri
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-32]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-28]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebx+48]
	push      ecx
	mov       edx,offset s@+93
	lea       eax,dword ptr [ebp-40]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+82
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-36]
	push      ecx
	mov       word ptr [ebp-120],56
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+8]
	mov       edx,eax
	mov       eax,ebx
	call      @@Controls@TControl@SetLeft$qqri
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-40]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-36]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	movsx     ecx,byte ptr [ebx+531]
	push      ecx
	mov       edx,offset s@+98
	lea       eax,dword ptr [ebp-48]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+82
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-44]
	push      ecx
	mov       word ptr [ebp-120],68
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+8]
	mov       edx,eax
	mov       eax,ebx
	call      @@Forms@TCustomForm@SetWindowState$qqr18Forms@TWindowState
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-48]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-44]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-120],92
	mov       edx,offset s@+118
	lea       eax,dword ptr [ebp-60]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	lea       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [eax]
	xor       eax,eax
	push      ecx
	mov       dword ptr [ebp-4],eax
	push      edx
	mov       edx,offset s@+113
	inc       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-56]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+104
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-52]
	push      ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi]
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-60]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-56]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-52]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-120],80
	mov       edi,dword ptr [ebx+728]
	add       edi,496
	mov       eax,dword ptr [edi]
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+80]
?live16424@256: ; EBX = this, ESI = pIniFile, EAX = n
	test      eax,eax
	jge       short @174
?live16424@272: ; EBX = this, ESI = pIniFile
	cmp       dword ptr [ebp-4],0
	je        short @175
	mov       edi,dword ptr [ebp-4]
	jmp       short @176
@175:
	mov       edi,offset s@
@176:
	push      edi
	call      @_atol
	pop       ecx
?live16424@288: ; EBX = this, ESI = pIniFile, EAX = n
	test      eax,eax
	jge       short @177
	xor       eax,eax
@177:
@174:
	mov       edx,eax
	mov       eax,dword ptr [ebx+728]
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
?live16424@320: ; EBX = this, ESI = pIniFile
	mov       edx,dword ptr [ebx+736]
	lea       eax,dword ptr [ebp-68]
	mov       ecx,dword ptr [edx+512]
	mov       edx,offset s@+123
	push      ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+104
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-64]
	push      ecx
	mov       word ptr [ebp-120],104
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+8]
	mov       edx,eax
	mov       eax,dword ptr [ebx+736]
	call      @@Extctrls@TCustomRadioGroup@SetItemIndex$qqri
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-68]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-64]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebx+740]
	mov       eax,dword ptr [ecx+512]
	push      eax
	mov       edx,offset s@+127
	lea       eax,dword ptr [ebp-76]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	lea       eax,dword ptr [ebp-72]
	push      edx
	mov       edx,offset s@+104
	mov       word ptr [ebp-120],116
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+8]
	mov       edx,eax
	mov       eax,dword ptr [ebx+740]
	call      @@Extctrls@TCustomRadioGroup@SetItemIndex$qqri
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-76]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-72]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       eax,dword ptr [ebx+744]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	xor       ecx,ecx
	mov       edx,offset s@+131
	mov       cl,al
	lea       eax,dword ptr [ebp-84]
	push      ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+104
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-80]
	push      ecx
	mov       word ptr [ebp-120],128
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+8]
	test      eax,eax
	mov       eax,dword ptr [ebx+744]
	setne     dl
	mov       ecx,dword ptr [eax]
	and       edx,1
	call      dword ptr [ecx+184]
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-84]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-80]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       eax,dword ptr [ebx+748]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	xor       ecx,ecx
	mov       edx,offset s@+138
	mov       cl,al
	lea       eax,dword ptr [ebp-92]
	push      ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,offset s@+104
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-88]
	push      ecx
	mov       word ptr [ebp-120],140
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-108]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+8]
	test      eax,eax
	mov       eax,dword ptr [ebx+748]
	setne     dl
	mov       ecx,dword ptr [eax]
	and       edx,1
	call      dword ptr [ecx+184]
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-92]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-88]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
?live16424@384: ; ESI = pIniFile
	mov       ebx,esi
	mov       dword ptr [ebp-100],ebx
	test      ebx,ebx
	je        short @178
	mov       eax,dword ptr [ebx]
	mov       dword ptr [ebp-96],eax
	mov       word ptr [ebp-120],164
	mov       edx,3
	mov       eax,dword ptr [ebp-100]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx-4]
	mov       word ptr [ebp-120],152
?live16424@400: ; 
@178:
@179:
	dec       dword ptr [ebp-108]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebp-136]
	mov       dword ptr fs:[0],ecx
@180:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@ReadIniFile$qqrv	endp
@TExtFSK@ReadIniFile$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCSE$@TExtFSK@WriteIniFile$qqrv	segment virtual
	align	2
@@_$DCSE$@TExtFSK@WriteIniFile$qqrv	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-20
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-24
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-28
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-32
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-36
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-40
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-44
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-48
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-52
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-56
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-60
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-64
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-68
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-72
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-76
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-80
	dd	0
	dd	@@$xt$a2$p20Inifiles@TMemIniFile
	dd	20495
	dd	-88
	dd	0
@_$DCSE$@TExtFSK@WriteIniFile$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTTE$@TExtFSK@WriteIniFile$qqrv	segment virtual
	align	2
@@_$ECTTE$@TExtFSK@WriteIniFile$qqrv	label	dword
	dd	0
	dd	-124
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+28
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+56
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+84
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+124
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+152
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+180
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+208
	dw	0
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+236
	dw	0
	dw	5
	dd	0
	dd	0
	dw	116
	dw	5
	dd	0
	dd	@@_$DCSE$@TExtFSK@WriteIniFile$qqrv+276
@_$ECTTE$@TExtFSK@WriteIniFile$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@WriteIniFile$qqrv	segment virtual
	align	2
@@TExtFSK@WriteIniFile$qqrv	proc	near
?live16428@0:
@181:
	push      ebp
	mov       ebp,esp
	add       esp,-160
	push      ebx
	push      esi
	push      edi
	mov       ebx,eax
	mov       eax,offset @@_$ECTTE$@TExtFSK@WriteIniFile$qqrv
	call      @__InitExceptBlockLDTC
?live16428@16: ; EBX = this
	mov       ecx,dword ptr [ebx+776]
	mov       dl,1
	mov       eax,dword ptr [@Inifiles@TMemIniFile@]
	call      @@Inifiles@TMemIniFile@$bctr$qqrx17System@AnsiString
	mov       esi,eax
?live16428@32: ; EBX = this, ESI = pIniFile
	mov       eax,dword ptr [ebx+52]
	push      eax
	mov       edx,offset s@+89
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	lea       eax,dword ptr [ebp-4]
	push      edx
	mov       edx,offset s@+82
	mov       word ptr [ebp-108],8
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebx+48]
	push      ecx
	mov       edx,offset s@+93
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,offset s@+82
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-12]
	push      ecx
	mov       word ptr [ebp-108],20
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	movsx     ecx,byte ptr [ebx+531]
	push      ecx
	mov       edx,offset s@+98
	lea       eax,dword ptr [ebp-24]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,offset s@+82
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-20]
	push      ecx
	mov       word ptr [ebp-108],32
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-24]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-20]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebx+728]
	add       ecx,496
	mov       dword ptr [ebp-128],ecx
	mov       eax,dword ptr [ebx+728]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       edx,eax
	xor       ecx,ecx
	mov       dword ptr [ebp-36],ecx
	lea       ecx,dword ptr [ebp-36]
	inc       dword ptr [ebp-96]
	mov       eax,dword ptr [ebp-128]
	mov       eax,dword ptr [eax]
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	lea       eax,dword ptr [ebp-36]
	mov       edx,dword ptr [eax]
	push      edx
	mov       edx,offset s@+113
	lea       eax,dword ptr [ebp-32]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,offset s@+104
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-28]
	push      ecx
	mov       word ptr [ebp-108],44
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+4]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-36]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-32]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-28]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebx+736]
	mov       eax,dword ptr [ecx+512]
	push      eax
	mov       edx,offset s@+123
	lea       eax,dword ptr [ebp-44]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	lea       eax,dword ptr [ebp-40]
	push      edx
	mov       edx,offset s@+104
	mov       word ptr [ebp-108],56
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-44]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-40]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebx+740]
	mov       eax,dword ptr [ecx+512]
	push      eax
	mov       edx,offset s@+127
	lea       eax,dword ptr [ebp-52]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	lea       eax,dword ptr [ebp-48]
	push      edx
	mov       edx,offset s@+104
	mov       word ptr [ebp-108],68
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-52]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-48]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       eax,dword ptr [ebx+744]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	xor       ecx,ecx
	mov       edx,offset s@+131
	mov       cl,al
	lea       eax,dword ptr [ebp-60]
	push      ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,offset s@+104
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-56]
	push      ecx
	mov       word ptr [ebp-108],80
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-60]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-56]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       eax,dword ptr [ebx+748]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	xor       ecx,ecx
	mov       edx,offset s@+138
	mov       cl,al
	lea       eax,dword ptr [ebp-68]
	push      ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,offset s@+104
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-64]
	push      ecx
	mov       word ptr [ebp-108],92
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-68]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-64]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	cmp       dword ptr [_sys+4],0
	je        short @183
	cmp       dword ptr [_sys+528],0
	je        @182
@183:
@184:
	movzx     ecx,word ptr [ebx+902]
	push      ecx
	push      offset s@+79
	lea       eax,dword ptr [ebp-160]
	push      eax
	call      @_wsprintfA
	add       esp,12
?live16428@192: ; ESI = pIniFile
	lea       edx,dword ptr [ebp-160]
	lea       eax,dword ptr [ebp-80]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	push      edx
	mov       edx,offset s@+66
	lea       eax,dword ptr [ebp-76]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,offset s@+53
	mov       ecx,dword ptr [eax]
	lea       eax,dword ptr [ebp-72]
	push      ecx
	mov       word ptr [ebp-108],104
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-96]
	mov       edx,dword ptr [eax]
	mov       eax,esi
	pop       ecx
	mov       ebx,dword ptr [eax]
	call      dword ptr [ebx+4]
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-80]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-76]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-72]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
@185:
@182:
	mov       eax,esi
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+76]
	mov       ebx,esi
	mov       dword ptr [ebp-88],ebx
	test      ebx,ebx
	je        short @186
	mov       eax,dword ptr [ebx]
	mov       dword ptr [ebp-84],eax
	mov       word ptr [ebp-108],128
	mov       edx,3
	mov       eax,dword ptr [ebp-88]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx-4]
	mov       word ptr [ebp-108],116
?live16428@240: ; 
@186:
@187:
	mov       edx,dword ptr [ebp-124]
	mov       dword ptr fs:[0],edx
@188:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@WriteIniFile$qqrv	endp
@TExtFSK@WriteIniFile$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
	align	2
$ajkimmia	label	word
	dw	888
	dw	956
	dw	632
	dw	0
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCUE$@TExtFSK@ListLPT$qqrv	segment virtual
	align	2
@@_$DCUE$@TExtFSK@ListLPT$qqrv	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
@_$DCUE$@TExtFSK@ListLPT$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTVE$@TExtFSK@ListLPT$qqrv	segment virtual
	align	2
@@_$ECTVE$@TExtFSK@ListLPT$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCUE$@TExtFSK@ListLPT$qqrv
@_$ECTVE$@TExtFSK@ListLPT$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@ListLPT$qqrv	segment virtual
	align	2
@@TExtFSK@ListLPT$qqrv	proc	near
?live16431@0:
@189:
	push      ebp
	mov       ebp,esp
	add       esp,-120
	push      ebx
	push      esi
	push      edi
	mov       dword ptr [ebp-44],eax
	mov       eax,offset @@_$ECTVE$@TExtFSK@ListLPT$qqrv
	call      @__InitExceptBlockLDTC
	push      6
	push      0
	mov       edx,dword ptr [ebp-44]
	add       edx,904
	push      edx
	call      @_memset
?live16431@32: ; EDI = n
	mov       eax,dword ptr [$ajkimmia]
?live16431@48: ; 
	add       esp,12
?live16431@64: ; EDI = n
	mov       dword ptr [ebp-52],eax
	mov       eax,dword ptr [$ajkimmia+4]
	mov       dword ptr [ebp-48],eax
?live16431@80: ; 
	xor       edi,edi
?live16431@96: ; EDI = n
	mov       eax,dword ptr [ebp-44]
	lea       ebx,dword ptr [ebp-52]
	lea       edx,dword ptr [eax+2*edi+904]
	mov       dword ptr [ebp-56],edx
	jmp       short @191
?live16431@112: ; EBX = pw, ESI = @temp1, EDI = n
@190:
	add       si,2
	push      esi
	call      @@_bInport$qus
	pop       ecx
	xor       ecx,ecx
	mov       cl,al
	and       ecx,20
	cmp       ecx,4
	jne       short @192
?live16431@128: ; EBX = pw, EDI = n
	mov       dx,word ptr [ebx]
	mov       eax,dword ptr [ebp-56]
	inc       edi
	lea       ecx,dword ptr [ebp-120]
	mov       word ptr [eax],dx
	add       dword ptr [ebp-56],2
	push      edi
	push      offset s@+145
	push      ecx
	call      @_wsprintfA
	mov       eax,dword ptr [ebp-44]
	add       esp,12
	lea       edx,dword ptr [ebp-120]
	mov       esi,dword ptr [eax+728]
	mov       word ptr [ebp-24],8
	lea       eax,dword ptr [ebp-4]
	add       esi,496
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-12]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [esi]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-12]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
@192:
	add       ebx,2
@191:
	mov       si,word ptr [ebx]
	test      si,si
	jne       short @190
?live16431@256: ; 
	mov       eax,dword ptr [ebp-40]
	mov       dword ptr fs:[0],eax
@194:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@ListLPT$qqrv	endp
@TExtFSK@ListLPT$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCWE$@TExtFSK@UpdatePort$qqrv	segment virtual
	align	2
@@_$DCWE$@TExtFSK@UpdatePort$qqrv	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-20
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-24
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-28
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-32
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-36
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-40
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-44
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-48
	dd	0
@_$DCWE$@TExtFSK@UpdatePort$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTXE$@TExtFSK@UpdatePort$qqrv	segment virtual
	align	2
@@_$ECTXE$@TExtFSK@UpdatePort$qqrv	label	dword
	dd	0
	dd	-84
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+32
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+48
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+64
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+80
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+96
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+112
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+128
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+144
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+160
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWE$@TExtFSK@UpdatePort$qqrv+176
@_$ECTXE$@TExtFSK@UpdatePort$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@UpdatePort$qqrv	segment virtual
	align	2
@@TExtFSK@UpdatePort$qqrv	proc	near
?live16434@0:
@195:
	push      ebp
	mov       ebp,esp
	add       esp,-84
	push      ebx
	push      esi
	push      edi
	mov       ebx,eax
	lea       esi,dword ptr [ebp-84]
	mov       eax,offset @@_$ECTXE$@TExtFSK@UpdatePort$qqrv
	call      @__InitExceptBlockLDTC
?live16434@16: ; EBX = this, ESI = &@temp1
	cmp       dword ptr [_sys+4],0
	je        short @196
	cmp       dword ptr [_sys+528],0
	jne       short @196
	mov       edx,dword ptr [esi]
	mov       dword ptr fs:[0],edx
	mov       eax,edx
	jmp       @197
@196:
	inc       dword ptr [ebx+764]
	cmp       word ptr [ebx+900],0
	je        @198
	mov       edi,dword ptr [ebx+736]
	mov       edx,offset s@+151
	mov       word ptr [esi+16],8
	add       edi,508
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	xor       edx,edx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+736]
	mov       edx,offset s@+157
	mov       word ptr [esi+16],20
	add       edi,508
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,1
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+736]
	mov       edx,offset s@+163
	mov       word ptr [esi+16],32
	add       edi,508
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,2
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+740]
	mov       edx,offset s@+151
	mov       word ptr [esi+16],44
	add       edi,508
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	xor       edx,edx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+740]
	mov       edx,offset s@+157
	mov       word ptr [esi+16],56
	add       edi,508
	lea       eax,dword ptr [ebp-20]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,1
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-20]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+740]
	mov       edx,offset s@+163
	mov       word ptr [esi+16],68
	add       edi,508
	lea       eax,dword ptr [ebp-24]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,2
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-24]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	jmp       @199
@198:
	mov       edi,dword ptr [ebx+736]
	mov       edx,offset s@+170
	mov       word ptr [esi+16],80
	add       edi,508
	lea       eax,dword ptr [ebp-28]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	xor       edx,edx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-28]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+736]
	mov       edx,offset s@+174
	mov       word ptr [esi+16],92
	add       edi,508
	lea       eax,dword ptr [ebp-32]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,1
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-32]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+736]
	mov       edx,offset s@+178
	mov       word ptr [esi+16],104
	add       edi,508
	lea       eax,dword ptr [ebp-36]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,2
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-36]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+740]
	mov       edx,offset s@+170
	mov       word ptr [esi+16],116
	add       edi,508
	lea       eax,dword ptr [ebp-40]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	xor       edx,edx
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-40]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+740]
	mov       edx,offset s@+174
	mov       word ptr [esi+16],128
	add       edi,508
	lea       eax,dword ptr [ebp-44]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,1
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-44]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       edi,dword ptr [ebx+740]
	mov       edx,offset s@+178
	mov       word ptr [esi+16],140
	add       edi,508
	lea       eax,dword ptr [ebp-48]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,2
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+32]
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-48]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
@199:
	dec       dword ptr [ebx+764]
?live16434@288: ; ESI = &@temp1
	mov       ecx,dword ptr [esi]
	mov       dword ptr fs:[0],ecx
?live16434@304: ; 
@200:
@197:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@UpdatePort$qqrv	endp
@TExtFSK@UpdatePort$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCYE$@TExtFSK@UpdateComStat$qqrv	segment virtual
	align	2
@@_$DCYE$@TExtFSK@UpdateComStat$qqrv	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
@_$DCYE$@TExtFSK@UpdateComStat$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTZE$@TExtFSK@UpdateComStat$qqrv	segment virtual
	align	2
@@_$ECTZE$@TExtFSK@UpdateComStat$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCYE$@TExtFSK@UpdateComStat$qqrv
@_$ECTZE$@TExtFSK@UpdateComStat$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@UpdateComStat$qqrv	segment virtual
	align	2
@@TExtFSK@UpdateComStat$qqrv	proc	near
?live16437@0:
@201:
	push      ebp
	mov       ebp,esp
	add       esp,-168
	push      ebx
	mov       ebx,eax
	mov       eax,offset @@_$ECTZE$@TExtFSK@UpdateComStat$qqrv
	call      @__InitExceptBlockLDTC
?live16437@16: ; EBX = this
	mov       ax,word ptr [ebx+900]
	test      ax,ax
	je        short @202
?live16437@32: ; EBX = this, EAX = @temp1
	movzx     edx,ax
	push      edx
	push      offset s@+182
	lea       ecx,dword ptr [ebp-168]
	push      ecx
	call      @_wsprintfA
	add       esp,12
?live16437@48: ; EBX = this
	mov       edx,65535
	mov       eax,dword ptr [ebx+732]
	call      @@Controls@TControl@SetColor$qqr15Graphics@TColor
	jmp       short @203
@202:
	cmp       dword ptr [ebx+788],-1
	je        short @204
	mov       ecx,offset s@+200
	jmp       short @205
@204:
	mov       ecx,offset s@+203
@205:
	push      ecx
	push      offset s@+190
	lea       eax,dword ptr [ebp-168]
	push      eax
	call      @_wsprintfA
	add       esp,12
	cmp       dword ptr [ebx+788],-1
	je        short @206
	mov       edx,-2147483633
	jmp       short @207
@206:
	mov       edx,255
@207:
	mov       eax,dword ptr [ebx+732]
	call      @@Controls@TControl@SetColor$qqr15Graphics@TColor
@203:
	mov       word ptr [ebp-24],8
	lea       edx,dword ptr [ebp-168]
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-12]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [ebx+732]
	call      @@Controls@TControl@SetText$qqrx17System@AnsiString
	dec       dword ptr [ebp-12]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
?live16437@128: ; 
	mov       ecx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],ecx
@208:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@UpdateComStat$qqrv	endp
@TExtFSK@UpdateComStat$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@OpenPort$qqrv	segment virtual
	align	2
@@TExtFSK@OpenPort$qqrv	proc	near
?live16440@0:
@209:
	push      ebx
	push      esi
	push      edi
	mov       ebx,eax
?live16440@16: ; EBX = this
	mov       eax,ebx
	call      @@TExtFSK@ClosePort$qqrv
	mov       eax,ebx
	call      @@TExtFSK@OpenPort_$qqrv
	mov       eax,ebx
	call      @@TExtFSK@UpdateComStat$qqrv
	mov       eax,dword ptr [ebx+744]
	lea       edi,dword ptr [ebx+820]
	mov       esi,edi
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	and       eax,255
	mov       dword ptr [esi+44],eax
	mov       dword ptr [esi+52],-1
?live16440@80: ; EBX = this, EDI = @temp3
	mov       esi,edi
	mov       eax,dword ptr [ebx+748]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	and       eax,255
	mov       dword ptr [esi+56],eax
	mov       dword ptr [esi+64],-1
	mov       edx,dword ptr [ebx+740]
	mov       ecx,dword ptr [edx+512]
	push      ecx
	mov       eax,dword ptr [ebx+736]
	mov       ecx,dword ptr [eax+512]
	mov       eax,edi
	mov       edx,dword ptr [ebx+788]
	call      @@CFSK@SetHandle$qqrpvii
?live16440@112: ; 
@210:
	pop       edi
	pop       esi
	pop       ebx
	ret 
@@TExtFSK@OpenPort$qqrv	endp
@TExtFSK@OpenPort$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCAF$@TExtFSK@OpenPort_$qqrv	segment virtual
	align	2
@@_$DCAF$@TExtFSK@OpenPort_$qqrv	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	0
@_$DCAF$@TExtFSK@OpenPort_$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTBF$@TExtFSK@OpenPort_$qqrv	segment virtual
	align	2
@@_$ECTBF$@TExtFSK@OpenPort_$qqrv	label	dword
	dd	0
	dd	-52
	dw	0
	dw	5
	dd	0
	dd	@@_$DCAF$@TExtFSK@OpenPort_$qqrv
	dw	8
	dw	5
	dd	0
	dd	@@_$DCAF$@TExtFSK@OpenPort_$qqrv+16
	dw	8
	dw	5
	dd	1
	dd	@@_$DCAF$@TExtFSK@OpenPort_$qqrv+32
	dw	8
	dw	5
	dd	1
	dd	@@_$DCAF$@TExtFSK@OpenPort_$qqrv+60
@_$ECTBF$@TExtFSK@OpenPort_$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@OpenPort_$qqrv	segment virtual
	align	2
@@TExtFSK@OpenPort_$qqrv	proc	near
?live16441@0:
@211:
	push      ebp
	mov       ebp,esp
	add       esp,-72
	push      ebx
	push      esi
	push      edi
	mov       ebx,eax
	mov       eax,offset @@_$ECTBF$@TExtFSK@OpenPort_$qqrv
	call      @__InitExceptBlockLDTC
?live16441@16: ; EBX = this
	mov       word ptr [ebp-36],20
	mov       edi,dword ptr [ebx+728]
	mov       esi,edi
	mov       eax,edi
	add       esi,496
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       edx,eax
	xor       ecx,ecx
	mov       dword ptr [ebp-4],ecx
	lea       ecx,dword ptr [ebp-4]
	inc       dword ptr [ebp-24]
	mov       eax,dword ptr [esi]
	mov       esi,dword ptr [eax]
	call      dword ptr [esi+12]
	mov       word ptr [ebp-36],8
	xor       eax,eax
	mov       word ptr [ebx+900],ax
?live16441@48: ; EBX = this, EAX = @temp5
	mov       word ptr [ebx+824],ax
?live16441@64: ; EBX = this
	push      3
	push      offset s@+206
	cmp       dword ptr [ebp-4],0
	je        short @213
	mov       edx,dword ptr [ebp-4]
	jmp       short @214
@213:
	mov       edx,offset s@
@214:
	push      edx
	call      @_strnicmp
	add       esp,12
	test      eax,eax
	jne       @215
@216:
	cmp       dword ptr [ebp-4],0
	je        short @217
	mov       eax,dword ptr [ebp-4]
	jmp       short @218
@217:
	mov       eax,offset s@
@218:
	add       eax,3
	call      @@htow$qqrpxc
?live16441@96: ; EBX = this, EAX = n
	cmp       ax,1
	jb        short @219
	cmp       ax,3
	ja        short @219
	dec       eax
	movzx     edx,ax
	mov       cx,word ptr [ebx+2*edx+904]
	mov       word ptr [ebx+900],cx
?live16441@144: ; EBX = this
	jmp       short @220
@219:
	mov       ax,word ptr [ebx+902]
	mov       word ptr [ebx+900],ax
@220:
	mov       ax,word ptr [ebx+900]
	test      ax,ax
	je        short @221
?live16441@192: ; EBX = this, EAX = @temp11
	mov       word ptr [ebx+824],ax
?live16441@208: ; EBX = this
	xor       edx,edx
	mov       dword ptr [ebx+788],edx
?live16441@224: ; 
	mov       eax,1
	push      eax
	dec       dword ptr [ebp-24]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
	jmp       @222
?live16441@240: ; EBX = this
@221:
@223:
@215:
	mov       word ptr [ebp-36],32
	xor       ecx,ecx
	lea       eax,dword ptr [ebp-8]
	mov       dword ptr [ebp-8],ecx
	push      eax
	inc       dword ptr [ebp-24]
	lea       eax,dword ptr [ebp-4]
	mov       ecx,3
	mov       edx,1
	call      @@System@AnsiString@SubString$xqqrii
	lea       eax,dword ptr [ebp-8]
	push      eax
	mov       edx,offset s@+210
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-24]
	lea       edx,dword ptr [ebp-12]
	pop       eax
	call      @@System@AnsiString@$beql$xqqrrx17System@AnsiString
	push      eax
	dec       dword ptr [ebp-24]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-24]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	pop       ecx
	test      cl,cl
	je        short @224
	mov       word ptr [ebp-36],44
	xor       eax,eax
	mov       dword ptr [ebp-16],eax
	lea       ecx,dword ptr [ebp-16]
	inc       dword ptr [ebp-24]
	lea       edx,dword ptr [ebp-4]
	mov       eax,offset s@+214
	call      @@System@$badd$qqrpxcrx17System@AnsiString
	lea       edx,dword ptr [ebp-16]
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$basg$qqrrx17System@AnsiString
	dec       dword ptr [ebp-24]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
@224:
	push      0
	push      128
	push      3
	push      0
	push      0
	push      -1073741824
	cmp       dword ptr [ebp-4],0
	je        short @225
	mov       ecx,dword ptr [ebp-4]
	jmp       short @226
@225:
	mov       ecx,offset s@
@226:
	push      ecx
	call      @CreateFileA
	mov       esi,eax
	mov       dword ptr [ebx+788],esi
?live16441@288: ; EBX = this, ESI = @temp6
	cmp       esi,-1
	jne       short @227
	xor       eax,eax
	mov       edx,2
	push      eax
	lea       eax,dword ptr [ebp-4]
	dec       dword ptr [ebp-24]
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
	jmp       @222
?live16441@304: ; EBX = this
@227:
	push      2
	push      256
	mov       ecx,dword ptr [ebx+788]
	push      ecx
	call      @SetupComm
	test      eax,eax
	jne       short @228
	mov       eax,dword ptr [ebx+788]
	push      eax
	call      @CloseHandle
	mov       dword ptr [ebx+788],-1
?live16441@352: ; 
	xor       eax,eax
	mov       edx,2
	push      eax
	lea       eax,dword ptr [ebp-4]
	dec       dword ptr [ebp-24]
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
	jmp       @222
?live16441@368: ; EBX = this
@228:
	push      15
	mov       ecx,dword ptr [ebx+788]
	push      ecx
	call      @PurgeComm
	mov       dword ptr [ebp-72],-1
	xor       eax,eax
	xor       edx,edx
	mov       dword ptr [ebp-68],eax
	mov       dword ptr [ebp-64],edx
	xor       ecx,ecx
	lea       eax,dword ptr [ebp-72]
	mov       dword ptr [ebp-60],ecx
	mov       dword ptr [ebp-56],20000
	push      eax
	mov       edx,dword ptr [ebx+788]
	push      edx
	call      @SetCommTimeouts
	test      eax,eax
	jne       short @229
	mov       ecx,dword ptr [ebx+788]
	push      ecx
	call      @CloseHandle
	mov       dword ptr [ebx+788],-1
?live16441@576: ; 
	xor       eax,eax
	mov       edx,2
	push      eax
	lea       eax,dword ptr [ebp-4]
	dec       dword ptr [ebp-24]
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
	jmp       @222
?live16441@592: ; EBX = this
@229:
	lea       esi,dword ptr [ebx+792]
	push      esi
	mov       eax,dword ptr [ebx+788]
	push      eax
	call      @GetCommState
?live16441@608: ; EBX = this, ESI = @temp8
	mov       dword ptr [ebx+796],9600
	or        byte ptr [ebx+800],1
	mov       byte ptr [ebx+810],8
	mov       byte ptr [ebx+811],0
	mov       byte ptr [ebx+812],0
	mov       byte ptr [ebx+813],17
	mov       byte ptr [ebx+814],19
	and       byte ptr [ebx+800],-3
	and       byte ptr [ebx+800],-5
	and       byte ptr [ebx+801],-2
	xor       eax,eax
	mov       dl,byte ptr [ebx+801]
	and       al,1
	and       dl,-3
	add       eax,eax
	or        al,dl
	mov       byte ptr [ebx+801],al
	and       byte ptr [ebx+800],-9
	mov       byte ptr [ebx+817],13
	and       byte ptr [ebx+801],-49
	and       byte ptr [ebx+800],-49
	and       byte ptr [ebx+800],127
	mov       word ptr [ebx+806],64
	mov       word ptr [ebx+808],192
	mov       dword ptr [ebx+792],28
	push      esi
	mov       ecx,dword ptr [ebx+788]
	push      ecx
	call      @SetCommState
	test      eax,eax
	jne       short @230
?live16441@912: ; EBX = this
	mov       eax,dword ptr [ebx+788]
	push      eax
	call      @CloseHandle
	mov       dword ptr [ebx+788],-1
?live16441@944: ; 
	xor       eax,eax
	mov       edx,2
	push      eax
	lea       eax,dword ptr [ebp-4]
	dec       dword ptr [ebp-24]
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
	jmp       short @222
?live16441@960: ; EBX = this
@230:
	push      2
	mov       ecx,dword ptr [ebx+788]
	push      ecx
	call      @SetCommMask
	test      eax,eax
	jne       short @231
	mov       eax,dword ptr [ebx+788]
	push      eax
	call      @CloseHandle
	mov       dword ptr [ebx+788],-1
?live16441@1008: ; 
	xor       eax,eax
	mov       edx,2
	push      eax
	lea       eax,dword ptr [ebp-4]
	dec       dword ptr [ebp-24]
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
	jmp       short @222
@231:
	mov       eax,1
	mov       edx,2
	push      eax
	lea       eax,dword ptr [ebp-4]
	dec       dword ptr [ebp-24]
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
@232:
@222:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@OpenPort_$qqrv	endp
@TExtFSK@OpenPort_$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@ClosePort$qqrv	segment virtual
	align	2
@@TExtFSK@ClosePort$qqrv	proc	near
?live16444@0:
@233:
	push      ebx
	mov       ebx,eax
?live16444@16: ; EBX = this
	cmp       word ptr [ebx+900],0
	je        short @234
	mov       word ptr [ebx+900],0
	mov       dword ptr [ebx+788],-1
@234:
	cmp       dword ptr [ebx+788],-1
	je        short @235
	mov       dword ptr [ebx+820],-1
	mov       eax,dword ptr [ebx+788]
	push      eax
	call      @CloseHandle
	mov       dword ptr [ebx+788],-1
@235:
	mov       eax,ebx
	call      @@TExtFSK@UpdateComStat$qqrv
?live16444@144: ; 
@236:
	pop       ebx
	ret 
@@TExtFSK@ClosePort$qqrv	endp
@TExtFSK@ClosePort$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCCF$@TExtFSK@SetPara$qqrl	segment virtual
	align	2
@@_$DCCF$@TExtFSK@SetPara$qqrl	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-20
	dd	0
@_$DCCF$@TExtFSK@SetPara$qqrl	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTDF$@TExtFSK@SetPara$qqrl	segment virtual
	align	2
@@_$ECTDF$@TExtFSK@SetPara$qqrl	label	dword
	dd	0
	dd	-56
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCF$@TExtFSK@SetPara$qqrl
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCF$@TExtFSK@SetPara$qqrl+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCF$@TExtFSK@SetPara$qqrl+32
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCF$@TExtFSK@SetPara$qqrl+48
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCF$@TExtFSK@SetPara$qqrl+64
@_$ECTDF$@TExtFSK@SetPara$qqrl	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@SetPara$qqrl	segment virtual
	align	2
@@TExtFSK@SetPara$qqrl	proc	near
?live16445@0:
@237:
	push      ebp
	mov       ebp,esp
	add       esp,-164
	push      ebx
	push      esi
	push      edi
	mov       esi,edx
	mov       ebx,eax
	mov       eax,offset @@_$ECTDF$@TExtFSK@SetPara$qqrl
	call      @__InitExceptBlockLDTC
?live16445@16: ; EBX = this, ESI = para
	lea       eax,dword ptr [ebx+820]
	mov       edx,esi
	call      @@CFSK@SetPara$qqrl
	sar       esi,16
?live16445@48: ; EBX = this, ESI = baud
	lea       ecx,dword ptr [ebp-96]
	push      esi
	push      offset s@+219
	push      ecx
	call      @_sprintf
	mov       word ptr [ebp-40],8
	add       esp,12
	lea       edx,dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-28]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [ebx+756]
	call      @@Controls@TControl@SetText$qqrx17System@AnsiString
	dec       dword ptr [ebp-28]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       eax,ebx
	call      @@TExtFSK@killTimer$qqrv
	lea       edx,dword ptr [ebp-64]
	push      edx
	call      @QueryPerformanceFrequency
	test      eax,eax
	jne       @238
?live16445@144: ; EBX = this
	mov       ecx,dword ptr [ebx+756]
	xor       edx,edx
	mov       eax,dword ptr [ecx+88]
	call      @@Graphics@TFont@SetColor$qqr15Graphics@TColor
	mov       dword ptr [ebx+920],34359738
	mov       dword ptr [ebx+924],1065781035
	mov       word ptr [ebp-40],20
	mov       edx,offset s@+227
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-28]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [ebx+756]
	call      @@Controls@TControl@SetText$qqrx17System@AnsiString
	dec       dword ptr [ebp-28]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	push      8
	lea       ecx,dword ptr [ebx+780]
	push      ecx
	call      @timeGetDevCaps
	test      eax,eax
	jne       short @239
@240:
	mov       eax,dword ptr [ebx+780]
	lea       edx,dword ptr [ebp-160]
	push      eax
	push      offset s@+235
	push      edx
	call      @_wsprintfA
	mov       esi,dword ptr [ebx+720]
	add       esp,12
	mov       word ptr [ebp-40],32
	add       esi,520
	lea       edx,dword ptr [ebp-160]
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-28]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [esi]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-28]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebx+780]
	push      ecx
	call      @timeBeginPeriod
	push      1
	push      ebx
	push      offset @@TimeProc$qqsuiuiululul
	push      0
	push      11
	call      @timeSetEvent
	mov       dword ptr [ebx+896],eax
@241:
@239:
	cmp       dword ptr [ebx+896],0
	jne       short @242
	mov       esi,dword ptr [ebx+720]
	mov       edx,offset s@+254
	mov       word ptr [ebp-40],44
	add       esi,520
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-28]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [esi]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-28]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
@242:
	mov       ecx,dword ptr [ebx+720]
	mov       edx,offset s@+293
	mov       word ptr [ebp-40],56
	add       ecx,520
	lea       eax,dword ptr [ebp-20]
	mov       ebx,ecx
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-28]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [ebx]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-28]
	lea       eax,dword ptr [ebp-20]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
?live16445@352: ; 
	jmp       short @243
?live16445@368: ; EBX = this, ESI = baud
@238:
	xor       ecx,ecx
	mov       dl,1
	mov       eax,dword ptr [@@THighTimer@]
	call      @@THighTimer@$bctr$qqro
	mov       edi,eax
	mov       dword ptr [ebx+912],edi
?live16445@384: ; EBX = this, ESI = baud, EDI = @temp3
	mov       dl,3
	mov       eax,edi
	call      @@Classes@TThread@SetPriority$qqr23Classes@TThreadPriority
?live16445@400: ; EBX = this, ESI = baud
	mov       ecx,dword ptr [ebx+756]
	mov       edx,8388736
	mov       eax,dword ptr [ecx+88]
	call      @@Graphics@TFont@SetColor$qqr15Graphics@TColor
	cmp       esi,45
	jne       short @244
?live16445@432: ; EBX = this
	mov       dword ptr [ebx+920],34359738
	mov       dword ptr [ebx+924],1065781035
?live16445@448: ; 
	jmp       short @245
?live16445@464: ; EBX = this, ESI = baud
@244:
	mov       dword ptr [ebp-164],esi
	fild      dword ptr [ebp-164]
	fdivr     dword ptr [@246]
	fmul      dword ptr [@246+4]
	fstp      qword ptr [ebx+920]
?live16445@480: ; 
@245:
@243:
	mov       eax,dword ptr [ebp-56]
	mov       dword ptr fs:[0],eax
@247:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	align 4        
@246:
	db        0,0,128,63,0,0,0,63
@@TExtFSK@SetPara$qqrl	endp
@TExtFSK@SetPara$qqrl	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCEF$@TExtFSK@SetPTT$qqrii	segment virtual
	align	2
@@_$DCEF$@TExtFSK@SetPTT$qqrii	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
@_$DCEF$@TExtFSK@SetPTT$qqrii	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTFF$@TExtFSK@SetPTT$qqrii	segment virtual
	align	2
@@_$ECTFF$@TExtFSK@SetPTT$qqrii	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCEF$@TExtFSK@SetPTT$qqrii
@_$ECTFF$@TExtFSK@SetPTT$qqrii	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@SetPTT$qqrii	segment virtual
	align	2
@@TExtFSK@SetPTT$qqrii	proc	near
?live16448@0:
@248:
	push      ebp
	mov       ebp,esp
	add       esp,-40
	push      ebx
	push      esi
	push      edi
	mov       edi,ecx
	mov       esi,edx
	mov       ebx,eax
	mov       eax,offset @@_$ECTFF$@TExtFSK@SetPTT$qqrii
	call      @__InitExceptBlockLDTC
?live16448@16: ; EBX = this, ESI = sw, EDI = msg
	mov       dword ptr [ebx+768],esi
	lea       eax,dword ptr [ebx+820]
	mov       edx,esi
	call      @@CFSK@SetPTT$qqri
	xor       ecx,ecx
	test      edi,edi
	mov       dword ptr [ebx+772],ecx
	je        short @249
?live16448@112: ; EBX = this, ESI = sw
	cmp       dword ptr [ebx+760],1
	jne       short @250
	mov       eax,dword ptr [ebp-40]
	mov       dword ptr fs:[0],eax
	jmp       short @251
@250:
	mov       edx,dword ptr [ebx+720]
	mov       word ptr [ebp-24],8
	add       edx,520
	test      esi,esi
	mov       ebx,edx
	je        short @252
	mov       edx,offset s@+303
	jmp       short @253
@252:
	mov       edx,offset s@+310
@253:
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-12]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [ebx]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-12]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
?live16448@144: ; 
@249:
	mov       ecx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],ecx
@254:
@251:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@SetPTT$qqrii	endp
@TExtFSK@SetPTT$qqrii	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCGF$@TExtFSK@PutChar$qqruc	segment virtual
	align	2
@@_$DCGF$@TExtFSK@PutChar$qqruc	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
@_$DCGF$@TExtFSK@PutChar$qqruc	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTHF$@TExtFSK@PutChar$qqruc	segment virtual
	align	2
@@_$ECTHF$@TExtFSK@PutChar$qqruc	label	dword
	dd	0
	dd	-48
	dw	0
	dw	5
	dd	0
	dd	@@_$DCGF$@TExtFSK@PutChar$qqruc
	dw	0
	dw	5
	dd	0
	dd	@@_$DCGF$@TExtFSK@PutChar$qqruc+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCGF$@TExtFSK@PutChar$qqruc+32
@_$ECTHF$@TExtFSK@PutChar$qqruc	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@PutChar$qqruc	segment virtual
	align	2
@@TExtFSK@PutChar$qqruc	proc	near
?live16451@0:
@255:
	push      ebp
	mov       ebp,esp
	add       esp,-184
	push      ebx
	push      esi
	push      edi
	mov       byte ptr [ebp-49],dl
	mov       ebx,eax
	mov       eax,offset @@_$ECTHF$@TExtFSK@PutChar$qqruc
	call      @__InitExceptBlockLDTC
?live16451@16: ; EBX = this
	cmp       dword ptr [ebx+768],0
	jne       short @256
	mov       edx,dword ptr [ebp-48]
	mov       dword ptr fs:[0],edx
	mov       eax,edx
	jmp       @257
@256:
	mov       al,byte ptr [ebp-49]
	xor       edx,edx
	mov       dl,al
	mov       dword ptr [ebx+856],edx
	cmp       dword ptr [ebx+760],1
	jne       short @258
	mov       ecx,dword ptr [ebp-48]
	mov       dword ptr fs:[0],ecx
	mov       eax,ecx
	jmp       @257
@258:
	cmp       dword ptr [ebx+772],0
	je        @259
@260:
	mov       esi,dword ptr [ebx+720]
	add       esi,520
	mov       eax,dword ptr [esi]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+20]
	mov       esi,eax
?live16451@96: ; EBX = this, ESI = n
	test      esi,esi
	je        short @261
	dec       esi
@261:
	mov       word ptr [ebp-32],8
	mov       ecx,dword ptr [ebx+720]
	xor       eax,eax
	add       ecx,520
	mov       dword ptr [ebp-56],ecx
	mov       dword ptr [ebp-4],eax
	inc       dword ptr [ebp-20]
	lea       ecx,dword ptr [ebp-4]
	mov       edx,dword ptr [ebp-56]
	mov       eax,dword ptr [edx]
	mov       edx,esi
	mov       edi,dword ptr [eax]
	call      dword ptr [edi+12]
	cmp       dword ptr [ebp-4],0
	je        short @262
	mov       eax,dword ptr [ebp-4]
	jmp       short @263
@262:
	mov       eax,offset s@
@263:
	mov       edi,eax
	xor       eax,eax
	push      esi
	or        ecx,-1
	repnz scasb
	not       ecx
	sub       edi,ecx
	lea       esi,dword ptr [ebp-184]
	xchg      edi,esi
	mov       edx,ecx
	mov       eax,edi
	shr       ecx,2
	lea       eax,dword ptr [ebp-4]
	rep   movsd
	mov       ecx,edx
	mov       edx,2
	and       ecx,3
	rep   movsb
	pop       esi
	dec       dword ptr [ebp-20]
	call      @@System@AnsiString@$bdtr$qqrv
	xor       ecx,ecx
	lea       eax,dword ptr [ebp-184]
	mov       cl,byte ptr [ebp-49]
	push      ecx
	push      offset s@+318
	push      eax
	call      @_strlen
	pop       ecx
	lea       edx,dword ptr [ebp-184]
	add       eax,edx
	push      eax
	call      @_wsprintfA
	add       esp,12
	cmp       dword ptr [ebx+768],0
	jne       short @264
	mov       ecx,dword ptr [ebp-48]
	mov       dword ptr fs:[0],ecx
	jmp       @257
@264:
	mov       edi,dword ptr [ebx+720]
	lea       edx,dword ptr [ebp-184]
	mov       word ptr [ebp-32],20
	add       edi,520
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-20]
	mov       ecx,dword ptr [eax]
	mov       eax,dword ptr [edi]
	mov       edx,esi
	mov       esi,dword ptr [eax]
	call      dword ptr [esi+32]
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
?live16451@176: ; EBX = this
@265:
	jmp       short @266
@259:
	xor       ecx,ecx
	lea       eax,dword ptr [ebp-184]
	mov       cl,byte ptr [ebp-49]
	push      ecx
	push      offset s@+319
	push      eax
	call      @_wsprintfA
	mov       esi,dword ptr [ebx+720]
	add       esp,12
	mov       word ptr [ebp-32],32
	add       esi,520
	lea       edx,dword ptr [ebp-184]
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-20]
	mov       edx,dword ptr [eax]
	mov       eax,dword ptr [esi]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
@266:
	inc       dword ptr [ebx+772]
	cmp       dword ptr [ebx+772],8
	jl        short @267
	xor       ecx,ecx
	mov       dword ptr [ebx+772],ecx
?live16451@288: ; 
@267:
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr fs:[0],eax
@268:
@257:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@PutChar$qqruc	endp
@TExtFSK@PutChar$qqruc	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@PortNameChange$qqrp14System@TObject	segment virtual
	align	2
@@TExtFSK@PortNameChange$qqrp14System@TObject	proc	near
?live16454@0:
@269:
	push      ebx
	mov       ebx,eax
?live16454@16: ; EBX = this
	cmp       dword ptr [ebx+764],0
	jne       short @271
	mov       eax,ebx
	call      @@TExtFSK@OpenPort$qqrv
	mov       eax,ebx
	call      @@TExtFSK@UpdatePort$qqrv
?live16454@64: ; 
@272:
@271:
	pop       ebx
	ret 
@@TExtFSK@PortNameChange$qqrp14System@TObject	endp
@TExtFSK@PortNameChange$qqrp14System@TObject	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@SBMinClick$qqrp14System@TObject	segment virtual
	align	2
@@TExtFSK@SBMinClick$qqrp14System@TObject	proc	near
?live16455@0:
@273:
	push      ebx
	mov       ebx,eax
?live16455@16: ; EBX = this
	cmp       dword ptr [ebx+764],0
	jne       short @275
	mov       dl,1
	mov       eax,ebx
	call      @@Forms@TCustomForm@SetWindowState$qqr18Forms@TWindowState
	mov       dword ptr [ebx+760],1
	mov       eax,dword ptr [ebx+720]
	add       eax,520
	mov       eax,dword ptr [eax]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+64]
	xor       ecx,ecx
	mov       dword ptr [ebx+772],ecx
?live16455@96: ; 
@276:
@275:
	pop       ebx
	ret 
@@TExtFSK@SBMinClick$qqrp14System@TObject	endp
@TExtFSK@SBMinClick$qqrp14System@TObject	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@RGFSKClick$qqrp14System@TObject	segment virtual
	align	2
@@TExtFSK@RGFSKClick$qqrp14System@TObject	proc	near
?live16456@0:
@277:
	push      ebx
	mov       ebx,eax
?live16456@16: ; EBX = this
	cmp       dword ptr [ebx+764],0
	jne       short @279
	mov       eax,dword ptr [ebx+736]
	mov       ecx,dword ptr [ebx+740]
	mov       edx,dword ptr [eax+512]
	cmp       edx,dword ptr [ecx+512]
	jne       short @280
	inc       dword ptr [ebx+764]
	mov       eax,dword ptr [ebx+736]
	cmp       dword ptr [eax+512],1
	je        short @281
	mov       dl,1
	jmp       short @282
@281:
	mov       dl,2
@282:
	movsx     edx,dl
	mov       eax,dword ptr [ebx+740]
	call      @@Extctrls@TCustomRadioGroup@SetItemIndex$qqri
	dec       dword ptr [ebx+764]
@280:
	mov       ecx,dword ptr [ebx+740]
	mov       eax,dword ptr [ecx+512]
	push      eax
	mov       edx,dword ptr [ebx+736]
	mov       ecx,dword ptr [edx+512]
	lea       eax,dword ptr [ebx+820]
	mov       edx,dword ptr [ebx+788]
	call      @@CFSK@SetHandle$qqrpvii
?live16456@112: ; 
@283:
@279:
	pop       ebx
	ret 
@@TExtFSK@RGFSKClick$qqrp14System@TObject	endp
@TExtFSK@RGFSKClick$qqrp14System@TObject	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@RGPTTClick$qqrp14System@TObject	segment virtual
	align	2
@@TExtFSK@RGPTTClick$qqrp14System@TObject	proc	near
?live16457@0:
@284:
	push      ebx
	mov       ebx,eax
?live16457@16: ; EBX = this
	cmp       dword ptr [ebx+764],0
	jne       short @286
	mov       eax,dword ptr [ebx+736]
	mov       ecx,dword ptr [ebx+740]
	mov       edx,dword ptr [eax+512]
	cmp       edx,dword ptr [ecx+512]
	jne       short @287
	inc       dword ptr [ebx+764]
	mov       eax,dword ptr [ebx+740]
	cmp       dword ptr [eax+512],0
	je        short @288
	xor       edx,edx
	jmp       short @289
@288:
	mov       dl,1
@289:
	movsx     edx,dl
	mov       eax,dword ptr [ebx+736]
	call      @@Extctrls@TCustomRadioGroup@SetItemIndex$qqri
	dec       dword ptr [ebx+764]
@287:
	mov       ecx,dword ptr [ebx+740]
	mov       eax,dword ptr [ecx+512]
	push      eax
	mov       edx,dword ptr [ebx+736]
	mov       ecx,dword ptr [edx+512]
	lea       eax,dword ptr [ebx+820]
	mov       edx,dword ptr [ebx+788]
	call      @@CFSK@SetHandle$qqrpvii
?live16457@112: ; 
@290:
@286:
	pop       ebx
	ret 
@@TExtFSK@RGPTTClick$qqrp14System@TObject	endp
@TExtFSK@RGPTTClick$qqrp14System@TObject	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@CBInvFSKClick$qqrp14System@TObject	segment virtual
	align	2
@@TExtFSK@CBInvFSKClick$qqrp14System@TObject	proc	near
?live16458@0:
@291:
	push      ebx
	mov       ebx,eax
	push      esi
?live16458@16: ; EBX = this
	cmp       dword ptr [ebx+764],0
	jne       short @293
	lea       esi,dword ptr [ebx+820]
	mov       eax,dword ptr [ebx+744]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	and       eax,255
	mov       dword ptr [esi+44],eax
	mov       dword ptr [esi+52],-1
?live16458@48: ; 
@294:
@293:
	pop       esi
	pop       ebx
	ret 
@@TExtFSK@CBInvFSKClick$qqrp14System@TObject	endp
@TExtFSK@CBInvFSKClick$qqrp14System@TObject	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@CBInvPTTClick$qqrp14System@TObject	segment virtual
	align	2
@@TExtFSK@CBInvPTTClick$qqrp14System@TObject	proc	near
?live16459@0:
@295:
	push      ebx
	mov       ebx,eax
	push      esi
?live16459@16: ; EBX = this
	cmp       dword ptr [ebx+764],0
	jne       short @297
	lea       esi,dword ptr [ebx+820]
	mov       eax,dword ptr [ebx+748]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+180]
	and       eax,255
	mov       dword ptr [esi+56],eax
	mov       dword ptr [esi+64],-1
?live16459@48: ; 
@298:
@297:
	pop       esi
	pop       ebx
	ret 
@@TExtFSK@CBInvPTTClick$qqrp14System@TObject	endp
@TExtFSK@CBInvPTTClick$qqrp14System@TObject	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@FormPaint$qqrp14System@TObject	segment virtual
	align	2
@@TExtFSK@FormPaint$qqrp14System@TObject	proc	near
?live16460@0:
@299:
	movsx     edx,byte ptr [eax+531]
	mov       dword ptr [eax+760],edx
@300:
	ret 
@@TExtFSK@FormPaint$qqrp14System@TObject	endp
@TExtFSK@FormPaint$qqrp14System@TObject	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCIF$@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
	align	2
@@_$DCIF$@Forms@TForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCIF$@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTJF$@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
	align	2
@@_$ECTJF$@Forms@TForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCIF$@Forms@TForm@$bctr$qqrp18Classes@TComponent
@_$ECTJF$@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
	align	2
@@Forms@TForm@$bctr$qqrp18Classes@TComponent	proc	near
?live16418@0:
	push      ebp
	mov       ebp,esp
	add       esp,-44
	push      ebx
	mov       byte ptr [ebp-8],dl
	test      dl,dl
	jle       short @301
	call      __ClassCreate
@301:
@302:
	mov       ebx,ecx
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
	mov       eax,offset @@_$ECTJF$@Forms@TForm@$bctr$qqrp18Classes@TComponent
	call      @__InitExceptBlockLDTC
	mov       word ptr [ebp-24],8
	mov       ecx,ebx
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent
	add       dword ptr [ebp-12],14
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],edx
	mov       eax,dword ptr [ebp-4]
@304:
@303:
	cmp       byte ptr [ebp-41],0
	je        short @305
	call      __AfterConstruction
@305:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@Forms@TForm@$bctr$qqrp18Classes@TComponent	endp
@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p11Forms@TForm	segment virtual
	align	2
@@$xt$p11Forms@TForm	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$11Forms@TForm
	db	84
	db	70
	db	111
	db	114
	db	109
	db	32
	db	42
	db	0
@$xt$p11Forms@TForm	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$a2$p20Inifiles@TMemIniFile	segment virtual
	align	2
@@$xt$a2$p20Inifiles@TMemIniFile	label	dword
	dd	8
	dw	1024
	dw	16
	dd	@@$xt$p20Inifiles@TMemIniFile
	dd	2
	db	84
	db	77
	db	101
	db	109
	db	73
	db	110
	db	105
	db	70
	db	105
	db	108
	db	101
	db	32
	db	42
	db	91
	db	50
	db	93
	db	0
@$xt$a2$p20Inifiles@TMemIniFile	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p7TExtFSK	segment virtual
	align	2
@@$xt$p7TExtFSK	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$7TExtFSK
	db	84
	db	69
	db	120
	db	116
	db	70
	db	83
	db	75
	db	32
	db	42
	db	0
@$xt$p7TExtFSK	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p7CDLPort	segment virtual
	align	2
@@$xt$p7CDLPort	label	dword
	dd	4
	dw	16
	dw	12
	dd	@@$xt$7CDLPort
	db	67
	db	68
	db	76
	db	80
	db	111
	db	114
	db	116
	db	32
	db	42
	db	0
@$xt$p7CDLPort	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$17System@AnsiString	segment virtual
	align	2
@@$xt$17System@AnsiString	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	68
	dw	72
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@AnsiString@$bdtr$qqrv
	dw	3
	dw	76
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	58
	db	58
	db	65
	db	110
	db	115
	db	105
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$17System@AnsiString	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@TExtFSK@	segment virtual
	align	2
@@TExtFSK@	label	byte
	dd	@@TExtFSK@+76
	dd	0
	dd	0
	dd	0
	dd	@@$xp$7TExtFSK+4
	dd	@@TExtFSK@+300
	dd	@@TExtFSK@+438
	dd	0
	dd	@@TExtFSK@+584
	dd	928
	dd	@Forms@TForm@
	dd	@@Classes@TComponent@SafeCallException$qqrp14System@TObjectpv
	dd	@@Forms@TCustomForm@AfterConstruction$qqrv
	dd	@@Forms@TCustomForm@BeforeDestruction$qqrv
	dd	@@System@TObject@Dispatch$qqrpv
	dd	@@Forms@TCustomForm@DefaultHandler$qqrpv
	dd	@@System@TObject@NewInstance$qqrp17System@TMetaClass
	dd	@@System@TObject@FreeInstance$qqrv
	dd	@@TExtFSK@$bdtr$qqrv
	dd	@@Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent
	dd	@@Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler
	dd	@@Classes@TPersistent@Assign$qqrp19Classes@TPersistent
	dd	@@Forms@TCustomForm@Loaded$qqrv
	dd	@@Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation
	dd	@@Forms@TCustomForm@ReadState$qqrp15Classes@TReader
	dd	@@Controls@TControl@SetName$qqrx17System@AnsiString
	dd	@@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2
	dd	@@Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringt2
	dd	@@Classes@TComponent@WriteState$qqrp15Classes@TWriter
	dd	@@Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv
	dd	@@TExtFSK@$bctr$qqrp18Classes@TComponent
	dd	@@Controls@TWinControl@CanResize$qqrrit1
	dd	@@Controls@TWinControl@CanAutoSize$qqrrit1
	dd	@@Controls@TWinControl@ConstrainedResize$qqrrit1t1t1
	dd	@@Controls@TWinControl@GetClientOrigin$qqrv
	dd	@@Forms@TCustomForm@GetClientRect$qqrv
	dd	@@Controls@TWinControl@GetDeviceContext$qqrrpv
	dd	@@Controls@TControl@GetDragImages$qqrv
	dd	@@Controls@TControl@GetEnabled$qqrv
	dd	@@Forms@TCustomForm@GetFloating$qqrv
	dd	@@Controls@TControl@GetFloatingDockSiteClass$qqrv
	dd	@@Controls@TControl@SetDragMode$qqr18Controls@TDragMode
	dd	@@Controls@TControl@SetEnabled$qqro
	dd	@@Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl
	dd	@@Forms@TCustomForm@SetParentBiDiMode$qqro
	dd	@@Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode
	dd	@@Forms@TCustomForm@WndProc$qqrr17Messages@TMessage
	dd	@@Controls@TControl@InitiateAction$qqrv
	dd	@@Controls@TWinControl@Invalidate$qqrv
	dd	@@Controls@TWinControl@Repaint$qqrv
	dd	@@Controls@TWinControl@SetBounds$qqriiii
	dd	@@Controls@TWinControl@Update$qqrv
	dd	@@Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect
	dd	@@Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect
	dd	@@Controls@TWinControl@CreateHandle$qqrv
	dd	@@Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams
	dd	@@Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams
	dd	@@Forms@TCustomForm@CreateWnd$qqrv
	dd	@@Forms@TCustomForm@DestroyWindowHandle$qqrv
	dd	@@Controls@TWinControl@DestroyWnd$qqrv
	dd	@@Controls@TWinControl@GetControlExtents$qqrv
	dd	@@Forms@TCustomForm@PaintWindow$qqrpv
	dd	@@Controls@TWinControl@ShowControl$qqrp17Controls@TControl
	dd	@@Forms@TCustomForm@SetFocus$qqrv
	dd	@@Forms@TScrollingWinControl@AutoScrollEnabled$qqrv
	dd	@@Forms@TScrollingWinControl@AutoScrollInView$qqrp17Controls@TControl
	dd	@@Forms@TCustomForm@Resizing$qqr18Forms@TWindowState
	dd	@@Forms@TCustomForm@DoCreate$qqrv
	dd	@@Forms@TCustomForm@DoDestroy$qqrv
	dd	@@Forms@TCustomForm@UpdateActions$qqrv
	dd	@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dd	@@Forms@TCustomForm@CloseQuery$qqrv
	dd	@@Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl
	dd	@@Forms@TCustomForm@ShowModal$qqrv
	dd	@@Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage
	dw	10
	dd	@@TExtFSK@+592
	dd	720
	dw	0
	db	4
	db        77,101,109,111
	dd	724
	dw	1
	db	2
	db        76,49
	dd	728
	dw	2
	db	8
	db        80,111,114,116,78,97,109,101
	dd	732
	dw	1
	db	8
	db        76,67,111,109,83,116,97,116
	dd	736
	dw	3
	db	5
	db        82,71,70,83,75
	dd	740
	dw	3
	db	5
	db        82,71,80,84,84
	dd	744
	dw	4
	db	8
	db        67,66,73,110,118,70,83,75
	dd	748
	dw	4
	db	8
	db        67,66,73,110,118,80,84,84
	dd	752
	dw	5
	db	5
	db        83,66,77,105,110
	dd	756
	dw	1
	db	9
	db        76,97,98,101,108,66,97,117,100
	dw	8
	dw	16
	dd	@@TExtFSK@FormClose$qqrp14System@TObjectr18Forms@TCloseAction
	db	9
	db        70,111,114,109,67,108,111,115,101
	dw	21
	dd	@@TExtFSK@PortNameChange$qqrp14System@TObject
	db	14
	db        80,111,114,116,78,97,109,101,67,104,97,110,103,101
	dw	17
	dd	@@TExtFSK@SBMinClick$qqrp14System@TObject
	db	10
	db        83,66,77,105,110,67,108,105,99,107
	dw	17
	dd	@@TExtFSK@RGFSKClick$qqrp14System@TObject
	db	10
	db        82,71,70,83,75,67,108,105,99,107
	dw	20
	dd	@@TExtFSK@CBInvFSKClick$qqrp14System@TObject
	db	13
	db        67,66,73,110,118,70,83,75,67,108,105,99,107
	dw	20
	dd	@@TExtFSK@CBInvPTTClick$qqrp14System@TObject
	db	13
	db        67,66,73,110,118,80,84,84,67,108,105,99,107
	dw	17
	dd	@@TExtFSK@RGPTTClick$qqrp14System@TObject
	db	10
	db        82,71,80,84,84,67,108,105,99,107
	dw	16
	dd	@@TExtFSK@FormPaint$qqrp14System@TObject
	db	9
	db        70,111,114,109,80,97,105,110,116
	db	7
	db        84,69,120,116,70,83,75
	dw	6
	dd	@Stdctrls@TMemo@
	dd	@Stdctrls@TLabel@
	dd	@Stdctrls@TComboBox@
	dd	@Extctrls@TRadioGroup@
	dd	@Stdctrls@TCheckBox@
	dd	@Buttons@TSpeedButton@
@TExtFSK@	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@$xp$7TExtFSK	segment virtual
	align	2
@@$xp$7TExtFSK	label	byte
	dd	@@$xp$7TExtFSK+4
	db	7
	db	7
	db        84,69,120,116,70,83,75
	dd	@@TExtFSK@+76
	dd	@$xp$11Forms@TForm
	dw	86
	db	4
	db        77,97,105,110
	dw	0
@$xp$7TExtFSK	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$7CDLPort	segment virtual
	align	2
@@$xt$7CDLPort	label	byte
	dd	20
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	56
	dw	60
	dd	0
	dw	0
	dw	0
	dd	0
	dd	3
	dd	3
	dd	@@CDLPort@$bdtr$qqrv
	dw	3
	dw	64
	db	67
	db	68
	db	76
	db	80
	db	111
	db	114
	db	116
	db	0
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	@@$xt$17System@AnsiString
	dd	8
	dd	0
@$xt$7CDLPort	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$7TExtFSK	segment virtual
	align	2
@@$xt$7TExtFSK	label	byte
	dd	928
	dw	3
	dw	48
	dd	0
	dd	183
	dw	56
	dw	72
	dd	0
	dw	0
	dw	0
	dd	0
	dd	17
	dd	17
	dd	@@TExtFSK@$bdtr$qqrv
	dw	3
	dw	76
	db	84
	db	69
	db	120
	db	116
	db	70
	db	83
	db	75
	db	0
	dd	@@$xt$11Forms@TForm
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	776
	dd	0
@$xt$7TExtFSK	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p20Inifiles@TMemIniFile	segment virtual
	align	2
@@$xt$p20Inifiles@TMemIniFile	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$20Inifiles@TMemIniFile
	db	84
	db	77
	db	101
	db	109
	db	73
	db	110
	db	105
	db	70
	db	105
	db	108
	db	101
	db	32
	db	42
	db	0
@$xt$p20Inifiles@TMemIniFile	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$11Forms@TForm	segment virtual
	align	2
@@$xt$11Forms@TForm	label	byte
	dd	720
	dw	3
	dw	48
	dd	0
	dd	183
	dw	64
	dw	80
	dd	0
	dw	0
	dw	0
	dd	0
	dd	15
	dd	15
	dd	@@Forms@TForm@$bdtr$qqrv
	dw	3
	dw	84
	db	70
	db	111
	db	114
	db	109
	db	115
	db	58
	db	58
	db	84
	db	70
	db	111
	db	114
	db	109
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$17Forms@TCustomForm
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$11Forms@TForm	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$ECTKF$@TExtFSK@$bdtr$qqrv	segment virtual
	align	2
@@_$ECTKF$@TExtFSK@$bdtr$qqrv	label	dword
	dd	0
	dd	-36
@_$ECTKF$@TExtFSK@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TExtFSK@$bdtr$qqrv	segment virtual
	align	2
@@TExtFSK@$bdtr$qqrv	proc	near
?live16470@0:
@306:
	push      ebp
	mov       ebp,esp
	add       esp,-40
	push      ebx
	call      __BeforeDestruction
	mov       byte ptr [ebp-37],dl
	mov       ebx,eax
	mov       eax,offset @@_$ECTKF$@TExtFSK@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	cmp       byte ptr [ebp-37],0
	jl        short @307
	dec       dword ptr [ebp-8]
	lea       eax,dword ptr [ebx+776]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	sub       dword ptr [ebp-8],15
	xor       edx,edx
	mov       eax,ebx
	call      @@Forms@TForm@$bdtr$qqrv
@307:
@308:
	mov       ecx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],ecx
@310:
@309:
	cmp       byte ptr [ebp-37],0
	jle       short @311
	mov       eax,ebx
	call      __ClassDestroy
@311:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@TExtFSK@$bdtr$qqrv	endp
@TExtFSK@$bdtr$qqrv	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCLF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	segment virtual
	align	2
@@_$DCLF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
@_$DCLF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTMF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	segment virtual
	align	2
@@_$ECTMF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	label	dword
	dd	0
	dd	-48
	dw	0
	dw	5
	dd	2
	dd	@@_$DCLF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2
	dw	8
	dw	5
	dd	4
	dd	@@_$DCLF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2+28
@_$ECTMF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	segment virtual
	align	2
@@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	proc	near
?live16471@0:
@312:
	push      ebp
	mov       ebp,esp
	add       esp,-48
	mov       eax,offset @@_$ECTMF$@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2
	push      ebx
	push      esi
	lea       esi,dword ptr [ebp-48]
	mov       dword ptr [ebp-4],ecx
	mov       ebx,edx
	call      @__InitExceptBlockLDTC
	mov       dword ptr [esi+28],2
	lea       edx,dword ptr [ebp-4]
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [esi+28]
?live16471@16: ; EBX = Register, ESI = &@temp2
	lea       edx,dword ptr [ebp+8]
	mov       word ptr [esi+16],8
	lea       eax,dword ptr [ebp+8]
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [esi+28]
	lea       edx,dword ptr [ebp+8]
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [esi+28]
	mov       edx,dword ptr [eax]
	lea       eax,dword ptr [ebp-8]
	push      edx
	lea       edx,dword ptr [ebp-4]
	mov       word ptr [esi+16],20
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [esi+28]
	mov       ecx,dword ptr [eax]
	mov       edx,ebx
	mov       eax,dword ptr [@Classes@TComponent@]
	call      @@Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClassox17System@AnsiStringt3
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp+8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [esi+28]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [esi]
	mov       dword ptr fs:[0],ecx
?live16471@32: ; 
@313:
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret       4
@@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	endp
@Classes@TComponent@UpdateRegistry$qqrox17System@AnsiStringt2	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCNF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
	align	2
@@_$DCNF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCNF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTOF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
	align	2
@@_$ECTOF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCNF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti
@_$ECTOF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
	align	2
@@Forms@TForm@$bctr$qqrp18Classes@TComponenti	proc	near
?live16472@0:
	push      ebp
	mov       ebp,esp
	add       esp,-44
	push      ebx
	mov       byte ptr [ebp-8],dl
	test      dl,dl
	jle       short @314
	call      __ClassCreate
@314:
@315:
	mov       ebx,ecx
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
	mov       eax,offset @@_$ECTOF$@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	call      @__InitExceptBlockLDTC
?live16472@16: ; EBX = AOwner
	mov       word ptr [ebp-24],8
	mov       edx,dword ptr [ebp+8]
	mov       ecx,ebx
	push      edx
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti
	add       dword ptr [ebp-12],14
	mov       ecx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],ecx
	mov       eax,dword ptr [ebp-4]
@317:
@316:
	cmp       byte ptr [ebp-41],0
	je        short @318
	call      __AfterConstruction
?live16472@32: ; 
@318:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret       4
@@Forms@TForm@$bctr$qqrp18Classes@TComponenti	endp
@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCPF$@Forms@TForm@$bdtr$qqrv	segment virtual
	align	2
@@_$DCPF$@Forms@TForm@$bdtr$qqrv	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCPF$@Forms@TForm@$bdtr$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTQF$@Forms@TForm@$bdtr$qqrv	segment virtual
	align	2
@@_$ECTQF$@Forms@TForm@$bdtr$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCPF$@Forms@TForm@$bdtr$qqrv
@_$ECTQF$@Forms@TForm@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bdtr$qqrv	segment virtual
	align	2
@@Forms@TForm@$bdtr$qqrv	proc	near
?live16474@0:
@319:
	push      ebp
	mov       ebp,esp
	add       esp,-40
	push      ebx
	call      __BeforeDestruction
	mov       ebx,edx
	mov       dword ptr [ebp-4],eax
	mov       eax,offset @@_$ECTQF$@Forms@TForm@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-12],14
	test      bl,bl
	jl        short @320
	mov       word ptr [ebp-24],8
	sub       dword ptr [ebp-12],14
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@$bdtr$qqrv
@320:
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],edx
@321:
	test      bl,bl
	jle       short @322
	mov       eax,dword ptr [ebp-4]
	call      __ClassDestroy
@322:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@Forms@TForm@$bdtr$qqrv	endp
@Forms@TForm@$bdtr$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$17Forms@TCustomForm	segment virtual
	align	2
@@$xt$17Forms@TCustomForm	label	byte
	dd	720
	dw	3
	dw	48
	dd	0
	dd	183
	dw	68
	dw	84
	dd	0
	dw	0
	dw	0
	dd	0
	dd	14
	dd	14
	dd	@@Forms@TCustomForm@$bdtr$qqrv
	dw	3
	dw	88
	db	70
	db	111
	db	114
	db	109
	db	115
	db	58
	db	58
	db	84
	db	67
	db	117
	db	115
	db	116
	db	111
	db	109
	db	70
	db	111
	db	114
	db	109
	db	0
	db	0
	dd	@@$xt$26Forms@TScrollingWinControl
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	548
	dd	@@$xt$43System@%DelphiInterface$t15Forms@IDesigner%
	dd	568
	dd	@@$xt$42System@%DelphiInterface$t14Forms@IOleForm%
	dd	588
	dd	0
@$xt$17Forms@TCustomForm	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$20Inifiles@TMemIniFile	segment virtual
	align	2
@@$xt$20Inifiles@TMemIniFile	label	byte
	dd	12
	dw	3
	dw	48
	dd	0
	dd	183
	dw	72
	dw	88
	dd	0
	dw	0
	dw	0
	dd	0
	dd	4
	dd	4
	dd	@@Inifiles@TMemIniFile@$bdtr$qqrv
	dw	3
	dw	92
	db	73
	db	110
	db	105
	db	102
	db	105
	db	108
	db	101
	db	115
	db	58
	db	58
	db	84
	db	77
	db	101
	db	109
	db	73
	db	110
	db	105
	db	70
	db	105
	db	108
	db	101
	db	0
	db	0
	db	0
	dd	@@$xt$23Inifiles@TCustomIniFile
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$20Inifiles@TMemIniFile	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$23Inifiles@TCustomIniFile	segment virtual
	align	2
@@$xt$23Inifiles@TCustomIniFile	label	byte
	dd	8
	dw	3
	dw	48
	dd	0
	dd	183
	dw	76
	dw	92
	dd	0
	dw	0
	dw	0
	dd	0
	dd	3
	dd	3
	dd	@@Inifiles@TCustomIniFile@$bdtr$qqrv
	dw	3
	dw	96
	db	73
	db	110
	db	105
	db	102
	db	105
	db	108
	db	101
	db	115
	db	58
	db	58
	db	84
	db	67
	db	117
	db	115
	db	116
	db	111
	db	109
	db	73
	db	110
	db	105
	db	70
	db	105
	db	108
	db	101
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$14System@TObject
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	0
@$xt$23Inifiles@TCustomIniFile	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$42System@%DelphiInterface$t14Forms@IOleForm%	segment virtual
	align	2
@@$xt$42System@%DelphiInterface$t14Forms@IOleForm%	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	92
	dw	96
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dw	3
	dw	100
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	58
	db	58
	db	68
	db	101
	db	108
	db	112
	db	104
	db	105
	db	73
	db	110
	db	116
	db	101
	db	114
	db	102
	db	97
	db	99
	db	101
	db	60
	db	70
	db	111
	db	114
	db	109
	db	115
	db	58
	db	58
	db	73
	db	79
	db	108
	db	101
	db	70
	db	111
	db	114
	db	109
	db	62
	db	0
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$42System@%DelphiInterface$t14Forms@IOleForm%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$43System@%DelphiInterface$t15Forms@IDesigner%	segment virtual
	align	2
@@$xt$43System@%DelphiInterface$t15Forms@IDesigner%	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	92
	dw	96
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
	dw	3
	dw	100
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	58
	db	58
	db	68
	db	101
	db	108
	db	112
	db	104
	db	105
	db	73
	db	110
	db	116
	db	101
	db	114
	db	102
	db	97
	db	99
	db	101
	db	60
	db	70
	db	111
	db	114
	db	109
	db	115
	db	58
	db	58
	db	73
	db	68
	db	101
	db	115
	db	105
	db	103
	db	110
	db	101
	db	114
	db	62
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$43System@%DelphiInterface$t15Forms@IDesigner%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$26Forms@TScrollingWinControl	segment virtual
	align	2
@@$xt$26Forms@TScrollingWinControl	label	byte
	dd	520
	dw	3
	dw	48
	dd	0
	dd	183
	dw	76
	dw	92
	dd	0
	dw	0
	dw	0
	dd	0
	dd	10
	dd	10
	dd	@@Forms@TScrollingWinControl@$bdtr$qqrv
	dw	3
	dw	96
	db	70
	db	111
	db	114
	db	109
	db	115
	db	58
	db	58
	db	84
	db	83
	db	99
	db	114
	db	111
	db	108
	db	108
	db	105
	db	110
	db	103
	db	87
	db	105
	db	110
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	0
	dd	@@$xt$20Controls@TWinControl
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$26Forms@TScrollingWinControl	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCRF$@Inifiles@TCustomIniFile@$bdtr$qqrv	segment virtual
	align	2
@@_$DCRF$@Inifiles@TCustomIniFile@$bdtr$qqrv	label	dword
	dd	@@$xt$p23Inifiles@TCustomIniFile
	dd	1029
	dd	-4
	dd	0
@_$DCRF$@Inifiles@TCustomIniFile@$bdtr$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTSF$@Inifiles@TCustomIniFile@$bdtr$qqrv	segment virtual
	align	2
@@_$ECTSF$@Inifiles@TCustomIniFile@$bdtr$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCRF$@Inifiles@TCustomIniFile@$bdtr$qqrv
@_$ECTSF$@Inifiles@TCustomIniFile@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Inifiles@TCustomIniFile@$bdtr$qqrv	segment virtual
	align	2
@@Inifiles@TCustomIniFile@$bdtr$qqrv	proc	near
?live16487@0:
@323:
	push      ebp
	mov       ebp,esp
	add       esp,-40
	push      ebx
	call      __BeforeDestruction
	mov       ebx,edx
	mov       dword ptr [ebp-4],eax
	mov       eax,offset @@_$ECTSF$@Inifiles@TCustomIniFile@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-12],2
	test      bl,bl
	jl        short @324
	mov       word ptr [ebp-24],8
	dec       dword ptr [ebp-12]
	mov       edx,2
	mov       eax,dword ptr [ebp-4]
	add       eax,4
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-12]
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@System@TObject@$bdtr$qqrv
@324:
	mov       ecx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],ecx
@325:
	test      bl,bl
	jle       short @326
	mov       eax,dword ptr [ebp-4]
	call      __ClassDestroy
@326:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
@@Inifiles@TCustomIniFile@$bdtr$qqrv	endp
@Inifiles@TCustomIniFile@$bdtr$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	segment virtual
	align	2
@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	proc	near
?live16493@0:
@327:
	push      ebx
	push      esi
	mov       esi,edx
	mov       ebx,eax
	test      ebx,ebx
	je        short @328
?live16493@16: ; EBX = this, ESI = $delflag
	mov       eax,dword ptr [ebx]
	test      eax,eax
	je        short @329
?live16493@32: ; EBX = this, EAX = @temp1, ESI = $delflag
	push      eax
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+8]
?live16493@48: ; EBX = this, ESI = $delflag
@329:
	xor       ecx,ecx
	test      esi,1
	mov       dword ptr [ebx],ecx
	je        short @330
	push      ebx
	call      @$bdele$qpv
	pop       ecx
?live16493@64: ; 
@330:
@328:
@331:
	pop       esi
	pop       ebx
	ret 
@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	endp
@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	segment virtual
	align	2
@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	proc	near
?live16494@0:
@332:
	push      ebx
	push      esi
	mov       esi,edx
	mov       ebx,eax
	test      ebx,ebx
	je        short @333
?live16494@16: ; EBX = this, ESI = $delflag
	mov       eax,dword ptr [ebx]
	test      eax,eax
	je        short @334
?live16494@32: ; EBX = this, EAX = @temp1, ESI = $delflag
	push      eax
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+8]
?live16494@48: ; EBX = this, ESI = $delflag
@334:
	xor       ecx,ecx
	test      esi,1
	mov       dword ptr [ebx],ecx
	je        short @335
	push      ebx
	call      @$bdele$qpv
	pop       ecx
?live16494@64: ; 
@335:
@333:
@336:
	pop       esi
	pop       ebx
	ret 
@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	endp
@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p23Inifiles@TCustomIniFile	segment virtual
	align	2
@@$xt$p23Inifiles@TCustomIniFile	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$23Inifiles@TCustomIniFile
	db	84
	db	67
	db	117
	db	115
	db	116
	db	111
	db	109
	db	73
	db	110
	db	105
	db	70
	db	105
	db	108
	db	101
	db	32
	db	42
	db	0
@$xt$p23Inifiles@TCustomIniFile	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$20Controls@TWinControl	segment virtual
	align	2
@@$xt$20Controls@TWinControl	label	byte
	dd	496
	dw	3
	dw	48
	dd	0
	dd	183
	dw	72
	dw	88
	dd	0
	dw	0
	dw	0
	dd	0
	dd	9
	dd	9
	dd	@@Controls@TWinControl@$bdtr$qqrv
	dw	3
	dw	92
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	115
	db	58
	db	58
	db	84
	db	87
	db	105
	db	110
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	0
	db	0
	db	0
	dd	@@$xt$17Controls@TControl
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$49System@%DelphiInterface$t21Controls@IDockManager%
	dd	328
	dd	@@$xt$17System@AnsiString
	dd	344
	dd	0
@$xt$20Controls@TWinControl	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$14System@TObject	segment virtual
	align	2
@@$xt$14System@TObject	label	byte
	dd	4
	dw	3
	dw	48
	dd	0
	dd	179
	dw	64
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@TObject@$bdtr$qqrv
	dw	3
	dw	72
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	58
	db	58
	db	84
	db	79
	db	98
	db	106
	db	101
	db	99
	db	116
	db	0
	dd	0
	dd	0
	dd	0
@$xt$14System@TObject	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$49System@%DelphiInterface$t21Controls@IDockManager%	segment virtual
	align	2
@@$xt$49System@%DelphiInterface$t21Controls@IDockManager%	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	96
	dw	100
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
	dw	3
	dw	104
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	58
	db	58
	db	68
	db	101
	db	108
	db	112
	db	104
	db	105
	db	73
	db	110
	db	116
	db	101
	db	114
	db	102
	db	97
	db	99
	db	101
	db	60
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	115
	db	58
	db	58
	db	73
	db	68
	db	111
	db	99
	db	107
	db	77
	db	97
	db	110
	db	97
	db	103
	db	101
	db	114
	db	62
	db	0
	dd	0
	dd	0
	dd	0
@$xt$49System@%DelphiInterface$t21Controls@IDockManager%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$17Controls@TControl	segment virtual
	align	2
@@$xt$17Controls@TControl	label	byte
	dd	288
	dw	3
	dw	48
	dd	0
	dd	183
	dw	68
	dw	84
	dd	0
	dw	0
	dw	0
	dd	0
	dd	6
	dd	6
	dd	@@Controls@TControl@$bdtr$qqrv
	dw	3
	dw	88
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	115
	db	58
	db	58
	db	84
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	0
	db	0
	dd	@@$xt$18Classes@TComponent
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	112
	dd	0
@$xt$17Controls@TControl	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	segment virtual
	align	2
@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	proc	near
?live16498@0:
@337:
	push      ebx
	push      esi
	mov       esi,edx
	mov       ebx,eax
	test      ebx,ebx
	je        short @338
?live16498@16: ; EBX = this, ESI = $delflag
	mov       eax,dword ptr [ebx]
	test      eax,eax
	je        short @339
?live16498@32: ; EBX = this, EAX = @temp1, ESI = $delflag
	push      eax
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+8]
?live16498@48: ; EBX = this, ESI = $delflag
@339:
	xor       ecx,ecx
	test      esi,1
	mov       dword ptr [ebx],ecx
	je        short @340
	push      ebx
	call      @$bdele$qpv
	pop       ecx
?live16498@64: ; 
@340:
@338:
@341:
	pop       esi
	pop       ebx
	ret 
@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	endp
@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$18Classes@TComponent	segment virtual
	align	2
@@$xt$18Classes@TComponent	label	byte
	dd	36
	dw	3
	dw	48
	dd	0
	dd	183
	dw	68
	dw	84
	dd	0
	dw	0
	dw	0
	dd	0
	dd	4
	dd	4
	dd	@@Classes@TComponent@$bdtr$qqrv
	dw	3
	dw	88
	db	67
	db	108
	db	97
	db	115
	db	115
	db	101
	db	115
	db	58
	db	58
	db	84
	db	67
	db	111
	db	109
	db	112
	db	111
	db	110
	db	101
	db	110
	db	116
	db	0
	dd	@@$xt$19Classes@TPersistent
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	8
	dd	0
@$xt$18Classes@TComponent	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$19Classes@TPersistent	segment virtual
	align	2
@@$xt$19Classes@TPersistent	label	byte
	dd	4
	dw	3
	dw	48
	dd	0
	dd	183
	dw	72
	dw	88
	dd	0
	dw	0
	dw	0
	dd	0
	dd	2
	dd	2
	dd	@@Classes@TPersistent@$bdtr$qqrv
	dw	3
	dw	92
	db	67
	db	108
	db	97
	db	115
	db	115
	db	101
	db	115
	db	58
	db	58
	db	84
	db	80
	db	101
	db	114
	db	115
	db	105
	db	115
	db	116
	db	101
	db	110
	db	116
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$14System@TObject
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$19Classes@TPersistent	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
s@	label	byte
	db	0
	;	s@+1:
	db	"ProgramW6432",0
	;	s@+14:
	db	"%s\%s",0
	;	s@+20:
	db	"Inp32",0
	;	s@+26:
	db	"Out32",0
	;	s@+32:
	db	"ini",0
	;	s@+36:
	db	"EXTFSK ",0
	;	s@+44:
	db	"64e_open",0
	;	s@+53:
	db	"DirectAccess",0
	;	s@+66:
	db	"LPTADR",0
	;	s@+73:
	db	"0",0
	;	s@+75:
	db	"LPT$%X",0
	;	s@+82:
	db	"Window",0
	;	s@+89:
	db	"Top",0
	;	s@+93:
	db	"Left",0
	;	s@+98:
	db	"State",0
	;	s@+104:
	db	"Settings",0
	;	s@+113:
	db	"Port",0
	;	s@+118:
	db	"COM1",0
	;	s@+123:
	db	"FSK",0
	;	s@+127:
	db	"PTT",0
	;	s@+131:
	db	"InvFSK",0
	;	s@+138:
	db	"InvPTT",0
	;	s@+145:
	db	"LPT%u",0
	;	s@+151:
	db	"D0-D3",0
	;	s@+157:
	db	"D4-D7",0
	;	s@+163:
	db	"STROBE",0
	;	s@+170:
	db	"TXD",0
	;	s@+174:
	db	"RTS",0
	;	s@+178:
	db	"DTR",0
	;	s@+182:
	db	"Addr:%X",0
	;	s@+190:
	db	"Status:%s",0
	;	s@+200:
	db	"OK",0
	;	s@+203:
	db	"NG",0
	;	s@+206:
	db	"LPT",0
	;	s@+210:
	db	"COM",0
	;	s@+214:
	db	"\\.\",0
	;	s@+219:
	db	"%d baud",0
	;	s@+227:
	db	"45 Baud",0
	;	s@+235:
	db	"TimeCapsMin = %ums",0
	;	s@+254:
	db	"The multimedia timer is not supported.",0
	;	s@+293:
	db	"LOW TIMER",0
	;	s@+303:
	db	"PTT ON",0
	;	s@+310:
	db	"PTT OFF",0
	;	s@+318:
	db	" %02X",0
	align	4
_DATA	ends
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
 ?debug  C FB041640496E6966696C657340544D656D496E6946696C654004000000
 ?debug  C FB0409405445787446534B4004000000
 ?debug  C FB040D4024787024375445787446534B04000000
 ?debug  C FB040D40466F726D734054466F726D4004000000
 ?debug  C FB0410405374646374726C7340544D656D6F4004000000
 ?debug  C FB0411405374646374726C7340544C6162656C4004000000
 ?debug  C FB0414405374646374726C734054436F6D626F426F784004000000
 ?debug  C FB0416404578746374726C734054526164696F47726F75704004000000
 ?debug  C FB0414405374646374726C734054436865636B426F784004000000
 ?debug  C FB041640427574746F6E7340545370656564427574746F6E4004000000
 ?debug  C FB041240247870243131466F726D734054466F726D04000000
 ?debug  C FB045140436C61737365734054436F6D706F6E656E744055706461746552656769737472792471717270313753797374656D40544D657461436C6173736F78313753797374656D40416E7369537472696E67743302000000
 ?debug  C FB041440436C61737365734054436F6D706F6E656E744004000000
 extrn   __Exception_list:dword
	public	_sys
@__splitpath equ __splitpath
 extrn   __splitpath:near
@@System@AnsiString@$basg$qqrrx17System@AnsiString equ @System@AnsiString@$basg$qqrrx17System@AnsiString
 extrn   @System@AnsiString@$basg$qqrrx17System@AnsiString:near
@@System@AnsiString@$bctr$qqrpxc equ @System@AnsiString@$bctr$qqrpxc
 extrn   @System@AnsiString@$bctr$qqrpxc:near
@@System@AnsiString@$bdtr$qqrv equ @System@AnsiString@$bdtr$qqrv
 extrn   @System@AnsiString@$bdtr$qqrv:near
@@System@AnsiString@$brplu$qqrrx17System@AnsiString equ @System@AnsiString@$brplu$qqrrx17System@AnsiString
 extrn   @System@AnsiString@$brplu$qqrrx17System@AnsiString:near
@_strncpy equ _strncpy
 extrn   _strncpy:near
 extrn   @__InitExceptBlockLDTC:near
@_strlen equ _strlen
 extrn   _strlen:near
@_getenv equ _getenv
 extrn   _getenv:near
@_wsprintfA equ _wsprintfA
 extrn   _wsprintfA:near
@@Sysutils@FileExists$qqrx17System@AnsiString equ @Sysutils@FileExists$qqrx17System@AnsiString
 extrn   @Sysutils@FileExists$qqrx17System@AnsiString:near
@LoadLibraryA equ LoadLibraryA
 extrn   LoadLibraryA:near
@GetProcAddress equ GetProcAddress
 extrn   GetProcAddress:near
@FreeLibrary equ FreeLibrary
 extrn   FreeLibrary:near
 extrn   @$bdele$qpv:near
@CreateFileA equ CreateFileA
 extrn   CreateFileA:near
@CloseHandle equ CloseHandle
 extrn   CloseHandle:near
@EscapeCommFunction equ EscapeCommFunction
 extrn   EscapeCommFunction:near
@@Controls@TControl@SetTop$qqri equ @Controls@TControl@SetTop$qqri
 extrn   @Controls@TControl@SetTop$qqri:near
@@Controls@TControl@SetLeft$qqri equ @Controls@TControl@SetLeft$qqri
 extrn   @Controls@TControl@SetLeft$qqri:near
@@Stdctrls@TCustomComboBox@SetItemIndex$qqri equ @Stdctrls@TCustomComboBox@SetItemIndex$qqri
 extrn   @Stdctrls@TCustomComboBox@SetItemIndex$qqri:near
@@Controls@TControl@SetText$qqrx17System@AnsiString equ @Controls@TControl@SetText$qqrx17System@AnsiString
 extrn   @Controls@TControl@SetText$qqrx17System@AnsiString:near
 extrn   __ClassCreate:near
 extrn   __AfterConstruction:near
@timeKillEvent equ timeKillEvent
 extrn   timeKillEvent:near
@timeEndPeriod equ timeEndPeriod
 extrn   timeEndPeriod:near
@@Classes@TThread@Terminate$qqrv equ @Classes@TThread@Terminate$qqrv
 extrn   @Classes@TThread@Terminate$qqrv:near
@@Inifiles@TMemIniFile@$bctr$qqrx17System@AnsiString equ @Inifiles@TMemIniFile@$bctr$qqrx17System@AnsiString
 extrn   @Inifiles@TMemIniFile@$bctr$qqrx17System@AnsiString:near
 extrn   @Inifiles@TMemIniFile@:byte
@@Forms@TCustomForm@SetWindowState$qqr18Forms@TWindowState equ @Forms@TCustomForm@SetWindowState$qqr18Forms@TWindowState
 extrn   @Forms@TCustomForm@SetWindowState$qqr18Forms@TWindowState:near
@_atol equ _atol
 extrn   _atol:near
@@Extctrls@TCustomRadioGroup@SetItemIndex$qqri equ @Extctrls@TCustomRadioGroup@SetItemIndex$qqri
 extrn   @Extctrls@TCustomRadioGroup@SetItemIndex$qqri:near
@@Stdctrls@TCustomComboBox@GetItemIndex$qqrv equ @Stdctrls@TCustomComboBox@GetItemIndex$qqrv
 extrn   @Stdctrls@TCustomComboBox@GetItemIndex$qqrv:near
@_memset equ _memset
 extrn   _memset:near
@@Controls@TControl@SetColor$qqr15Graphics@TColor equ @Controls@TControl@SetColor$qqr15Graphics@TColor
 extrn   @Controls@TControl@SetColor$qqr15Graphics@TColor:near
@_strnicmp equ _strnicmp
 extrn   _strnicmp:near
@@System@AnsiString@$beql$xqqrrx17System@AnsiString equ @System@AnsiString@$beql$xqqrrx17System@AnsiString
 extrn   @System@AnsiString@$beql$xqqrrx17System@AnsiString:near
@@System@AnsiString@SubString$xqqrii equ @System@AnsiString@SubString$xqqrii
 extrn   @System@AnsiString@SubString$xqqrii:near
@@System@$badd$qqrpxcrx17System@AnsiString equ @System@$badd$qqrpxcrx17System@AnsiString
 extrn   @System@$badd$qqrpxcrx17System@AnsiString:near
@SetupComm equ SetupComm
 extrn   SetupComm:near
@PurgeComm equ PurgeComm
 extrn   PurgeComm:near
@SetCommTimeouts equ SetCommTimeouts
 extrn   SetCommTimeouts:near
@GetCommState equ GetCommState
 extrn   GetCommState:near
@SetCommState equ SetCommState
 extrn   SetCommState:near
@SetCommMask equ SetCommMask
 extrn   SetCommMask:near
@_sprintf equ _sprintf
 extrn   _sprintf:near
@QueryPerformanceFrequency equ QueryPerformanceFrequency
 extrn   QueryPerformanceFrequency:near
@@Graphics@TFont@SetColor$qqr15Graphics@TColor equ @Graphics@TFont@SetColor$qqr15Graphics@TColor
 extrn   @Graphics@TFont@SetColor$qqr15Graphics@TColor:near
@timeGetDevCaps equ timeGetDevCaps
 extrn   timeGetDevCaps:near
@timeBeginPeriod equ timeBeginPeriod
 extrn   timeBeginPeriod:near
@timeSetEvent equ timeSetEvent
 extrn   timeSetEvent:near
@@THighTimer@$bctr$qqro equ @THighTimer@$bctr$qqro
 extrn   @THighTimer@$bctr$qqro:near
@@THighTimer@ equ @THighTimer@
 extrn   @THighTimer@:byte
@@Classes@TThread@SetPriority$qqr23Classes@TThreadPriority equ @Classes@TThread@SetPriority$qqr23Classes@TThreadPriority
 extrn   @Classes@TThread@SetPriority$qqr23Classes@TThreadPriority:near
@@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent equ @Forms@TCustomForm@$bctr$qqrp18Classes@TComponent
 extrn   @Forms@TCustomForm@$bctr$qqrp18Classes@TComponent:near
 extrn   @Forms@TForm@:byte
@@Classes@TComponent@SafeCallException$qqrp14System@TObjectpv equ @Classes@TComponent@SafeCallException$qqrp14System@TObjectpv
 extrn   @Classes@TComponent@SafeCallException$qqrp14System@TObjectpv:near
@@Forms@TCustomForm@AfterConstruction$qqrv equ @Forms@TCustomForm@AfterConstruction$qqrv
 extrn   @Forms@TCustomForm@AfterConstruction$qqrv:near
@@Forms@TCustomForm@BeforeDestruction$qqrv equ @Forms@TCustomForm@BeforeDestruction$qqrv
 extrn   @Forms@TCustomForm@BeforeDestruction$qqrv:near
@@System@TObject@Dispatch$qqrpv equ @System@TObject@Dispatch$qqrpv
 extrn   @System@TObject@Dispatch$qqrpv:near
@@Forms@TCustomForm@DefaultHandler$qqrpv equ @Forms@TCustomForm@DefaultHandler$qqrpv
 extrn   @Forms@TCustomForm@DefaultHandler$qqrpv:near
@@System@TObject@NewInstance$qqrp17System@TMetaClass equ @System@TObject@NewInstance$qqrp17System@TMetaClass
 extrn   @System@TObject@NewInstance$qqrp17System@TMetaClass:near
@@System@TObject@FreeInstance$qqrv equ @System@TObject@FreeInstance$qqrv
 extrn   @System@TObject@FreeInstance$qqrv:near
@@Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent equ @Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent
 extrn   @Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent:near
@@Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler equ @Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler
 extrn   @Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler:near
@@Classes@TPersistent@Assign$qqrp19Classes@TPersistent equ @Classes@TPersistent@Assign$qqrp19Classes@TPersistent
 extrn   @Classes@TPersistent@Assign$qqrp19Classes@TPersistent:near
@@Forms@TCustomForm@Loaded$qqrv equ @Forms@TCustomForm@Loaded$qqrv
 extrn   @Forms@TCustomForm@Loaded$qqrv:near
@@Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation equ @Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation
 extrn   @Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation:near
@@Forms@TCustomForm@ReadState$qqrp15Classes@TReader equ @Forms@TCustomForm@ReadState$qqrp15Classes@TReader
 extrn   @Forms@TCustomForm@ReadState$qqrp15Classes@TReader:near
@@Controls@TControl@SetName$qqrx17System@AnsiString equ @Controls@TControl@SetName$qqrx17System@AnsiString
 extrn   @Controls@TControl@SetName$qqrx17System@AnsiString:near
@@Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringt2 equ @Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringt2
 extrn   @Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringt2:near
@@Classes@TComponent@WriteState$qqrp15Classes@TWriter equ @Classes@TComponent@WriteState$qqrp15Classes@TWriter
 extrn   @Classes@TComponent@WriteState$qqrp15Classes@TWriter:near
@@Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv equ @Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv
 extrn   @Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv:near
@@Controls@TWinControl@CanResize$qqrrit1 equ @Controls@TWinControl@CanResize$qqrrit1
 extrn   @Controls@TWinControl@CanResize$qqrrit1:near
@@Controls@TWinControl@CanAutoSize$qqrrit1 equ @Controls@TWinControl@CanAutoSize$qqrrit1
 extrn   @Controls@TWinControl@CanAutoSize$qqrrit1:near
@@Controls@TWinControl@ConstrainedResize$qqrrit1t1t1 equ @Controls@TWinControl@ConstrainedResize$qqrrit1t1t1
 extrn   @Controls@TWinControl@ConstrainedResize$qqrrit1t1t1:near
@@Controls@TWinControl@GetClientOrigin$qqrv equ @Controls@TWinControl@GetClientOrigin$qqrv
 extrn   @Controls@TWinControl@GetClientOrigin$qqrv:near
@@Forms@TCustomForm@GetClientRect$qqrv equ @Forms@TCustomForm@GetClientRect$qqrv
 extrn   @Forms@TCustomForm@GetClientRect$qqrv:near
@@Controls@TWinControl@GetDeviceContext$qqrrpv equ @Controls@TWinControl@GetDeviceContext$qqrrpv
 extrn   @Controls@TWinControl@GetDeviceContext$qqrrpv:near
@@Controls@TControl@GetDragImages$qqrv equ @Controls@TControl@GetDragImages$qqrv
 extrn   @Controls@TControl@GetDragImages$qqrv:near
@@Controls@TControl@GetEnabled$qqrv equ @Controls@TControl@GetEnabled$qqrv
 extrn   @Controls@TControl@GetEnabled$qqrv:near
@@Forms@TCustomForm@GetFloating$qqrv equ @Forms@TCustomForm@GetFloating$qqrv
 extrn   @Forms@TCustomForm@GetFloating$qqrv:near
@@Controls@TControl@GetFloatingDockSiteClass$qqrv equ @Controls@TControl@GetFloatingDockSiteClass$qqrv
 extrn   @Controls@TControl@GetFloatingDockSiteClass$qqrv:near
@@Controls@TControl@SetDragMode$qqr18Controls@TDragMode equ @Controls@TControl@SetDragMode$qqr18Controls@TDragMode
 extrn   @Controls@TControl@SetDragMode$qqr18Controls@TDragMode:near
@@Controls@TControl@SetEnabled$qqro equ @Controls@TControl@SetEnabled$qqro
 extrn   @Controls@TControl@SetEnabled$qqro:near
@@Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl equ @Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl
 extrn   @Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl:near
@@Forms@TCustomForm@SetParentBiDiMode$qqro equ @Forms@TCustomForm@SetParentBiDiMode$qqro
 extrn   @Forms@TCustomForm@SetParentBiDiMode$qqro:near
@@Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode equ @Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode
 extrn   @Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode:near
@@Forms@TCustomForm@WndProc$qqrr17Messages@TMessage equ @Forms@TCustomForm@WndProc$qqrr17Messages@TMessage
 extrn   @Forms@TCustomForm@WndProc$qqrr17Messages@TMessage:near
@@Controls@TControl@InitiateAction$qqrv equ @Controls@TControl@InitiateAction$qqrv
 extrn   @Controls@TControl@InitiateAction$qqrv:near
@@Controls@TWinControl@Invalidate$qqrv equ @Controls@TWinControl@Invalidate$qqrv
 extrn   @Controls@TWinControl@Invalidate$qqrv:near
@@Controls@TWinControl@Repaint$qqrv equ @Controls@TWinControl@Repaint$qqrv
 extrn   @Controls@TWinControl@Repaint$qqrv:near
@@Controls@TWinControl@SetBounds$qqriiii equ @Controls@TWinControl@SetBounds$qqriiii
 extrn   @Controls@TWinControl@SetBounds$qqriiii:near
@@Controls@TWinControl@Update$qqrv equ @Controls@TWinControl@Update$qqrv
 extrn   @Controls@TWinControl@Update$qqrv:near
@@Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect equ @Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect
 extrn   @Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect:near
@@Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect equ @Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect
 extrn   @Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect:near
@@Controls@TWinControl@CreateHandle$qqrv equ @Controls@TWinControl@CreateHandle$qqrv
 extrn   @Controls@TWinControl@CreateHandle$qqrv:near
@@Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams equ @Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams
 extrn   @Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams:near
@@Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams equ @Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams
 extrn   @Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams:near
@@Forms@TCustomForm@CreateWnd$qqrv equ @Forms@TCustomForm@CreateWnd$qqrv
 extrn   @Forms@TCustomForm@CreateWnd$qqrv:near
@@Forms@TCustomForm@DestroyWindowHandle$qqrv equ @Forms@TCustomForm@DestroyWindowHandle$qqrv
 extrn   @Forms@TCustomForm@DestroyWindowHandle$qqrv:near
@@Controls@TWinControl@DestroyWnd$qqrv equ @Controls@TWinControl@DestroyWnd$qqrv
 extrn   @Controls@TWinControl@DestroyWnd$qqrv:near
@@Controls@TWinControl@GetControlExtents$qqrv equ @Controls@TWinControl@GetControlExtents$qqrv
 extrn   @Controls@TWinControl@GetControlExtents$qqrv:near
@@Forms@TCustomForm@PaintWindow$qqrpv equ @Forms@TCustomForm@PaintWindow$qqrpv
 extrn   @Forms@TCustomForm@PaintWindow$qqrpv:near
@@Controls@TWinControl@ShowControl$qqrp17Controls@TControl equ @Controls@TWinControl@ShowControl$qqrp17Controls@TControl
 extrn   @Controls@TWinControl@ShowControl$qqrp17Controls@TControl:near
@@Forms@TCustomForm@SetFocus$qqrv equ @Forms@TCustomForm@SetFocus$qqrv
 extrn   @Forms@TCustomForm@SetFocus$qqrv:near
@@Forms@TScrollingWinControl@AutoScrollEnabled$qqrv equ @Forms@TScrollingWinControl@AutoScrollEnabled$qqrv
 extrn   @Forms@TScrollingWinControl@AutoScrollEnabled$qqrv:near
@@Forms@TScrollingWinControl@AutoScrollInView$qqrp17Controls@TControl equ @Forms@TScrollingWinControl@AutoScrollInView$qqrp17Controls@TControl
 extrn   @Forms@TScrollingWinControl@AutoScrollInView$qqrp17Controls@TControl:near
@@Forms@TCustomForm@Resizing$qqr18Forms@TWindowState equ @Forms@TCustomForm@Resizing$qqr18Forms@TWindowState
 extrn   @Forms@TCustomForm@Resizing$qqr18Forms@TWindowState:near
@@Forms@TCustomForm@DoCreate$qqrv equ @Forms@TCustomForm@DoCreate$qqrv
 extrn   @Forms@TCustomForm@DoCreate$qqrv:near
@@Forms@TCustomForm@DoDestroy$qqrv equ @Forms@TCustomForm@DoDestroy$qqrv
 extrn   @Forms@TCustomForm@DoDestroy$qqrv:near
@@Forms@TCustomForm@UpdateActions$qqrv equ @Forms@TCustomForm@UpdateActions$qqrv
 extrn   @Forms@TCustomForm@UpdateActions$qqrv:near
@@Forms@TCustomForm@CloseQuery$qqrv equ @Forms@TCustomForm@CloseQuery$qqrv
 extrn   @Forms@TCustomForm@CloseQuery$qqrv:near
@@Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl equ @Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl
 extrn   @Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl:near
@@Forms@TCustomForm@ShowModal$qqrv equ @Forms@TCustomForm@ShowModal$qqrv
 extrn   @Forms@TCustomForm@ShowModal$qqrv:near
@@Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage equ @Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage
 extrn   @Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage:near
 extrn   @Stdctrls@TMemo@:byte
 extrn   @Stdctrls@TLabel@:byte
 extrn   @Stdctrls@TComboBox@:byte
 extrn   @Extctrls@TRadioGroup@:byte
 extrn   @Stdctrls@TCheckBox@:byte
 extrn   @Buttons@TSpeedButton@:byte
 extrn   @$xp$11Forms@TForm:byte
 extrn   __BeforeDestruction:near
 extrn   __ClassDestroy:near
@@System@AnsiString@$bctr$qqrrx17System@AnsiString equ @System@AnsiString@$bctr$qqrrx17System@AnsiString
 extrn   @System@AnsiString@$bctr$qqrrx17System@AnsiString:near
@@Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClassox17System@AnsiStringt3 equ @Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClassox17System@AnsiStringt3
 extrn   @Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClassox17System@AnsiStringt3:near
 extrn   @Classes@TComponent@:byte
@@Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti equ @Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti
 extrn   @Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti:near
@@Forms@TCustomForm@$bdtr$qqrv equ @Forms@TCustomForm@$bdtr$qqrv
 extrn   @Forms@TCustomForm@$bdtr$qqrv:near
@@Inifiles@TMemIniFile@$bdtr$qqrv equ @Inifiles@TMemIniFile@$bdtr$qqrv
 extrn   @Inifiles@TMemIniFile@$bdtr$qqrv:near
@@Forms@TScrollingWinControl@$bdtr$qqrv equ @Forms@TScrollingWinControl@$bdtr$qqrv
 extrn   @Forms@TScrollingWinControl@$bdtr$qqrv:near
@@System@TObject@$bdtr$qqrv equ @System@TObject@$bdtr$qqrv
 extrn   @System@TObject@$bdtr$qqrv:near
@@Controls@TWinControl@$bdtr$qqrv equ @Controls@TWinControl@$bdtr$qqrv
 extrn   @Controls@TWinControl@$bdtr$qqrv:near
@@Controls@TControl@$bdtr$qqrv equ @Controls@TControl@$bdtr$qqrv
 extrn   @Controls@TControl@$bdtr$qqrv:near
@@Classes@TComponent@$bdtr$qqrv equ @Classes@TComponent@$bdtr$qqrv
 extrn   @Classes@TComponent@$bdtr$qqrv:near
@@Classes@TPersistent@$bdtr$qqrv equ @Classes@TPersistent@$bdtr$qqrv
 extrn   @Classes@TPersistent@$bdtr$qqrv:near
 ?debug  C FB094D61696E2E64666D00
 ?debug  C FB0A4D61696E00
 ?debug  C 9F76636C6535302E6C6962
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\assert.h" 10339 10240
	?debug	D "D:\MyProjects\amprog\ExtFsk\ExtFsk64eOpenSource\THighTimer.h" 17578 15312
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\_nfile.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\stdio.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\mmsystem.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\Inifiles.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\Buttons.hpp" 10339 10240
	?debug	D "D:\MyProjects\amprog\ExtFsk\ExtFsk64eOpenSource\Main.h" 19344 21241
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\extctrls.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\commdlg.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\CommDlg.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\StdCtrls.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\shellapi.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\ShellAPI.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\regstr.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\RegStr.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\wininet.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\WinInet.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\objidl.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\oaidl.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\oleauto.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\ActiveX.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\UrlMon.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\ShlObj.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\dialogs.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\forms.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\multimon.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\MultiMon.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\Contnrs.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\Menus.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\Imm.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\CommCtrl.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\Commctrl.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\ImgList.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\ActnList.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\controls.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\graphics.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\classes.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\SysConst.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysutils.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\messages.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\dde.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\wincrypt.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\wintrust.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\SysInit.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\windows.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\unknwn.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysvari.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysopen.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\search.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\stdlib.h" 10521 10272
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysdyn.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\systvar.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysset.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\syscomp.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\syscurr.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\systdate.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\systobj.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\rpcnsip.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\rpcndr.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\rpcnterr.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\rpcnsi.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\rpcdcep.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\rpcdce.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\rpc.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\wtypes.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\wstring.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysmac.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\dstring.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysclass.H" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\basetyps.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\prsht.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winspool.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\imm.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\mcx.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winsvc.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winnetwk.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winreg.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winver.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\wincon.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winnls.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\tvout.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winuser.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\pshpack1.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\wingdi.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winerror.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winbase.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\pshpack8.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\pshpack2.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\poppack.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\pshpack4.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\_loc.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\locale.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\_str.h" 10521 10272
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\string.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\guiddef.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\basetsd.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\mbctype.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\ctype.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\winnt.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\windef.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\stdarg.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\excpt.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\_null.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\_defs.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\_stddef.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\mem.h" 10521 10272
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\windows.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\sysmac.H" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\system.hpp" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\vcl0.h" 10339 10240
	?debug	D "C:\PROGRAM FILES (X86)\BORLAND\CBUILDER5\INCLUDE\VCL\vcl.h" 10339 10240
	?debug	D "D:\MyProjects\amprog\ExtFsk\ExtFsk64eOpenSource\Main.cpp" 17608 14122
	end
