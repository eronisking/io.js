	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start
_http_parser__n_start:                  ## @http_parser__n_start
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	%rdx, %rsi
	je	LBB0_9
LBB0_1:                                 ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rbx), %al
	cmpb	$10, %al
	je	LBB0_8
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB0_1 Depth=1
	cmpb	$13, %al
	jne	LBB0_3
LBB0_8:                                 ## %http_parser__n_start.trampoline
                                        ##   in Loop: Header=BB0_1 Depth=1
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB0_1
LBB0_9:                                 ## %no_data
	leaq	_http_parser__n_start(%rip), %rax
LBB0_10:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB0_3:                                 ## %http_parser__n_invoke_update_finish.trampoline
	movb	$2, 82(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__on_message_begin
	testl	%eax, %eax
	je	LBB0_6
## %bb.4:                               ## %http_parser__n_invoke_update_finish.trampoline
	cmpl	$20, %eax
	je	LBB0_7
## %bb.5:                               ## %http_parser__n_error.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error   ## TAILCALL
LBB0_6:                                 ## %http_parser__n_invoke_load_type.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_load_type ## TAILCALL
LBB0_7:                                 ## %http_parser__n_invoke_update_finish.exit
	movl	$20, 24(%r14)
	leaq	_g_cstr_37(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_invoke_load_type(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB0_10
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_load_type
_http_parser__n_invoke_load_type:       ## @http_parser__n_invoke_load_type
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	72(%rdi), %al
	cmpb	$1, %al
	je	LBB1_3
## %bb.1:
	cmpb	$2, %al
	jne	LBB1_2
## %bb.4:                               ## %http_parser__n_start_res.trampoline
	popq	%rax
	jmp	_http_parser__n_start_res ## TAILCALL
LBB1_3:                                 ## %http_parser__n_start_req.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req ## TAILCALL
LBB1_2:                                 ## %http_parser__n_start_req_or_res.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_or_res ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req
_http_parser__n_start_req:              ## @http_parser__n_start_req
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB2_19
## %bb.1:                               ## %has_data
	movb	(%rax), %cl
	addb	$-65, %cl
	cmpb	$20, %cl
	ja	LBB2_3
## %bb.2:                               ## %has_data
	leaq	1(%rax), %rsi
	movzbl	%cl, %ecx
	leaq	LJTI2_0(%rip), %r8
	movslq	(%r8,%rcx,4), %rcx
	addq	%r8, %rcx
	jmpq	*%rcx
LBB2_4:                                 ## %http_parser__n_start_req_1.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_1 ## TAILCALL
LBB2_19:                                ## %no_data
	leaq	_http_parser__n_start_req(%rip), %rax
	popq	%rcx
	retq
LBB2_5:                                 ## %http_parser__n_start_req_2.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_2 ## TAILCALL
LBB2_6:                                 ## %http_parser__n_start_req_3.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_3 ## TAILCALL
LBB2_7:                                 ## %http_parser__n_start_req_8.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_8 ## TAILCALL
LBB2_8:                                 ## %http_parser__n_start_req_9.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_9 ## TAILCALL
LBB2_9:                                 ## %http_parser__n_start_req_10.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_10 ## TAILCALL
LBB2_10:                                ## %http_parser__n_start_req_11.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_11 ## TAILCALL
LBB2_11:                                ## %http_parser__n_start_req_14.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_14 ## TAILCALL
LBB2_12:                                ## %http_parser__n_start_req_23.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_23 ## TAILCALL
LBB2_13:                                ## %http_parser__n_start_req_24.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_24 ## TAILCALL
LBB2_14:                                ## %http_parser__n_start_req_25.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_25 ## TAILCALL
LBB2_15:                                ## %http_parser__n_start_req_34.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_34 ## TAILCALL
LBB2_16:                                ## %http_parser__n_start_req_38.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_38 ## TAILCALL
LBB2_17:                                ## %http_parser__n_start_req_42.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_42 ## TAILCALL
LBB2_18:                                ## %http_parser__n_start_req_43.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_43 ## TAILCALL
LBB2_3:                                 ## %http_parser__n_error_39.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L2_0_set_4 = LBB2_4-LJTI2_0
L2_0_set_5 = LBB2_5-LJTI2_0
L2_0_set_6 = LBB2_6-LJTI2_0
L2_0_set_7 = LBB2_7-LJTI2_0
L2_0_set_3 = LBB2_3-LJTI2_0
L2_0_set_8 = LBB2_8-LJTI2_0
L2_0_set_9 = LBB2_9-LJTI2_0
L2_0_set_10 = LBB2_10-LJTI2_0
L2_0_set_11 = LBB2_11-LJTI2_0
L2_0_set_12 = LBB2_12-LJTI2_0
L2_0_set_13 = LBB2_13-LJTI2_0
L2_0_set_14 = LBB2_14-LJTI2_0
L2_0_set_15 = LBB2_15-LJTI2_0
L2_0_set_16 = LBB2_16-LJTI2_0
L2_0_set_17 = LBB2_17-LJTI2_0
L2_0_set_18 = LBB2_18-LJTI2_0
LJTI2_0:
	.long	L2_0_set_4
	.long	L2_0_set_5
	.long	L2_0_set_6
	.long	L2_0_set_7
	.long	L2_0_set_3
	.long	L2_0_set_3
	.long	L2_0_set_8
	.long	L2_0_set_9
	.long	L2_0_set_3
	.long	L2_0_set_3
	.long	L2_0_set_3
	.long	L2_0_set_10
	.long	L2_0_set_11
	.long	L2_0_set_12
	.long	L2_0_set_13
	.long	L2_0_set_14
	.long	L2_0_set_3
	.long	L2_0_set_15
	.long	L2_0_set_16
	.long	L2_0_set_17
	.long	L2_0_set_18
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_1
_http_parser__n_start_req_1:            ## @http_parser__n_start_req_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB3_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob(%rip), %r8
LBB3_2:                                 ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB3_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB3_2 Depth=1
	cmpl	$1, %ecx
	je	LBB3_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB3_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB3_2
## %bb.7:
	movb	$1, %al
	jmp	LBB3_8
LBB3_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB3_8
LBB3_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB3_8:                                 ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB3_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB3_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$19
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB3_11:                                ## %pause
	leaq	_http_parser__n_start_req_1(%rip), %rax
	popq	%rcx
	retq
LBB3_12:                                ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_store_method_1
_http_parser__n_invoke_store_method_1:  ## @http_parser__n_invoke_store_method_1
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	%cl, 73(%rdi)
	popq	%rax
	jmp	_http_parser__n_req_spaces_before_url ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_spaces_before_url
_http_parser__n_req_spaces_before_url:  ## @http_parser__n_req_spaces_before_url
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
LBB5_1:                                 ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB5_5
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB5_1 Depth=1
	cmpb	$32, (%rsi)
	leaq	1(%rsi), %rsi
	je	LBB5_1
## %bb.3:                               ## %http_parser__n_invoke_is_equal_method.trampoline
	decq	%rsi
	cmpb	$5, 73(%rdi)
	jne	LBB5_4
## %bb.6:                               ## %http_parser__n_url_entry_connect.trampoline.i
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_url ## TAILCALL
LBB5_4:                                 ## %http_parser__n_url_entry_normal.trampoline.i
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_url_1 ## TAILCALL
LBB5_5:                                 ## %no_data
	leaq	_http_parser__n_req_spaces_before_url(%rip), %rax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_url_1
_http_parser__n_span_start_http_parser__on_url_1: ## @http_parser__n_span_start_http_parser__on_url_1
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB6_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_url@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_url_start ## TAILCALL
LBB6_1:                                 ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_url_1(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_start
_http_parser__n_url_start:              ## @http_parser__n_url_start
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB7_7
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movzbl	(%rax), %r8d
	leaq	_g_lookup_table(%rip), %rcx
	movb	(%r8,%rcx), %cl
	cmpb	$2, %cl
	je	LBB7_5
## %bb.2:                               ## %has_data
	cmpb	$3, %cl
	jne	LBB7_3
## %bb.6:                               ## %http_parser__n_url_schema.trampoline
	popq	%rax
	jmp	_http_parser__n_url_schema ## TAILCALL
LBB7_7:                                 ## %no_data
	leaq	_http_parser__n_url_start(%rip), %rax
	popq	%rcx
	retq
LBB7_5:                                 ## %http_parser__n_url_path.trampoline
	popq	%rax
	jmp	_http_parser__n_url_path ## TAILCALL
LBB7_3:                                 ## %has_data
	cmpb	$1, %cl
	jne	LBB7_8
## %bb.4:                               ## %http_parser__n_error_29.trampoline
	popq	%rax
	jmp	_http_parser__n_error_29 ## TAILCALL
LBB7_8:                                 ## %http_parser__n_error_31.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_31 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_29
_http_parser__n_error_29:               ## @http_parser__n_error_29
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_path
_http_parser__n_url_path:               ## @http_parser__n_url_path
	.cfi_startproc
## %bb.0:
	leaq	_g_lookup_table_1(%rip), %rax
LBB9_1:                                 ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB9_4
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB9_1 Depth=1
	movzbl	(%rsi), %ecx
	incq	%rsi
	cmpb	$1, (%rcx,%rax)
	je	LBB9_1
## %bb.3:                               ## %http_parser__n_url_query_or_fragment.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_url_query_or_fragment ## TAILCALL
LBB9_4:                                 ## %no_data
	leaq	_http_parser__n_url_path(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_query_or_fragment
_http_parser__n_url_query_or_fragment:  ## @http_parser__n_url_query_or_fragment
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB10_12
## %bb.1:                               ## %has_data
	movb	(%rsi), %cl
	cmpb	$10, %cl
	je	LBB10_7
## %bb.2:                               ## %has_data
	cmpb	$13, %cl
	je	LBB10_8
## %bb.3:                               ## %has_data
	cmpb	$32, %cl
	je	LBB10_9
## %bb.4:                               ## %has_data
	leaq	1(%rsi), %rax
	cmpb	$35, %cl
	je	LBB10_10
## %bb.5:                               ## %has_data
	cmpb	$63, %cl
	jne	LBB10_6
## %bb.11:                              ## %http_parser__n_url_query.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_url_query ## TAILCALL
LBB10_12:                               ## %no_data
	leaq	_http_parser__n_url_query_or_fragment(%rip), %rax
	popq	%rcx
	retq
LBB10_7:                                ## %http_parser__n_span_end_http_parser__on_url.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB10_8:                                ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB10_9:                                ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB10_10:                               ## %http_parser__n_url_fragment.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_url_fragment ## TAILCALL
LBB10_6:                                ## %http_parser__n_error_25.trampoline
	popq	%rax
	jmp	_http_parser__n_error_25 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_end_http_parser__on_url
_http_parser__n_span_end_http_parser__on_url: ## @http_parser__n_span_end_http_parser__on_url
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	andq	$0, 8(%rdi)
	movq	%r14, %rdx
	callq	_http_parser__on_url
	testl	%eax, %eax
	jne	LBB11_1
## %bb.2:                               ## %http_parser__n_url_skip_to_http09.trampoline
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_url_skip_to_http09 ## TAILCALL
LBB11_1:                                ## %error
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, 40(%rbx)
	leaq	_http_parser__n_url_skip_to_http09(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_skip_to_http09
_http_parser__n_url_skip_to_http09:     ## @http_parser__n_url_skip_to_http09
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB12_1
## %bb.2:                               ## %http_parser__n_url_to_http_09.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_invoke_update_http_major ## TAILCALL
LBB12_1:                                ## %no_data
	leaq	_http_parser__n_url_skip_to_http09(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_update_http_major
_http_parser__n_invoke_update_http_major: ## @http_parser__n_invoke_update_http_major
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%rax
	.cfi_def_cfa_offset 16
	movw	$2304, 74(%rdi)         ## imm = 0x900
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_start
_http_parser__n_header_field_start:     ## @http_parser__n_header_field_start
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB14_5
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	cmpb	$10, %al
	je	LBB14_4
## %bb.2:                               ## %has_data
	cmpb	$13, %al
	jne	LBB14_6
## %bb.3:                               ## %http_parser__n_headers_almost_done.trampoline1
	incq	%rsi
LBB14_4:                                ## %http_parser__n_headers_almost_done.trampoline
	popq	%rax
	jmp	_http_parser__n_headers_almost_done ## TAILCALL
LBB14_5:                                ## %no_data
	leaq	_http_parser__n_header_field_start(%rip), %rax
	popq	%rcx
	retq
LBB14_6:                                ## %http_parser__n_span_start_http_parser__on_header_field.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_header_field ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_headers_almost_done
_http_parser__n_headers_almost_done:    ## @http_parser__n_headers_almost_done
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	%rdx, %rsi
	je	LBB15_1
## %bb.2:                               ## %http_parser__n_invoke_test_flags.trampoline
	incq	%rbx
	movb	77(%r14), %al
	testb	%al, %al
	jns	LBB15_3
## %bb.16:                              ## %http_parser__n_invoke_http_parser__on_chunk_complete_1.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__on_chunk_complete
	testl	%eax, %eax
	je	LBB15_20
## %bb.17:                              ## %http_parser__n_invoke_http_parser__on_chunk_complete_1.trampoline.i
	cmpl	$20, %eax
	je	LBB15_18
## %bb.19:                              ## %http_parser__n_error_10.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_10 ## TAILCALL
LBB15_1:
	leaq	_http_parser__n_headers_almost_done(%rip), %rax
LBB15_10:                               ## %http_parser__n_invoke_test_flags.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB15_3:                                ## %http_parser__n_invoke_test_flags_1.trampoline.i
	andb	$40, %al
	movb	$40, %cl
	cmpb	%cl, %al
	je	LBB15_15
## %bb.4:                               ## %http_parser__n_invoke_http_parser__before_headers_complete.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__before_headers_complete
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__on_headers_complete
	testl	%eax, %eax
	je	LBB15_14
## %bb.5:                               ## %http_parser__n_invoke_http_parser__before_headers_complete.trampoline.i.i
	cmpl	$1, %eax
	je	LBB15_12
## %bb.6:                               ## %http_parser__n_invoke_http_parser__before_headers_complete.trampoline.i.i
	cmpl	$2, %eax
	je	LBB15_13
## %bb.7:                               ## %http_parser__n_invoke_http_parser__before_headers_complete.trampoline.i.i
	cmpl	$20, %eax
	je	LBB15_8
## %bb.11:                              ## %http_parser__n_error_1.trampoline.i.i.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_1 ## TAILCALL
LBB15_20:                               ## %http_parser__n_message_done.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_http_parser__on_message_complete_2 ## TAILCALL
LBB15_12:                               ## %http_parser__n_invoke_update_upgrade.trampoline.i.i.i.i
	movb	$1, 78(%r14)
	orb	$64, 77(%r14)
	jmp	LBB15_14
LBB15_13:                               ## %http_parser__n_invoke_update_upgrade_1.trampoline.i.i.i.i
	movb	$1, 78(%r14)
LBB15_14:                               ## %http_parser__n_headers_done.trampoline.i.i.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_http_parser__after_headers_complete ## TAILCALL
LBB15_15:                               ## %http_parser__n_error_9.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_9 ## TAILCALL
LBB15_18:
	leaq	_http_parser__n_message_done(%rip), %rax
	leaq	_g_cstr_5(%rip), %rcx
	jmp	LBB15_9
LBB15_8:
	leaq	_http_parser__n_headers_done(%rip), %rax
	leaq	_g_cstr_12(%rip), %rcx
LBB15_9:                                ## %http_parser__n_invoke_test_flags.exit.sink.split
	movl	$20, 24(%r14)
	movq	%rcx, 32(%r14)
	movq	%rbx, 40(%r14)
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB15_10
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_http_parser__on_message_complete_2
_http_parser__n_invoke_http_parser__on_message_complete_2: ## @http_parser__n_invoke_http_parser__on_message_complete_2
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_http_parser__on_message_complete
	testl	%eax, %eax
	je	LBB16_3
## %bb.1:
	cmpl	$20, %eax
	je	LBB16_4
## %bb.2:                               ## %http_parser__n_error_8.trampoline
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_8 ## TAILCALL
LBB16_3:                                ## %http_parser__n_invoke_is_equal_upgrade.trampoline
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_is_equal_upgrade ## TAILCALL
LBB16_4:                                ## %http_parser__n_pause_5.trampoline
	movl	$20, 24(%r15)
	leaq	_g_cstr_3(%rip), %rax
	movq	%rax, 32(%r15)
	movq	%r14, 40(%r15)
	leaq	_http_parser__n_invoke_is_equal_upgrade(%rip), %rax
	movq	%rax, 56(%r15)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_is_equal_upgrade
_http_parser__n_invoke_is_equal_upgrade: ## @http_parser__n_invoke_is_equal_upgrade
	.cfi_startproc
## %bb.0:
	cmpb	$1, 78(%rdi)
	jne	LBB17_2
## %bb.1:                               ## %http_parser__n_pause_1.trampoline
	movl	$21, 24(%rdi)
	leaq	_g_cstr_2(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	leaq	_http_parser__n_cleanup(%rip), %rax
	movq	%rax, 56(%rdi)
	xorl	%eax, %eax
	retq
LBB17_2:                                ## %http_parser__n_cleanup.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	jmp	_http_parser__n_invoke_http_parser__after_message_complete ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_http_parser__after_message_complete
_http_parser__n_invoke_http_parser__after_message_complete: ## @http_parser__n_invoke_http_parser__after_message_complete
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	_http_parser__after_message_complete
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_start   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_pause_1
_http_parser__n_pause_1:                ## @http_parser__n_pause_1
	.cfi_startproc
## %bb.0:
	movl	$21, 24(%rdi)
	leaq	_g_cstr_2(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	leaq	_http_parser__n_cleanup(%rip), %rax
	movq	%rax, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_cleanup
_http_parser__n_cleanup:                ## @http_parser__n_cleanup
	.cfi_startproc
## %bb.0:                               ## %http_parser__n_invoke_http_parser__after_message_complete.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	jmp	_http_parser__n_invoke_http_parser__after_message_complete ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_8
_http_parser__n_error_8:                ## @http_parser__n_error_8
	.cfi_startproc
## %bb.0:
	movl	$17, 24(%rdi)
	leaq	_g_cstr_4(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_message_done
_http_parser__n_message_done:           ## @http_parser__n_message_done
	.cfi_startproc
## %bb.0:                               ## %http_parser__n_invoke_http_parser__on_message_complete_2.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	jmp	_http_parser__n_invoke_http_parser__on_message_complete_2 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_10
_http_parser__n_error_10:               ## @http_parser__n_error_10
	.cfi_startproc
## %bb.0:
	movl	$19, 24(%rdi)
	leaq	_g_cstr_6(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_9
_http_parser__n_error_9:                ## @http_parser__n_error_9
	.cfi_startproc
## %bb.0:
	movl	$4, 24(%rdi)
	leaq	_g_cstr_7(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_http_parser__after_headers_complete
_http_parser__n_invoke_http_parser__after_headers_complete: ## @http_parser__n_invoke_http_parser__after_headers_complete
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	_http_parser__after_headers_complete
                                        ## kill: def $eax killed $eax def $rax
	decl	%eax
	cmpl	$3, %eax
	ja	LBB25_2
## %bb.1:
	leaq	LJTI25_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB25_8:                                ## %http_parser__n_invoke_http_parser__on_message_complete_1.trampoline
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_http_parser__on_message_complete
	testl	%eax, %eax
	je	LBB25_11
## %bb.9:                               ## %http_parser__n_invoke_http_parser__on_message_complete_1.trampoline
	cmpl	$20, %eax
	je	LBB25_12
## %bb.10:                              ## %http_parser__n_error_3.trampoline.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_3 ## TAILCALL
LBB25_2:                                ## %http_parser__n_invoke_http_parser__on_message_complete.trampoline
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_http_parser__on_message_complete
	testl	%eax, %eax
	je	LBB25_5
## %bb.3:                               ## %http_parser__n_invoke_http_parser__on_message_complete.trampoline
	cmpl	$20, %eax
	je	LBB25_6
## %bb.4:                               ## %http_parser__n_error_2.trampoline.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_2 ## TAILCALL
LBB25_15:                               ## %http_parser__n_chunk_size_start.trampoline
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_update_content_length ## TAILCALL
LBB25_16:                               ## %http_parser__n_body_identity.trampoline
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_span_start_http_parser__on_body_1 ## TAILCALL
LBB25_17:                               ## %http_parser__n_body_identity_eof.trampoline
	cmpq	%rbx, %r15
	je	LBB25_18
## %bb.19:                              ## %has_data.i
	movq	%r15, 8(%r14)
	movq	_http_parser__on_body@GOTPCREL(%rip), %rax
	movq	%rax, 16(%r14)
	movb	$1, 82(%r14)
	leaq	_http_parser__n_eof(%rip), %rax
	jmp	LBB25_14
LBB25_5:                                ## %http_parser__n_cleanup.trampoline.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_http_parser__after_message_complete ## TAILCALL
LBB25_18:
	leaq	_http_parser__n_span_start_http_parser__on_body_2(%rip), %rax
LBB25_14:                               ## %http_parser__n_invoke_http_parser__on_message_complete_1.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB25_11:                               ## %http_parser__n_pause_1.trampoline.i
	movl	$21, 24(%r14)
	leaq	_g_cstr_2(%rip), %rax
	jmp	LBB25_7
LBB25_12:                               ## %http_parser__n_pause_2.trampoline.i
	movl	$20, 24(%r14)
	leaq	_g_cstr_3(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%r15, 40(%r14)
	leaq	_http_parser__n_pause_1(%rip), %rax
	jmp	LBB25_13
LBB25_6:                                ## %http_parser__n_invoke_http_parser__on_message_complete.exit
	movl	$20, 24(%r14)
	leaq	_g_cstr_3(%rip), %rax
LBB25_7:                                ## %http_parser__n_invoke_http_parser__on_message_complete_1.exit
	movq	%rax, 32(%r14)
	movq	%r15, 40(%r14)
	leaq	_http_parser__n_cleanup(%rip), %rax
LBB25_13:                               ## %http_parser__n_invoke_http_parser__on_message_complete_1.exit
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB25_14
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L25_0_set_8 = LBB25_8-LJTI25_0
L25_0_set_15 = LBB25_15-LJTI25_0
L25_0_set_16 = LBB25_16-LJTI25_0
L25_0_set_17 = LBB25_17-LJTI25_0
LJTI25_0:
	.long	L25_0_set_8
	.long	L25_0_set_15
	.long	L25_0_set_16
	.long	L25_0_set_17
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_3
_http_parser__n_error_3:                ## @http_parser__n_error_3
	.cfi_startproc
## %bb.0:
	movl	$17, 24(%rdi)
	leaq	_g_cstr_4(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_update_content_length
_http_parser__n_invoke_update_content_length: ## @http_parser__n_invoke_update_content_length
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%rax
	.cfi_def_cfa_offset 16
	andq	$0, 64(%rdi)
	popq	%rax
	jmp	_http_parser__n_chunk_size ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_chunk_size
_http_parser__n_chunk_size:             ## @http_parser__n_chunk_size
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdx, %r11
	cmpq	%rdx, %rsi
	je	LBB28_7
## %bb.1:                               ## %has_data.lr.ph
	movabsq	$35465847073801215, %r8 ## imm = 0x7E0000007E03FF
	pushq	$16
	.cfi_adjust_cfa_offset 8
	popq	%r9
	.cfi_adjust_cfa_offset -8
	leaq	l_switch.table.http_parser__n_chunk_size(%rip), %r10
LBB28_2:                                ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	addb	$-48, %cl
	cmpb	$55, %cl
	jae	LBB28_8
## %bb.3:                               ## %switch.hole_check
                                        ##   in Loop: Header=BB28_2 Depth=1
	movzbl	%cl, %eax
	btq	%rax, %r8
	jae	LBB28_8
## %bb.4:                               ## %switch.lookup
                                        ##   in Loop: Header=BB28_2 Depth=1
	movq	64(%rdi), %rax
	mulq	%r9
	jo	LBB28_9
## %bb.5:                               ## %no_overflow.i.i
                                        ##   in Loop: Header=BB28_2 Depth=1
	movsbq	%cl, %rcx
	addq	(%r10,%rcx,8), %rax
	jb	LBB28_9
## %bb.6:                               ## %http_parser__n_chunk_size.trampoline.i
                                        ##   in Loop: Header=BB28_2 Depth=1
	incq	%rsi
	movq	%rax, 64(%rdi)
	cmpq	%rsi, %r11
	jne	LBB28_2
LBB28_7:                                ## %no_data
	leaq	_http_parser__n_chunk_size(%rip), %rax
	popq	%rcx
	retq
LBB28_8:                                ## %http_parser__n_chunk_size_otherwise.trampoline
	movq	%r11, %rdx
	popq	%rax
	jmp	_http_parser__n_chunk_size_otherwise ## TAILCALL
LBB28_9:                                ## %http_parser__n_error_4.trampoline.i
	incq	%rsi
	movq	%r11, %rdx
	popq	%rax
	jmp	_http_parser__n_error_4 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_4
_http_parser__n_error_4:                ## @http_parser__n_error_4
	.cfi_startproc
## %bb.0:
	movl	$12, 24(%rdi)
	leaq	_g_cstr_8(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_chunk_size_otherwise
_http_parser__n_chunk_size_otherwise:   ## @http_parser__n_chunk_size_otherwise
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB30_7
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$13, %cl
	je	LBB30_5
## %bb.2:                               ## %has_data
	cmpb	$32, %cl
	je	LBB30_6
## %bb.3:                               ## %has_data
	cmpb	$59, %cl
	jne	LBB30_4
LBB30_6:                                ## %http_parser__n_chunk_parameters.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_chunk_parameters ## TAILCALL
LBB30_7:                                ## %no_data
	leaq	_http_parser__n_chunk_size_otherwise(%rip), %rax
	popq	%rcx
	retq
LBB30_5:                                ## %http_parser__n_chunk_size_almost_done.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_chunk_size_almost_done ## TAILCALL
LBB30_4:                                ## %http_parser__n_error_7.trampoline
	popq	%rax
	jmp	_http_parser__n_error_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_chunk_size_almost_done
_http_parser__n_chunk_size_almost_done: ## @http_parser__n_chunk_size_almost_done
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	%rdx, %rsi
	je	LBB31_6
## %bb.1:                               ## %http_parser__n_chunk_size_almost_done_lf.trampoline
	incq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__on_chunk_header
	testl	%eax, %eax
	je	LBB31_4
## %bb.2:                               ## %http_parser__n_chunk_size_almost_done_lf.trampoline
	cmpl	$20, %eax
	je	LBB31_5
## %bb.3:                               ## %http_parser__n_error_5.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_5 ## TAILCALL
LBB31_6:                                ## %no_data
	leaq	_http_parser__n_chunk_size_almost_done(%rip), %rax
LBB31_7:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB31_4:                                ## %http_parser__n_invoke_is_equal_content_length.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_is_equal_content_length ## TAILCALL
LBB31_5:                                ## %http_parser__n_invoke_http_parser__on_chunk_header.exit
	movl	$20, 24(%r14)
	leaq	_g_cstr_9(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_invoke_is_equal_content_length(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB31_7
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_is_equal_content_length
_http_parser__n_invoke_is_equal_content_length: ## @http_parser__n_invoke_is_equal_content_length
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, 64(%rdi)
	jne	LBB32_2
## %bb.1:                               ## %http_parser__n_invoke_or_flags.trampoline
	orb	$-128, 77(%rdi)
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB32_2:                                ## %http_parser__n_chunk_data.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_body ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_body
_http_parser__n_span_start_http_parser__on_body: ## @http_parser__n_span_start_http_parser__on_body
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB33_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_body@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_consume_content_length ## TAILCALL
LBB33_1:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_body(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_consume_content_length
_http_parser__n_consume_content_length: ## @http_parser__n_consume_content_length
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	64(%rdi), %rax
	subq	%rsi, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	ja	LBB34_3
## %bb.1:                               ## %has_data
	andq	$0, 64(%rbx)
	addq	%rax, %r14
	movq	8(%rbx), %rsi
	andq	$0, 8(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_http_parser__on_body
	testl	%eax, %eax
	jne	LBB34_2
## %bb.5:                               ## %http_parser__n_chunk_data_almost_done.trampoline.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_chunk_data_almost_done ## TAILCALL
LBB34_3:                                ## %no_data
	movq	%rcx, 64(%rbx)
	leaq	_http_parser__n_consume_content_length(%rip), %rax
	jmp	LBB34_4
LBB34_2:                                ## %http_parser__n_span_end_http_parser__on_body.exit
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, 40(%rbx)
	leaq	_http_parser__n_chunk_data_almost_done(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
LBB34_4:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_chunk_data_almost_done
_http_parser__n_chunk_data_almost_done: ## @http_parser__n_chunk_data_almost_done
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB35_1
## %bb.2:                               ## %http_parser__n_chunk_data_almost_done_skip.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_chunk_data_almost_done_skip ## TAILCALL
LBB35_1:                                ## %no_data
	leaq	_http_parser__n_chunk_data_almost_done(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_chunk_data_almost_done_skip
_http_parser__n_chunk_data_almost_done_skip: ## @http_parser__n_chunk_data_almost_done_skip
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	%rdx, %rsi
	je	LBB36_6
## %bb.1:                               ## %http_parser__n_chunk_complete.trampoline
	incq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__on_chunk_complete
	testl	%eax, %eax
	je	LBB36_4
## %bb.2:                               ## %http_parser__n_chunk_complete.trampoline
	cmpl	$20, %eax
	je	LBB36_5
## %bb.3:                               ## %http_parser__n_error_6.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_6 ## TAILCALL
LBB36_6:                                ## %no_data
	leaq	_http_parser__n_chunk_data_almost_done_skip(%rip), %rax
LBB36_7:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB36_4:                                ## %http_parser__n_chunk_size_start.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_update_content_length ## TAILCALL
LBB36_5:                                ## %http_parser__n_invoke_http_parser__on_chunk_complete.exit
	movl	$20, 24(%r14)
	leaq	_g_cstr_5(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_chunk_size_start(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB36_7
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_chunk_size_start
_http_parser__n_chunk_size_start:       ## @http_parser__n_chunk_size_start
	.cfi_startproc
## %bb.0:                               ## %http_parser__n_invoke_update_content_length.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	jmp	_http_parser__n_invoke_update_content_length ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_6
_http_parser__n_error_6:                ## @http_parser__n_error_6
	.cfi_startproc
## %bb.0:
	movl	$19, 24(%rdi)
	leaq	_g_cstr_6(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_5
_http_parser__n_error_5:                ## @http_parser__n_error_5
	.cfi_startproc
## %bb.0:
	movl	$18, 24(%rdi)
	leaq	_g_cstr_10(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_chunk_parameters
_http_parser__n_chunk_parameters:       ## @http_parser__n_chunk_parameters
	.cfi_startproc
## %bb.0:
LBB40_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB40_4
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB40_1 Depth=1
	cmpb	$13, (%rsi)
	leaq	1(%rsi), %rsi
	jne	LBB40_1
## %bb.3:                               ## %http_parser__n_chunk_size_almost_done.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	jmp	_http_parser__n_chunk_size_almost_done ## TAILCALL
LBB40_4:                                ## %no_data
	leaq	_http_parser__n_chunk_parameters(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_7
_http_parser__n_error_7:                ## @http_parser__n_error_7
	.cfi_startproc
## %bb.0:
	movl	$12, 24(%rdi)
	leaq	_g_cstr_11(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_body_1
_http_parser__n_span_start_http_parser__on_body_1: ## @http_parser__n_span_start_http_parser__on_body_1
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB42_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_body@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_consume_content_length_1 ## TAILCALL
LBB42_1:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_body_1(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_consume_content_length_1
_http_parser__n_consume_content_length_1: ## @http_parser__n_consume_content_length_1
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	64(%rdi), %rax
	subq	%rsi, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	ja	LBB43_3
## %bb.1:                               ## %has_data
	andq	$0, 64(%rbx)
	addq	%rax, %r14
	movq	8(%rbx), %rsi
	andq	$0, 8(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_http_parser__on_body
	testl	%eax, %eax
	jne	LBB43_2
## %bb.5:                               ## %http_parser__n_message_done.trampoline.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_http_parser__on_message_complete_2 ## TAILCALL
LBB43_3:                                ## %no_data
	movq	%rcx, 64(%rbx)
	leaq	_http_parser__n_consume_content_length_1(%rip), %rax
	jmp	LBB43_4
LBB43_2:                                ## %http_parser__n_span_end_http_parser__on_body_1.exit
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, 40(%rbx)
	leaq	_http_parser__n_message_done(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
LBB43_4:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_body_2
_http_parser__n_span_start_http_parser__on_body_2: ## @http_parser__n_span_start_http_parser__on_body_2
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB44_2
## %bb.1:                               ## %has_data
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_body@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	movb	$1, 82(%rdi)
	leaq	_http_parser__n_eof(%rip), %rax
	retq
LBB44_2:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_body_2(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_eof
_http_parser__n_eof:                    ## @http_parser__n_eof
	.cfi_startproc
## %bb.0:                               ## %no_data
	leaq	_http_parser__n_eof(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_2
_http_parser__n_error_2:                ## @http_parser__n_error_2
	.cfi_startproc
## %bb.0:
	movl	$17, 24(%rdi)
	leaq	_g_cstr_4(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_headers_done
_http_parser__n_headers_done:           ## @http_parser__n_headers_done
	.cfi_startproc
## %bb.0:                               ## %http_parser__n_invoke_http_parser__after_headers_complete.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	jmp	_http_parser__n_invoke_http_parser__after_headers_complete ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_1
_http_parser__n_error_1:                ## @http_parser__n_error_1
	.cfi_startproc
## %bb.0:
	movl	$16, 24(%rdi)
	leaq	_g_cstr_13(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_header_field
_http_parser__n_span_start_http_parser__on_header_field: ## @http_parser__n_span_start_http_parser__on_header_field
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB49_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_header_field@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_header_field ## TAILCALL
LBB49_1:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_header_field(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field
_http_parser__n_header_field:           ## @http_parser__n_header_field
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB50_10
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	orb	$32, %cl
	cmpb	$99, %cl
	je	LBB50_6
## %bb.2:                               ## %has_data
	cmpb	$112, %cl
	je	LBB50_7
## %bb.3:                               ## %has_data
	cmpb	$116, %cl
	je	LBB50_8
## %bb.4:                               ## %has_data
	cmpb	$117, %cl
	jne	LBB50_5
## %bb.9:                               ## %http_parser__n_header_field_7.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_7 ## TAILCALL
LBB50_10:                               ## %no_data
	leaq	_http_parser__n_header_field(%rip), %rax
	popq	%rcx
	retq
LBB50_6:                                ## %http_parser__n_header_field_1.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_1 ## TAILCALL
LBB50_7:                                ## %http_parser__n_header_field_5.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_5 ## TAILCALL
LBB50_8:                                ## %http_parser__n_header_field_6.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_6 ## TAILCALL
LBB50_5:                                ## %http_parser__n_invoke_update_header_state_7.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_1
_http_parser__n_header_field_1:         ## @http_parser__n_header_field_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB51_10
## %bb.1:                               ## %has_data
	movl	(%rdi), %r9d
	leaq	_g_blob_1(%rip), %r8
LBB51_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %al
	orb	$32, %al
	movslq	%r9d, %rcx
	cmpb	(%rcx,%r8), %al
	jne	LBB51_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB51_2 Depth=1
	cmpl	$1, %r9d
	je	LBB51_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB51_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%r9d
	cmpq	%rax, %rdx
	jne	LBB51_2
## %bb.7:
	movb	$1, %al
	jmp	LBB51_8
LBB51_3:
	movb	$2, %al
	xorl	%r9d, %r9d
	jmp	LBB51_8
LBB51_5:
	xorl	%r9d, %r9d
	xorl	%eax, %eax
LBB51_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r9d, (%rdi)
	andb	$3, %al
	cmpb	$2, %al
	je	LBB51_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %al
	je	LBB51_10
## %bb.12:                              ## %http_parser__n_header_field_2.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_2 ## TAILCALL
LBB51_10:                               ## %pause
	leaq	_http_parser__n_header_field_1(%rip), %rax
	popq	%rcx
	retq
LBB51_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_2
_http_parser__n_header_field_2:         ## @http_parser__n_header_field_2
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB52_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	orb	$32, %cl
	cmpb	$110, %cl
	je	LBB52_4
## %bb.2:                               ## %has_data
	cmpb	$116, %cl
	jne	LBB52_3
## %bb.5:                               ## %http_parser__n_header_field_4.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_4 ## TAILCALL
LBB52_6:                                ## %no_data
	leaq	_http_parser__n_header_field_2(%rip), %rax
	popq	%rcx
	retq
LBB52_4:                                ## %http_parser__n_header_field_3.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_3 ## TAILCALL
LBB52_3:                                ## %http_parser__n_invoke_update_header_state_7.trampoline
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_3
_http_parser__n_header_field_3:         ## @http_parser__n_header_field_3
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB53_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_2(%rip), %r10
	xorl	%eax, %eax
LBB53_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB53_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB53_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB53_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB53_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB53_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB53_8
LBB53_3:
	movb	$2, %r9b
	jmp	LBB53_8
LBB53_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB53_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB53_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB53_10
## %bb.12:                              ## %http_parser__n_invoke_store_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$2
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB53_10:                               ## %pause
	leaq	_http_parser__n_header_field_3(%rip), %rax
	popq	%rbx
	retq
LBB53_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_store_header_state
_http_parser__n_invoke_store_header_state: ## @http_parser__n_invoke_store_header_state
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	%cl, 76(%rdi)
	popq	%rax
	jmp	_http_parser__n_header_field_colon ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_colon
_http_parser__n_header_field_colon:     ## @http_parser__n_header_field_colon
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
LBB55_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %r15
	je	LBB55_6
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB55_1 Depth=1
	movb	(%rbx), %al
	incq	%rbx
	cmpb	$32, %al
	je	LBB55_1
## %bb.3:                               ## %has_data
	cmpb	$58, %al
	jne	LBB55_8
## %bb.4:                               ## %http_parser__n_span_end_http_parser__on_header_field.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	leaq	-1(%rbx), %rdx
	movq	%r14, %rdi
	callq	_http_parser__on_header_field
	testl	%eax, %eax
	jne	LBB55_5
## %bb.9:                               ## %http_parser__n_header_value_discard_ws.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_value_discard_ws ## TAILCALL
LBB55_8:                                ## %http_parser__n_invoke_update_header_state_6.trampoline
	movb	$0, 76(%r14)
	decq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_field_general ## TAILCALL
LBB55_6:                                ## %no_data
	leaq	_http_parser__n_header_field_colon(%rip), %rax
LBB55_7:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB55_5:                                ## %http_parser__n_span_end_http_parser__on_header_field.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_header_value_discard_ws(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB55_7
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_discard_ws
_http_parser__n_header_value_discard_ws: ## @http_parser__n_header_value_discard_ws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB56_6
LBB56_1:                                ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %al
	cmpb	$9, %al
	je	LBB56_5
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB56_1 Depth=1
	cmpb	$10, %al
	je	LBB56_7
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB56_1 Depth=1
	cmpb	$13, %al
	je	LBB56_8
## %bb.4:                               ## %has_data
                                        ##   in Loop: Header=BB56_1 Depth=1
	cmpb	$32, %al
	jne	LBB56_9
LBB56_5:                                ## %http_parser__n_header_value_discard_ws.trampoline
                                        ##   in Loop: Header=BB56_1 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	LBB56_1
LBB56_6:                                ## %no_data
	leaq	_http_parser__n_header_value_discard_ws(%rip), %rax
	popq	%rcx
	retq
LBB56_7:                                ## %http_parser__n_header_value_discard_lws.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_lws ## TAILCALL
LBB56_8:                                ## %http_parser__n_header_value_discard_ws_almost_done.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_ws_almost_done ## TAILCALL
LBB56_9:                                ## %http_parser__n_span_start_http_parser__on_header_value_1.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_header_value_1 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_discard_lws
_http_parser__n_header_value_discard_lws: ## @http_parser__n_header_value_discard_lws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB57_11
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	cmpb	$9, %al
	je	LBB57_10
## %bb.2:                               ## %has_data
	cmpb	$32, %al
	jne	LBB57_3
LBB57_10:                               ## %http_parser__n_header_value_discard_ws.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_ws ## TAILCALL
LBB57_11:                               ## %no_data
	leaq	_http_parser__n_header_value_discard_lws(%rip), %rax
	popq	%rcx
	retq
LBB57_3:                                ## %http_parser__n_invoke_load_header_state.trampoline
	movb	76(%rdi), %al
	addb	$-6, %al
	cmpb	$3, %al
	ja	LBB57_9
## %bb.4:                               ## %http_parser__n_invoke_load_header_state.trampoline
	movzbl	%al, %eax
	leaq	LJTI57_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB57_5:                                ## %http_parser__n_invoke_or_flags_2.trampoline.i
	orb	$1, 77(%rdi)
	jmp	LBB57_9
LBB57_6:                                ## %http_parser__n_invoke_or_flags_3.trampoline.i
	orb	$2, 77(%rdi)
	jmp	LBB57_9
LBB57_7:                                ## %http_parser__n_invoke_or_flags_4.trampoline.i
	orb	$4, 77(%rdi)
	jmp	LBB57_9
LBB57_8:                                ## %http_parser__n_invoke_or_flags_5.trampoline.i
	orb	$8, 77(%rdi)
LBB57_9:                                ## %http_parser__n_span_start_http_parser__on_header_value.trampoline.i
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_header_value ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L57_0_set_5 = LBB57_5-LJTI57_0
L57_0_set_6 = LBB57_6-LJTI57_0
L57_0_set_7 = LBB57_7-LJTI57_0
L57_0_set_8 = LBB57_8-LJTI57_0
LJTI57_0:
	.long	L57_0_set_5
	.long	L57_0_set_6
	.long	L57_0_set_7
	.long	L57_0_set_8
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_header_value
_http_parser__n_span_start_http_parser__on_header_value: ## @http_parser__n_span_start_http_parser__on_header_value
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	%rdx, %rsi
	je	LBB58_3
## %bb.1:                               ## %has_data
	movq	_http_parser__on_header_value@GOTPCREL(%rip), %rax
	movq	%rax, 16(%r14)
	andq	$0, 8(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB58_2
## %bb.5:                               ## %http_parser__n_header_field_start.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB58_3:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_header_value(%rip), %rax
LBB58_4:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB58_2:                                ## %http_parser__n_span_end_http_parser__on_header_value.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_header_field_start(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB58_4
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_discard_ws_almost_done
_http_parser__n_header_value_discard_ws_almost_done: ## @http_parser__n_header_value_discard_ws_almost_done
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB59_1
## %bb.2:                               ## %http_parser__n_header_value_discard_lws.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_lws ## TAILCALL
LBB59_1:                                ## %no_data
	leaq	_http_parser__n_header_value_discard_ws_almost_done(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_header_value_1
_http_parser__n_span_start_http_parser__on_header_value_1: ## @http_parser__n_span_start_http_parser__on_header_value_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB60_9
## %bb.1:                               ## %has_data
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_header_value@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	movb	76(%rdi), %al
	addb	$-2, %al
	cmpb	$3, %al
	ja	LBB60_3
## %bb.2:                               ## %has_data
	movzbl	%al, %eax
	leaq	LJTI60_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB60_4:                                ## %http_parser__n_header_value_connection.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value_connection ## TAILCALL
LBB60_9:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_header_value_1(%rip), %rax
	popq	%rcx
	retq
LBB60_5:                                ## %http_parser__n_header_value_content_length_once.trampoline.i
	testb	$32, 77(%rdi)
	jne	LBB60_10
## %bb.6:                               ## %http_parser__n_header_value_content_length.trampoline.i.i
	popq	%rax
	jmp	_http_parser__n_header_value_content_length ## TAILCALL
LBB60_7:                                ## %http_parser__n_header_value_te_chunked.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value_te_chunked ## TAILCALL
LBB60_8:                                ## %http_parser__n_invoke_or_flags_15.trampoline.i
	orb	$16, 77(%rdi)
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_4 ## TAILCALL
LBB60_3:                                ## %http_parser__n_header_value.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value ## TAILCALL
LBB60_10:                               ## %http_parser__n_error_13.trampoline.i.i
	popq	%rax
	jmp	_http_parser__n_error_13 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L60_0_set_4 = LBB60_4-LJTI60_0
L60_0_set_5 = LBB60_5-LJTI60_0
L60_0_set_7 = LBB60_7-LJTI60_0
L60_0_set_8 = LBB60_8-LJTI60_0
LJTI60_0:
	.long	L60_0_set_4
	.long	L60_0_set_5
	.long	L60_0_set_7
	.long	L60_0_set_8
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_connection
_http_parser__n_header_value_connection: ## @http_parser__n_header_value_connection
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$32, %cl
LBB61_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB61_10
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB61_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	orb	$32, %al
	cmpb	%cl, %al
	je	LBB61_1
## %bb.3:                               ## %has_data
	cmpb	$99, %al
	je	LBB61_7
## %bb.4:                               ## %has_data
	cmpb	$107, %al
	je	LBB61_8
## %bb.5:                               ## %has_data
	cmpb	$117, %al
	jne	LBB61_6
## %bb.9:                               ## %http_parser__n_header_value_connection_3.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection_3 ## TAILCALL
LBB61_7:                                ## %http_parser__n_header_value_connection_1.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection_1 ## TAILCALL
LBB61_8:                                ## %http_parser__n_header_value_connection_2.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection_2 ## TAILCALL
LBB61_6:                                ## %http_parser__n_header_value_connection_token.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_connection_token ## TAILCALL
LBB61_10:                               ## %no_data
	leaq	_http_parser__n_header_value_connection(%rip), %rax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_connection_1
_http_parser__n_header_value_connection_1: ## @http_parser__n_header_value_connection_1
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB62_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_3(%rip), %r10
	xorl	%eax, %eax
LBB62_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB62_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB62_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB62_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB62_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB62_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB62_8
LBB62_3:
	movb	$2, %r9b
	jmp	LBB62_8
LBB62_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB62_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB62_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB62_10
## %bb.12:                              ## %http_parser__n_invoke_update_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$7, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_ws ## TAILCALL
LBB62_10:                               ## %pause
	leaq	_http_parser__n_header_value_connection_1(%rip), %rax
	popq	%rbx
	retq
LBB62_11:                               ## %http_parser__n_header_value_connection_token.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_token ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_connection_ws
_http_parser__n_header_value_connection_ws: ## @http_parser__n_header_value_connection_ws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
LBB63_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB63_15
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB63_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	cmpb	$10, %al
	je	LBB63_7
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB63_1 Depth=1
	cmpb	$13, %al
	je	LBB63_7
## %bb.4:                               ## %has_data
                                        ##   in Loop: Header=BB63_1 Depth=1
	cmpb	$32, %al
	je	LBB63_1
## %bb.5:                               ## %has_data
	cmpb	$44, %al
	jne	LBB63_6
## %bb.8:                               ## %http_parser__n_invoke_load_header_state_3.trampoline
	movb	76(%rdi), %al
	addb	$-6, %al
	cmpb	$3, %al
	ja	LBB63_14
## %bb.9:                               ## %http_parser__n_invoke_load_header_state_3.trampoline
	movzbl	%al, %eax
	leaq	LJTI63_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB63_10:                               ## %http_parser__n_invoke_or_flags_10.trampoline.i
	orb	$1, 77(%rdi)
	jmp	LBB63_14
LBB63_7:                                ## %http_parser__n_header_value_otherwise.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB63_6:                                ## %http_parser__n_invoke_update_header_state_1.trampoline
	movb	$0, 76(%rdi)
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_connection_token ## TAILCALL
LBB63_11:                               ## %http_parser__n_invoke_or_flags_11.trampoline.i
	orb	$2, 77(%rdi)
	jmp	LBB63_14
LBB63_12:                               ## %http_parser__n_invoke_or_flags_12.trampoline.i
	orb	$4, 77(%rdi)
	jmp	LBB63_14
LBB63_13:                               ## %http_parser__n_invoke_or_flags_13.trampoline.i
	orb	$8, 77(%rdi)
LBB63_14:                               ## %http_parser__n_header_value_connection.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value_connection ## TAILCALL
LBB63_15:                               ## %no_data
	leaq	_http_parser__n_header_value_connection_ws(%rip), %rax
	popq	%rcx
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L63_0_set_10 = LBB63_10-LJTI63_0
L63_0_set_11 = LBB63_11-LJTI63_0
L63_0_set_12 = LBB63_12-LJTI63_0
L63_0_set_13 = LBB63_13-LJTI63_0
LJTI63_0:
	.long	L63_0_set_10
	.long	L63_0_set_11
	.long	L63_0_set_12
	.long	L63_0_set_13
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_otherwise
_http_parser__n_header_value_otherwise: ## @http_parser__n_header_value_otherwise
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpq	%rdx, %rsi
	je	LBB64_12
## %bb.1:                               ## %has_data
	movb	(%rbx), %al
	cmpb	$10, %al
	je	LBB64_4
## %bb.2:                               ## %has_data
	cmpb	$13, %al
	jne	LBB64_3
## %bb.9:                               ## %http_parser__n_span_end_http_parser__on_header_value_2.trampoline
	movq	8(%r15), %rsi
	andq	$0, 8(%r15)
	leaq	1(%rbx), %r12
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB64_11
## %bb.10:                              ## %http_parser__n_header_value_almost_done.trampoline.i1
	movq	%r15, %rdi
	movq	%r12, %rsi
	jmp	LBB64_6
LBB64_12:                               ## %no_data
	leaq	_http_parser__n_header_value_otherwise(%rip), %rax
LBB64_13:                               ## %no_data
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
LBB64_4:                                ## %http_parser__n_span_end_http_parser__on_header_value_1.trampoline
	movq	8(%r15), %rsi
	andq	$0, 8(%r15)
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB64_7
## %bb.5:                               ## %http_parser__n_header_value_almost_done.trampoline.i
	movq	%r15, %rdi
	movq	%rbx, %rsi
LBB64_6:                                ## %http_parser__n_header_value_almost_done.trampoline.i
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_value_almost_done ## TAILCALL
LBB64_3:                                ## %http_parser__n_error_12.trampoline
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_12 ## TAILCALL
LBB64_11:                               ## %http_parser__n_span_end_http_parser__on_header_value_2.exit
	movl	%eax, 24(%r15)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r15)
	movq	%r12, 40(%r15)
	jmp	LBB64_8
LBB64_7:                                ## %http_parser__n_span_end_http_parser__on_header_value_1.exit
	movl	%eax, 24(%r15)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r15)
	movq	%rbx, 40(%r15)
LBB64_8:                                ## %http_parser__n_span_end_http_parser__on_header_value_1.exit
	leaq	_http_parser__n_header_value_almost_done(%rip), %rax
	movq	%rax, 56(%r15)
	xorl	%eax, %eax
	jmp	LBB64_13
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_almost_done
_http_parser__n_header_value_almost_done: ## @http_parser__n_header_value_almost_done
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB65_3
## %bb.1:                               ## %has_data
	cmpb	$10, (%rsi)
	jne	LBB65_4
## %bb.2:                               ## %http_parser__n_header_value_lws.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_lws ## TAILCALL
LBB65_3:                                ## %no_data
	leaq	_http_parser__n_header_value_almost_done(%rip), %rax
	popq	%rcx
	retq
LBB65_4:                                ## %http_parser__n_error_11.trampoline
	popq	%rax
	jmp	_http_parser__n_error_11 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_lws
_http_parser__n_header_value_lws:       ## @http_parser__n_header_value_lws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB66_11
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	cmpb	$9, %al
	je	LBB66_10
## %bb.2:                               ## %has_data
	cmpb	$32, %al
	jne	LBB66_3
LBB66_10:                               ## %http_parser__n_span_start_http_parser__on_header_value_1.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_header_value_1 ## TAILCALL
LBB66_11:                               ## %no_data
	leaq	_http_parser__n_header_value_lws(%rip), %rax
	popq	%rcx
	retq
LBB66_3:                                ## %http_parser__n_invoke_load_header_state_2.trampoline
	movb	76(%rdi), %al
	addb	$-6, %al
	cmpb	$3, %al
	ja	LBB66_9
## %bb.4:                               ## %http_parser__n_invoke_load_header_state_2.trampoline
	movzbl	%al, %eax
	leaq	LJTI66_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB66_5:                                ## %http_parser__n_invoke_or_flags_6.trampoline.i
	orb	$1, 77(%rdi)
	jmp	LBB66_9
LBB66_6:                                ## %http_parser__n_invoke_or_flags_7.trampoline.i
	orb	$2, 77(%rdi)
	jmp	LBB66_9
LBB66_7:                                ## %http_parser__n_invoke_or_flags_8.trampoline.i
	orb	$4, 77(%rdi)
	jmp	LBB66_9
LBB66_8:                                ## %http_parser__n_invoke_or_flags_9.trampoline.i
	orb	$8, 77(%rdi)
LBB66_9:                                ## %http_parser__n_header_field_start.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L66_0_set_5 = LBB66_5-LJTI66_0
L66_0_set_6 = LBB66_6-LJTI66_0
L66_0_set_7 = LBB66_7-LJTI66_0
L66_0_set_8 = LBB66_8-LJTI66_0
LJTI66_0:
	.long	L66_0_set_5
	.long	L66_0_set_6
	.long	L66_0_set_7
	.long	L66_0_set_8
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_11
_http_parser__n_error_11:               ## @http_parser__n_error_11
	.cfi_startproc
## %bb.0:
	movl	$3, 24(%rdi)
	leaq	_g_cstr_14(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_12
_http_parser__n_error_12:               ## @http_parser__n_error_12
	.cfi_startproc
## %bb.0:
	movl	$10, 24(%rdi)
	leaq	_g_cstr_15(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_connection_token
_http_parser__n_header_value_connection_token: ## @http_parser__n_header_value_connection_token
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_g_lookup_table_2(%rip), %rax
LBB69_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB69_5
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB69_1 Depth=1
	movzbl	(%rsi), %ecx
	incq	%rsi
	movb	(%rcx,%rax), %cl
	cmpb	$1, %cl
	je	LBB69_1
## %bb.3:                               ## %has_data
	cmpb	$2, %cl
	jne	LBB69_6
## %bb.4:                               ## %http_parser__n_header_value_connection.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection ## TAILCALL
LBB69_6:                                ## %http_parser__n_header_value_otherwise.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB69_5:                                ## %no_data
	leaq	_http_parser__n_header_value_connection_token(%rip), %rax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_connection_2
_http_parser__n_header_value_connection_2: ## @http_parser__n_header_value_connection_2
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB70_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_4(%rip), %r10
	xorl	%eax, %eax
LBB70_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB70_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB70_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$8, %eax
	je	LBB70_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB70_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB70_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB70_8
LBB70_3:
	movb	$2, %r9b
	jmp	LBB70_8
LBB70_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB70_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB70_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB70_10
## %bb.12:                              ## %http_parser__n_invoke_update_header_state_2.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$6, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_ws ## TAILCALL
LBB70_10:                               ## %pause
	leaq	_http_parser__n_header_value_connection_2(%rip), %rax
	popq	%rbx
	retq
LBB70_11:                               ## %http_parser__n_header_value_connection_token.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_token ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_connection_3
_http_parser__n_header_value_connection_3: ## @http_parser__n_header_value_connection_3
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB71_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_10(%rip), %r10
	xorl	%eax, %eax
LBB71_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB71_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB71_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB71_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB71_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB71_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB71_8
LBB71_3:
	movb	$2, %r9b
	jmp	LBB71_8
LBB71_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB71_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB71_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB71_10
## %bb.12:                              ## %http_parser__n_invoke_update_header_state_3.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$8, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_ws ## TAILCALL
LBB71_10:                               ## %pause
	leaq	_http_parser__n_header_value_connection_3(%rip), %rax
	popq	%rbx
	retq
LBB71_11:                               ## %http_parser__n_header_value_connection_token.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_token ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_content_length
_http_parser__n_header_value_content_length: ## @http_parser__n_header_value_content_length
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	%rdx, %rsi
	je	LBB72_13
## %bb.1:                               ## %has_data.lr.ph
	leaq	LJTI72_0(%rip), %rcx
	pushq	$10
	.cfi_adjust_cfa_offset 8
	popq	%rsi
	.cfi_adjust_cfa_offset -8
	pushq	$3
	.cfi_adjust_cfa_offset 8
	popq	%r10
	.cfi_adjust_cfa_offset -8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	popq	%r11
	.cfi_adjust_cfa_offset -8
	pushq	$5
	.cfi_adjust_cfa_offset 8
	popq	%r12
	.cfi_adjust_cfa_offset -8
	pushq	$6
	.cfi_adjust_cfa_offset 8
	popq	%r13
	.cfi_adjust_cfa_offset -8
	pushq	$7
	.cfi_adjust_cfa_offset 8
	popq	%rdi
	.cfi_adjust_cfa_offset -8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	popq	%rbp
	.cfi_adjust_cfa_offset -8
	pushq	$9
	.cfi_adjust_cfa_offset 8
	popq	%r9
	.cfi_adjust_cfa_offset -8
LBB72_2:                                ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rbx), %al
	movl	%eax, %edx
	addb	$-32, %dl
	cmpb	$25, %dl
	ja	LBB72_3
## %bb.25:                              ## %has_data
                                        ##   in Loop: Header=BB72_2 Depth=1
	movzbl	%dl, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	xorl	%r8d, %r8d
	jmpq	*%rax
LBB72_9:                                ## %case_49
                                        ##   in Loop: Header=BB72_2 Depth=1
	pushq	$1
	.cfi_adjust_cfa_offset 8
	popq	%r8
	.cfi_adjust_cfa_offset -8
	jmp	LBB72_10
LBB72_23:                               ## %case_56
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	%rbp, %r8
	jmp	LBB72_10
LBB72_21:                               ## %case_54
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	%r13, %r8
	jmp	LBB72_10
LBB72_17:                               ## %case_50
                                        ##   in Loop: Header=BB72_2 Depth=1
	pushq	$2
	.cfi_adjust_cfa_offset 8
	popq	%r8
	.cfi_adjust_cfa_offset -8
	jmp	LBB72_10
LBB72_19:                               ## %case_52
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	%r11, %r8
	jmp	LBB72_10
LBB72_18:                               ## %case_51
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	%r10, %r8
	jmp	LBB72_10
LBB72_20:                               ## %case_53
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	%r12, %r8
	jmp	LBB72_10
LBB72_22:                               ## %case_55
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	%rdi, %r8
	jmp	LBB72_10
LBB72_24:                               ## %case_57
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	%r9, %r8
LBB72_10:                               ## %http_parser__n_invoke_mul_add_content_length_1.trampoline
                                        ##   in Loop: Header=BB72_2 Depth=1
	movq	64(%r14), %rax
	mulq	%rsi
	jo	LBB72_15
## %bb.11:                              ## %no_overflow.i.i
                                        ##   in Loop: Header=BB72_2 Depth=1
	addq	%r8, %rax
	jb	LBB72_15
## %bb.12:                              ## %http_parser__n_header_value_content_length.trampoline.i
                                        ##   in Loop: Header=BB72_2 Depth=1
	incq	%rbx
	movq	%rax, 64(%r14)
	cmpq	%rbx, %r15
	jne	LBB72_2
LBB72_13:                               ## %no_data
	leaq	_http_parser__n_header_value_content_length(%rip), %rax
LBB72_14:                               ## %no_data
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB72_3:                                ## %has_data
	cmpb	$10, %al
	je	LBB72_8
## %bb.4:                               ## %has_data
	cmpb	$13, %al
	jne	LBB72_5
LBB72_8:                                ## %http_parser__n_invoke_or_flags_14.trampoline
	orb	$32, 77(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_http_parser__n_header_value_discard_rws ## TAILCALL
LBB72_5:                                ## %http_parser__n_span_end_http_parser__on_header_value_4.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB72_6
## %bb.26:                              ## %http_parser__n_error_15.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_http_parser__n_error_15 ## TAILCALL
LBB72_15:                               ## %http_parser__n_span_end_http_parser__on_header_value_3.trampoline.i
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	incq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB72_16
## %bb.27:                              ## %http_parser__n_error_14.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_http_parser__n_error_14 ## TAILCALL
LBB72_6:                                ## %http_parser__n_span_end_http_parser__on_header_value_4.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_error_15(%rip), %rax
LBB72_7:                                ## %http_parser__n_span_end_http_parser__on_header_value_4.exit
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB72_14
LBB72_16:                               ## %http_parser__n_invoke_mul_add_content_length_1.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_error_14(%rip), %rax
	jmp	LBB72_7
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L72_0_set_8 = LBB72_8-LJTI72_0
L72_0_set_5 = LBB72_5-LJTI72_0
L72_0_set_10 = LBB72_10-LJTI72_0
L72_0_set_9 = LBB72_9-LJTI72_0
L72_0_set_17 = LBB72_17-LJTI72_0
L72_0_set_18 = LBB72_18-LJTI72_0
L72_0_set_19 = LBB72_19-LJTI72_0
L72_0_set_20 = LBB72_20-LJTI72_0
L72_0_set_21 = LBB72_21-LJTI72_0
L72_0_set_22 = LBB72_22-LJTI72_0
L72_0_set_23 = LBB72_23-LJTI72_0
L72_0_set_24 = LBB72_24-LJTI72_0
LJTI72_0:
	.long	L72_0_set_8
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_5
	.long	L72_0_set_10
	.long	L72_0_set_9
	.long	L72_0_set_17
	.long	L72_0_set_18
	.long	L72_0_set_19
	.long	L72_0_set_20
	.long	L72_0_set_21
	.long	L72_0_set_22
	.long	L72_0_set_23
	.long	L72_0_set_24
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_discard_rws
_http_parser__n_header_value_discard_rws: ## @http_parser__n_header_value_discard_rws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
LBB73_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB73_7
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB73_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	cmpb	$10, %al
	je	LBB73_6
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB73_1 Depth=1
	cmpb	$13, %al
	je	LBB73_6
## %bb.4:                               ## %has_data
                                        ##   in Loop: Header=BB73_1 Depth=1
	cmpb	$32, %al
	je	LBB73_1
## %bb.5:                               ## %http_parser__n_invoke_update_header_state_4.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_4 ## TAILCALL
LBB73_6:                                ## %http_parser__n_header_value_otherwise.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB73_7:                                ## %no_data
	leaq	_http_parser__n_header_value_discard_rws(%rip), %rax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_update_header_state_4
_http_parser__n_invoke_update_header_state_4: ## @http_parser__n_invoke_update_header_state_4
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$0, 76(%rdi)
	popq	%rax
	jmp	_http_parser__n_header_value ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value
_http_parser__n_header_value:           ## @http_parser__n_header_value
	.cfi_startproc
## %bb.0:
	leaq	_g_lookup_table_3(%rip), %rax
LBB75_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB75_4
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB75_1 Depth=1
	movzbl	(%rsi), %ecx
	incq	%rsi
	cmpb	$1, (%rcx,%rax)
	je	LBB75_1
## %bb.3:                               ## %http_parser__n_header_value_otherwise.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB75_4:                                ## %no_data
	leaq	_http_parser__n_header_value(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_14
_http_parser__n_error_14:               ## @http_parser__n_error_14
	.cfi_startproc
## %bb.0:
	movl	$11, 24(%rdi)
	leaq	_g_cstr_16(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_15
_http_parser__n_error_15:               ## @http_parser__n_error_15
	.cfi_startproc
## %bb.0:
	movl	$11, 24(%rdi)
	leaq	_g_cstr_17(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_13
_http_parser__n_error_13:               ## @http_parser__n_error_13
	.cfi_startproc
## %bb.0:
	movl	$4, 24(%rdi)
	leaq	_g_cstr_18(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_te_chunked
_http_parser__n_header_value_te_chunked: ## @http_parser__n_header_value_te_chunked
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB79_6
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	orb	$32, %al
	movb	$32, %cl
	cmpb	%cl, %al
	je	LBB79_4
## %bb.2:                               ## %has_data
	cmpb	$99, %al
	jne	LBB79_3
## %bb.5:                               ## %http_parser__n_header_value_te_chunked_1.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_te_chunked_1 ## TAILCALL
LBB79_6:                                ## %no_data
	leaq	_http_parser__n_header_value_te_chunked(%rip), %rax
	popq	%rcx
	retq
LBB79_4:                                ## %http_parser__n_header_value_discard_rws.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_discard_rws ## TAILCALL
LBB79_3:                                ## %http_parser__n_invoke_update_header_state_4.trampoline
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_4 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_te_chunked_1
_http_parser__n_header_value_te_chunked_1: ## @http_parser__n_header_value_te_chunked_1
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB80_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_6(%rip), %r10
	xorl	%eax, %eax
LBB80_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB80_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB80_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB80_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB80_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB80_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB80_8
LBB80_3:
	movb	$2, %r9b
	jmp	LBB80_8
LBB80_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB80_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB80_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB80_10
## %bb.12:                              ## %http_parser__n_invoke_update_header_state_5.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$9, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_discard_rws ## TAILCALL
LBB80_10:                               ## %pause
	leaq	_http_parser__n_header_value_te_chunked_1(%rip), %rax
	popq	%rbx
	retq
LBB80_11:                               ## %http_parser__n_invoke_update_header_state_4.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_invoke_update_header_state_4 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_general
_http_parser__n_header_field_general:   ## @http_parser__n_header_field_general
	.cfi_startproc
## %bb.0:
	leaq	_g_lookup_table_4(%rip), %rax
LBB81_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB81_4
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB81_1 Depth=1
	movzbl	(%rsi), %ecx
	incq	%rsi
	cmpb	$1, (%rcx,%rax)
	je	LBB81_1
## %bb.3:                               ## %http_parser__n_header_field_general_otherwise.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_general_otherwise ## TAILCALL
LBB81_4:                                ## %no_data
	leaq	_http_parser__n_header_field_general(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_general_otherwise
_http_parser__n_header_field_general_otherwise: ## @http_parser__n_header_field_general_otherwise
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	cmpq	%rdx, %rsi
	je	LBB82_4
## %bb.1:                               ## %has_data
	cmpb	$58, (%rax)
	jne	LBB82_6
## %bb.2:                               ## %http_parser__n_span_end_http_parser__on_header_field_1.trampoline
	leaq	1(%rax), %r15
	movq	8(%rbx), %rsi
	andq	$0, 8(%rbx)
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	_http_parser__on_header_field
	testl	%eax, %eax
	jne	LBB82_3
## %bb.7:                               ## %http_parser__n_header_value_discard_ws.trampoline.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_value_discard_ws ## TAILCALL
LBB82_4:                                ## %no_data
	leaq	_http_parser__n_header_field_general_otherwise(%rip), %rax
LBB82_5:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB82_6:                                ## %http_parser__n_error_16.trampoline
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_16 ## TAILCALL
LBB82_3:                                ## %http_parser__n_span_end_http_parser__on_header_field_1.exit
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r15, 40(%rbx)
	leaq	_http_parser__n_header_value_discard_ws(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
	jmp	LBB82_5
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_16
_http_parser__n_error_16:               ## @http_parser__n_error_16
	.cfi_startproc
## %bb.0:
	movl	$10, 24(%rdi)
	leaq	_g_cstr_19(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_update_header_state_7
_http_parser__n_invoke_update_header_state_7: ## @http_parser__n_invoke_update_header_state_7
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$0, 76(%rdi)
	popq	%rax
	jmp	_http_parser__n_header_field_general ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_4
_http_parser__n_header_field_4:         ## @http_parser__n_header_field_4
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB85_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_7(%rip), %r10
	xorl	%eax, %eax
LBB85_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB85_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB85_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$9, %eax
	je	LBB85_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB85_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB85_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB85_8
LBB85_3:
	movb	$2, %r9b
	jmp	LBB85_8
LBB85_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB85_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB85_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB85_10
## %bb.12:                              ## %http_parser__n_invoke_store_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$3
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB85_10:                               ## %pause
	leaq	_http_parser__n_header_field_4(%rip), %rax
	popq	%rbx
	retq
LBB85_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_5
_http_parser__n_header_field_5:         ## @http_parser__n_header_field_5
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB86_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_8(%rip), %r10
	xorl	%eax, %eax
LBB86_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB86_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB86_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$14, %eax
	je	LBB86_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB86_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB86_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB86_8
LBB86_3:
	movb	$2, %r9b
	jmp	LBB86_8
LBB86_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB86_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB86_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB86_10
## %bb.12:                              ## %http_parser__n_invoke_store_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$1
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB86_10:                               ## %pause
	leaq	_http_parser__n_header_field_5(%rip), %rax
	popq	%rbx
	retq
LBB86_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_6
_http_parser__n_header_field_6:         ## @http_parser__n_header_field_6
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB87_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_9(%rip), %r10
	xorl	%eax, %eax
LBB87_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB87_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB87_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$15, %eax
	je	LBB87_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB87_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB87_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB87_8
LBB87_3:
	movb	$2, %r9b
	jmp	LBB87_8
LBB87_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB87_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB87_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB87_10
## %bb.12:                              ## %http_parser__n_invoke_store_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$4
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB87_10:                               ## %pause
	leaq	_http_parser__n_header_field_6(%rip), %rax
	popq	%rbx
	retq
LBB87_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_field_7
_http_parser__n_header_field_7:         ## @http_parser__n_header_field_7
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB88_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_10(%rip), %r10
	xorl	%eax, %eax
LBB88_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB88_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB88_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB88_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB88_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB88_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB88_8
LBB88_3:
	movb	$2, %r9b
	jmp	LBB88_8
LBB88_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB88_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB88_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB88_10
## %bb.12:                              ## %http_parser__n_invoke_store_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$5
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB88_10:                               ## %pause
	leaq	_http_parser__n_header_field_7(%rip), %rax
	popq	%rbx
	retq
LBB88_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_invoke_update_header_state_7 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_end_http_parser__on_url_1
_http_parser__n_span_end_http_parser__on_url_1: ## @http_parser__n_span_end_http_parser__on_url_1
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	andq	$0, 8(%rdi)
	movq	%r14, %rdx
	callq	_http_parser__on_url
	testl	%eax, %eax
	jne	LBB89_1
## %bb.2:                               ## %http_parser__n_url_skip_lf_to_http09.trampoline
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_url_skip_lf_to_http09 ## TAILCALL
LBB89_1:                                ## %error
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, 40(%rbx)
	leaq	_http_parser__n_url_skip_lf_to_http09(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_skip_lf_to_http09
_http_parser__n_url_skip_lf_to_http09:  ## @http_parser__n_url_skip_lf_to_http09
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB90_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_11(%rip), %r8
LBB90_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB90_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB90_2 Depth=1
	cmpl	$1, %ecx
	je	LBB90_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB90_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB90_2
## %bb.7:
	movb	$1, %al
	jmp	LBB90_8
LBB90_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB90_8
LBB90_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB90_8:                                ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB90_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB90_12
## %bb.10:                              ## %http_parser__n_url_to_http_09.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_invoke_update_http_major ## TAILCALL
LBB90_11:                               ## %pause
	leaq	_http_parser__n_url_skip_lf_to_http09(%rip), %rax
	popq	%rcx
	retq
LBB90_12:                               ## %http_parser__n_error_17.trampoline
	popq	%rax
	jmp	_http_parser__n_error_17 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_17
_http_parser__n_error_17:               ## @http_parser__n_error_17
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_20(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_end_http_parser__on_url_2
_http_parser__n_span_end_http_parser__on_url_2: ## @http_parser__n_span_end_http_parser__on_url_2
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	andq	$0, 8(%rdi)
	movq	%r14, %rdx
	callq	_http_parser__on_url
	testl	%eax, %eax
	jne	LBB92_1
## %bb.2:                               ## %http_parser__n_url_skip_to_http.trampoline
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_url_skip_to_http ## TAILCALL
LBB92_1:                                ## %error
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, 40(%rbx)
	leaq	_http_parser__n_url_skip_to_http(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_skip_to_http
_http_parser__n_url_skip_to_http:       ## @http_parser__n_url_skip_to_http
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB93_1
## %bb.2:                               ## %http_parser__n_url_to_http.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_req_http_start ## TAILCALL
LBB93_1:                                ## %no_data
	leaq	_http_parser__n_url_skip_to_http(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_start
_http_parser__n_req_http_start:         ## @http_parser__n_req_http_start
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
LBB94_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB94_5
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB94_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	cmpb	$32, %al
	je	LBB94_1
## %bb.3:                               ## %has_data
	cmpb	$72, %al
	jne	LBB94_6
## %bb.4:                               ## %http_parser__n_req_http_start_1.trampoline
	popq	%rax
	jmp	_http_parser__n_req_http_start_1 ## TAILCALL
LBB94_5:                                ## %no_data
	leaq	_http_parser__n_req_http_start(%rip), %rax
	popq	%rcx
	retq
LBB94_6:                                ## %http_parser__n_error_22.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_22 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_start_1
_http_parser__n_req_http_start_1:       ## @http_parser__n_req_http_start_1
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB95_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_12(%rip), %r10
	xorl	%eax, %eax
LBB95_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB95_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB95_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB95_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB95_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB95_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB95_8
LBB95_3:
	movb	$2, %r9b
	jmp	LBB95_8
LBB95_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB95_8:                                ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB95_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB95_12
## %bb.10:                              ## %http_parser__n_req_http_major.trampoline
	leaq	1(%rsi,%rcx), %rsi
	popq	%rbx
	jmp	_http_parser__n_req_http_major ## TAILCALL
LBB95_11:                               ## %pause
	leaq	_http_parser__n_req_http_start_1(%rip), %rax
	popq	%rbx
	retq
LBB95_12:                               ## %http_parser__n_error_22.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_22 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_major
_http_parser__n_req_http_major:         ## @http_parser__n_req_http_major
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB96_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB96_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_major.trampoline
	incq	%rsi
	movb	%al, 74(%rdi)
	popq	%rax
	jmp	_http_parser__n_req_http_dot ## TAILCALL
LBB96_3:                                ## %no_data
	leaq	_http_parser__n_req_http_major(%rip), %rax
	popq	%rcx
	retq
LBB96_4:                                ## %http_parser__n_error_21.trampoline
	popq	%rax
	jmp	_http_parser__n_error_21 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_dot
_http_parser__n_req_http_dot:           ## @http_parser__n_req_http_dot
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB97_3
## %bb.1:                               ## %has_data
	cmpb	$46, (%rsi)
	jne	LBB97_4
## %bb.2:                               ## %http_parser__n_req_http_minor.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_req_http_minor ## TAILCALL
LBB97_3:                                ## %no_data
	leaq	_http_parser__n_req_http_dot(%rip), %rax
	popq	%rcx
	retq
LBB97_4:                                ## %http_parser__n_error_20.trampoline
	popq	%rax
	jmp	_http_parser__n_error_20 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_minor
_http_parser__n_req_http_minor:         ## @http_parser__n_req_http_minor
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB98_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB98_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_minor.trampoline
	incq	%rsi
	movb	%al, 75(%rdi)
	popq	%rax
	jmp	_http_parser__n_req_http_end ## TAILCALL
LBB98_3:                                ## %no_data
	leaq	_http_parser__n_req_http_minor(%rip), %rax
	popq	%rcx
	retq
LBB98_4:                                ## %http_parser__n_error_19.trampoline
	popq	%rax
	jmp	_http_parser__n_error_19 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_end
_http_parser__n_req_http_end:           ## @http_parser__n_req_http_end
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB99_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$10, %cl
	je	LBB99_4
## %bb.2:                               ## %has_data
	cmpb	$13, %cl
	jne	LBB99_3
## %bb.5:                               ## %http_parser__n_req_http_end_1.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_req_http_end_1 ## TAILCALL
LBB99_6:                                ## %no_data
	leaq	_http_parser__n_req_http_end(%rip), %rax
	popq	%rcx
	retq
LBB99_4:                                ## %http_parser__n_header_field_start.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB99_3:                                ## %http_parser__n_error_18.trampoline
	popq	%rax
	jmp	_http_parser__n_error_18 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_end_1
_http_parser__n_req_http_end_1:         ## @http_parser__n_req_http_end_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB100_3
## %bb.1:                               ## %has_data
	cmpb	$10, (%rsi)
	jne	LBB100_4
## %bb.2:                               ## %http_parser__n_header_field_start.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB100_3:                               ## %no_data
	leaq	_http_parser__n_req_http_end_1(%rip), %rax
	popq	%rcx
	retq
LBB100_4:                               ## %http_parser__n_error_18.trampoline
	popq	%rax
	jmp	_http_parser__n_error_18 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_18
_http_parser__n_error_18:               ## @http_parser__n_error_18
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_21(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_19
_http_parser__n_error_19:               ## @http_parser__n_error_19
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_22(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_20
_http_parser__n_error_20:               ## @http_parser__n_error_20
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_23(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_21
_http_parser__n_error_21:               ## @http_parser__n_error_21
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_24(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_22
_http_parser__n_error_22:               ## @http_parser__n_error_22
	.cfi_startproc
## %bb.0:
	movl	$8, 24(%rdi)
	leaq	_g_cstr_25(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_fragment
_http_parser__n_url_fragment:           ## @http_parser__n_url_fragment
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_g_lookup_table_5(%rip), %r8
	leaq	LJTI106_0(%rip), %rcx
LBB106_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB106_8
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB106_1 Depth=1
	movzbl	(%rsi), %eax
	incq	%rsi
	movb	(%rax,%r8), %al
	decb	%al
	cmpb	$3, %al
	ja	LBB106_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB106_1 Depth=1
	movzbl	%al, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB106_5:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB106_6:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB106_7:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB106_8:                               ## %no_data
	leaq	_http_parser__n_url_fragment(%rip), %rax
	popq	%rcx
	retq
LBB106_4:                               ## %http_parser__n_error_23.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_23 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L106_0_set_5 = LBB106_5-LJTI106_0
L106_0_set_6 = LBB106_6-LJTI106_0
L106_0_set_7 = LBB106_7-LJTI106_0
L106_0_set_1 = LBB106_1-LJTI106_0
LJTI106_0:
	.long	L106_0_set_5
	.long	L106_0_set_6
	.long	L106_0_set_7
	.long	L106_0_set_1
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_23
_http_parser__n_error_23:               ## @http_parser__n_error_23
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_26(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_query
_http_parser__n_url_query:              ## @http_parser__n_url_query
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_g_lookup_table_6(%rip), %r8
	leaq	LJTI108_0(%rip), %rcx
LBB108_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB108_9
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB108_1 Depth=1
	movzbl	(%rsi), %eax
	incq	%rsi
	movb	(%rax,%r8), %al
	decb	%al
	cmpb	$4, %al
	ja	LBB108_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB108_1 Depth=1
	movzbl	%al, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB108_5:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB108_6:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB108_7:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB108_8:                               ## %http_parser__n_url_fragment.trampoline
	popq	%rax
	jmp	_http_parser__n_url_fragment ## TAILCALL
LBB108_9:                               ## %no_data
	leaq	_http_parser__n_url_query(%rip), %rax
	popq	%rcx
	retq
LBB108_4:                               ## %http_parser__n_error_24.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_24 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L108_0_set_5 = LBB108_5-LJTI108_0
L108_0_set_6 = LBB108_6-LJTI108_0
L108_0_set_7 = LBB108_7-LJTI108_0
L108_0_set_1 = LBB108_1-LJTI108_0
L108_0_set_8 = LBB108_8-LJTI108_0
LJTI108_0:
	.long	L108_0_set_5
	.long	L108_0_set_6
	.long	L108_0_set_7
	.long	L108_0_set_1
	.long	L108_0_set_8
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_24
_http_parser__n_error_24:               ## @http_parser__n_error_24
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_27(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_25
_http_parser__n_error_25:               ## @http_parser__n_error_25
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_28(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_schema
_http_parser__n_url_schema:             ## @http_parser__n_url_schema
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB111_8
## %bb.1:                               ## %has_data.preheader
	leaq	LJTI111_0(%rip), %rax
LBB111_2:                               ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	addb	$-10, %cl
	cmpb	$112, %cl
	ja	LBB111_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB111_2 Depth=1
	movzbl	%cl, %ecx
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB111_7:                               ## %http_parser__n_url_schema.trampoline
                                        ##   in Loop: Header=BB111_2 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	LBB111_2
LBB111_8:                               ## %no_data
	leaq	_http_parser__n_url_schema(%rip), %rax
	popq	%rcx
	retq
LBB111_6:                               ## %http_parser__n_url_schema_1.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_url_schema_1 ## TAILCALL
LBB111_5:                               ## %http_parser__n_error_29.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_29 ## TAILCALL
LBB111_4:                               ## %http_parser__n_error_30.trampoline
	popq	%rax
	jmp	_http_parser__n_error_30 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L111_0_set_5 = LBB111_5-LJTI111_0
L111_0_set_4 = LBB111_4-LJTI111_0
L111_0_set_6 = LBB111_6-LJTI111_0
L111_0_set_7 = LBB111_7-LJTI111_0
LJTI111_0:
	.long	L111_0_set_5
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_5
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_5
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_6
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_4
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.long	L111_0_set_7
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_schema_1
_http_parser__n_url_schema_1:           ## @http_parser__n_url_schema_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB112_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_13(%rip), %r8
LBB112_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB112_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB112_2 Depth=1
	cmpl	$1, %ecx
	je	LBB112_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB112_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB112_2
## %bb.7:
	movb	$1, %al
	jmp	LBB112_8
LBB112_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB112_8
LBB112_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB112_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB112_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB112_12
## %bb.10:                              ## %http_parser__n_url_server.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_url_server ## TAILCALL
LBB112_11:                              ## %pause
	leaq	_http_parser__n_url_schema_1(%rip), %rax
	popq	%rcx
	retq
LBB112_12:                              ## %http_parser__n_error_30.trampoline
	popq	%rax
	jmp	_http_parser__n_error_30 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_server
_http_parser__n_url_server:             ## @http_parser__n_url_server
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_g_lookup_table_8(%rip), %r8
	leaq	LJTI113_0(%rip), %rcx
LBB113_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB113_11
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB113_1 Depth=1
	movzbl	(%rsi), %eax
	incq	%rsi
	movb	(%rax,%r8), %al
	decb	%al
	cmpb	$6, %al
	ja	LBB113_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB113_1 Depth=1
	movzbl	%al, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB113_5:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB113_6:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB113_7:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB113_8:                               ## %http_parser__n_url_path.trampoline
	popq	%rax
	jmp	_http_parser__n_url_path ## TAILCALL
LBB113_9:                               ## %http_parser__n_url_query.trampoline
	popq	%rax
	jmp	_http_parser__n_url_query ## TAILCALL
LBB113_10:                              ## %http_parser__n_url_server_with_at.trampoline
	popq	%rax
	jmp	_http_parser__n_url_server_with_at ## TAILCALL
LBB113_11:                              ## %no_data
	leaq	_http_parser__n_url_server(%rip), %rax
	popq	%rcx
	retq
LBB113_4:                               ## %http_parser__n_error_28.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_28 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L113_0_set_5 = LBB113_5-LJTI113_0
L113_0_set_6 = LBB113_6-LJTI113_0
L113_0_set_7 = LBB113_7-LJTI113_0
L113_0_set_1 = LBB113_1-LJTI113_0
L113_0_set_8 = LBB113_8-LJTI113_0
L113_0_set_9 = LBB113_9-LJTI113_0
L113_0_set_10 = LBB113_10-LJTI113_0
LJTI113_0:
	.long	L113_0_set_5
	.long	L113_0_set_6
	.long	L113_0_set_7
	.long	L113_0_set_1
	.long	L113_0_set_8
	.long	L113_0_set_9
	.long	L113_0_set_10
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_server_with_at
_http_parser__n_url_server_with_at:     ## @http_parser__n_url_server_with_at
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB114_11
## %bb.1:                               ## %has_data
	movzbl	(%rsi), %eax
	leaq	_g_lookup_table_8(%rip), %rcx
	movb	(%rax,%rcx), %cl
	decb	%cl
	cmpb	$6, %cl
	ja	LBB114_3
## %bb.2:                               ## %has_data
	leaq	1(%rsi), %r8
	movzbl	%cl, %ecx
	leaq	LJTI114_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB114_4:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB114_11:                              ## %no_data
	leaq	_http_parser__n_url_server_with_at(%rip), %rax
	popq	%rcx
	retq
LBB114_5:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB114_6:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB114_7:                               ## %http_parser__n_url_server.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_url_server ## TAILCALL
LBB114_8:                               ## %http_parser__n_url_path.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_url_path ## TAILCALL
LBB114_9:                               ## %http_parser__n_url_query.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_url_query ## TAILCALL
LBB114_3:                               ## %http_parser__n_error_27.trampoline
	popq	%rax
	jmp	_http_parser__n_error_27 ## TAILCALL
LBB114_10:                              ## %http_parser__n_error_26.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_error_26 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L114_0_set_4 = LBB114_4-LJTI114_0
L114_0_set_5 = LBB114_5-LJTI114_0
L114_0_set_6 = LBB114_6-LJTI114_0
L114_0_set_7 = LBB114_7-LJTI114_0
L114_0_set_8 = LBB114_8-LJTI114_0
L114_0_set_9 = LBB114_9-LJTI114_0
L114_0_set_10 = LBB114_10-LJTI114_0
LJTI114_0:
	.long	L114_0_set_4
	.long	L114_0_set_5
	.long	L114_0_set_6
	.long	L114_0_set_7
	.long	L114_0_set_8
	.long	L114_0_set_9
	.long	L114_0_set_10
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_26
_http_parser__n_error_26:               ## @http_parser__n_error_26
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_29(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_27
_http_parser__n_error_27:               ## @http_parser__n_error_27
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_30(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_28
_http_parser__n_error_28:               ## @http_parser__n_error_28
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_30(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_30
_http_parser__n_error_30:               ## @http_parser__n_error_30
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_31(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_31
_http_parser__n_error_31:               ## @http_parser__n_error_31
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_32(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_url
_http_parser__n_span_start_http_parser__on_url: ## @http_parser__n_span_start_http_parser__on_url
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB120_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_url@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_url_server ## TAILCALL
LBB120_1:                               ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_url(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_39
_http_parser__n_error_39:               ## @http_parser__n_error_39
	.cfi_startproc
## %bb.0:
	movl	$6, 24(%rdi)
	leaq	_g_cstr_33(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_2
_http_parser__n_start_req_2:            ## @http_parser__n_start_req_2
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB122_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
	xorl	%eax, %eax
LBB122_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB122_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB122_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB122_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB122_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB122_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB122_8
LBB122_3:
	movb	$2, %r9b
	jmp	LBB122_8
LBB122_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB122_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB122_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB122_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$16
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB122_11:                              ## %pause
	leaq	_http_parser__n_start_req_2(%rip), %rax
	popq	%rbx
	retq
LBB122_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_3
_http_parser__n_start_req_3:            ## @http_parser__n_start_req_3
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB123_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$72, %cl
	je	LBB123_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB123_3
## %bb.5:                               ## %http_parser__n_start_req_5.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_5 ## TAILCALL
LBB123_6:                               ## %no_data
	leaq	_http_parser__n_start_req_3(%rip), %rax
	popq	%rcx
	retq
LBB123_4:                               ## %http_parser__n_start_req_4.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_4 ## TAILCALL
LBB123_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_4
_http_parser__n_start_req_4:            ## @http_parser__n_start_req_4
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB124_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_15(%rip), %r10
	xorl	%eax, %eax
LBB124_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB124_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB124_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB124_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB124_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB124_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB124_8
LBB124_3:
	movb	$2, %r9b
	jmp	LBB124_8
LBB124_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB124_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB124_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB124_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$22
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB124_11:                              ## %pause
	leaq	_http_parser__n_start_req_4(%rip), %rax
	popq	%rbx
	retq
LBB124_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_5
_http_parser__n_start_req_5:            ## @http_parser__n_start_req_5
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB125_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$78, %cl
	je	LBB125_4
## %bb.2:                               ## %has_data
	cmpb	$80, %cl
	jne	LBB125_3
## %bb.5:                               ## %http_parser__n_start_req_7.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_7 ## TAILCALL
LBB125_6:                               ## %no_data
	leaq	_http_parser__n_start_req_5(%rip), %rax
	popq	%rcx
	retq
LBB125_4:                               ## %http_parser__n_start_req_6.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_6 ## TAILCALL
LBB125_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_6
_http_parser__n_start_req_6:            ## @http_parser__n_start_req_6
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB126_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_16(%rip), %r10
	xorl	%eax, %eax
LBB126_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB126_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB126_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB126_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB126_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB126_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB126_8
LBB126_3:
	movb	$2, %r9b
	jmp	LBB126_8
LBB126_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB126_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB126_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB126_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$5
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB126_11:                              ## %pause
	leaq	_http_parser__n_start_req_6(%rip), %rax
	popq	%rbx
	retq
LBB126_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_7
_http_parser__n_start_req_7:            ## @http_parser__n_start_req_7
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB127_3
## %bb.1:                               ## %has_data
	cmpb	$89, (%rsi)
	jne	LBB127_4
## %bb.2:                               ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$8
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB127_3:                               ## %no_data
	leaq	_http_parser__n_start_req_7(%rip), %rax
	popq	%rcx
	retq
LBB127_4:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_8
_http_parser__n_start_req_8:            ## @http_parser__n_start_req_8
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB128_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_17(%rip), %r10
	xorl	%eax, %eax
LBB128_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB128_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB128_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$4, %eax
	je	LBB128_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB128_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB128_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB128_8
LBB128_3:
	movb	$2, %r9b
	jmp	LBB128_8
LBB128_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB128_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB128_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB128_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	xorl	%ecx, %ecx
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB128_11:                              ## %pause
	leaq	_http_parser__n_start_req_8(%rip), %rax
	popq	%rbx
	retq
LBB128_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_9
_http_parser__n_start_req_9:            ## @http_parser__n_start_req_9
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB129_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_18(%rip), %r8
LBB129_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB129_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB129_2 Depth=1
	cmpl	$1, %ecx
	je	LBB129_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB129_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB129_2
## %bb.7:
	movb	$1, %al
	jmp	LBB129_8
LBB129_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB129_8
LBB129_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB129_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB129_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB129_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$1
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB129_11:                              ## %pause
	leaq	_http_parser__n_start_req_9(%rip), %rax
	popq	%rcx
	retq
LBB129_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_10
_http_parser__n_start_req_10:           ## @http_parser__n_start_req_10
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB130_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_19(%rip), %r10
	xorl	%eax, %eax
LBB130_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB130_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB130_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB130_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB130_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB130_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB130_8
LBB130_3:
	movb	$2, %r9b
	jmp	LBB130_8
LBB130_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB130_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB130_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB130_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$2
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB130_11:                              ## %pause
	leaq	_http_parser__n_start_req_10(%rip), %rax
	popq	%rbx
	retq
LBB130_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_11
_http_parser__n_start_req_11:           ## @http_parser__n_start_req_11
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB131_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$73, %cl
	je	LBB131_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB131_3
## %bb.5:                               ## %http_parser__n_start_req_13.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_13 ## TAILCALL
LBB131_6:                               ## %no_data
	leaq	_http_parser__n_start_req_11(%rip), %rax
	popq	%rcx
	retq
LBB131_4:                               ## %http_parser__n_start_req_12.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_12 ## TAILCALL
LBB131_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_12
_http_parser__n_start_req_12:           ## @http_parser__n_start_req_12
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB132_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_42(%rip), %r8
LBB132_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB132_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB132_2 Depth=1
	cmpl	$1, %ecx
	je	LBB132_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB132_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB132_2
## %bb.7:
	movb	$1, %al
	jmp	LBB132_8
LBB132_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB132_8
LBB132_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB132_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB132_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB132_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$31
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB132_11:                              ## %pause
	leaq	_http_parser__n_start_req_12(%rip), %rax
	popq	%rcx
	retq
LBB132_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_13
_http_parser__n_start_req_13:           ## @http_parser__n_start_req_13
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB133_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_43(%rip), %r8
LBB133_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB133_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB133_2 Depth=1
	cmpl	$1, %ecx
	je	LBB133_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB133_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB133_2
## %bb.7:
	movb	$1, %al
	jmp	LBB133_8
LBB133_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB133_8
LBB133_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB133_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB133_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB133_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$9
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB133_11:                              ## %pause
	leaq	_http_parser__n_start_req_13(%rip), %rax
	popq	%rcx
	retq
LBB133_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_14
_http_parser__n_start_req_14:           ## @http_parser__n_start_req_14
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB134_10
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$45, %cl
	je	LBB134_6
## %bb.2:                               ## %has_data
	cmpb	$69, %cl
	je	LBB134_7
## %bb.3:                               ## %has_data
	cmpb	$75, %cl
	je	LBB134_8
## %bb.4:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB134_5
## %bb.9:                               ## %http_parser__n_start_req_22.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_22 ## TAILCALL
LBB134_10:                              ## %no_data
	leaq	_http_parser__n_start_req_14(%rip), %rax
	popq	%rcx
	retq
LBB134_6:                               ## %http_parser__n_start_req_15.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_15 ## TAILCALL
LBB134_7:                               ## %http_parser__n_start_req_16.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_16 ## TAILCALL
LBB134_8:                               ## %http_parser__n_start_req_17.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_17 ## TAILCALL
LBB134_5:                               ## %http_parser__n_error_39.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_15
_http_parser__n_start_req_15:           ## @http_parser__n_start_req_15
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB135_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_22(%rip), %r10
	xorl	%eax, %eax
LBB135_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB135_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB135_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB135_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB135_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB135_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB135_8
LBB135_3:
	movb	$2, %r9b
	jmp	LBB135_8
LBB135_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB135_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB135_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB135_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$24
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB135_11:                              ## %pause
	leaq	_http_parser__n_start_req_15(%rip), %rax
	popq	%rbx
	retq
LBB135_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_16
_http_parser__n_start_req_16:           ## @http_parser__n_start_req_16
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB136_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_23(%rip), %r10
	xorl	%eax, %eax
LBB136_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB136_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB136_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB136_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB136_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB136_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB136_8
LBB136_3:
	movb	$2, %r9b
	jmp	LBB136_8
LBB136_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB136_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB136_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB136_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$23
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB136_11:                              ## %pause
	leaq	_http_parser__n_start_req_16(%rip), %rax
	popq	%rbx
	retq
LBB136_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_17
_http_parser__n_start_req_17:           ## @http_parser__n_start_req_17
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB137_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$65, %cl
	je	LBB137_4
## %bb.2:                               ## %has_data
	cmpb	$67, %cl
	jne	LBB137_3
## %bb.5:                               ## %http_parser__n_start_req_19.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_19 ## TAILCALL
LBB137_6:                               ## %no_data
	leaq	_http_parser__n_start_req_17(%rip), %rax
	popq	%rcx
	retq
LBB137_4:                               ## %http_parser__n_start_req_18.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_18 ## TAILCALL
LBB137_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_18
_http_parser__n_start_req_18:           ## @http_parser__n_start_req_18
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB138_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_24(%rip), %r10
	xorl	%eax, %eax
LBB138_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB138_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB138_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$6, %eax
	je	LBB138_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB138_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB138_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB138_8
LBB138_3:
	movb	$2, %r9b
	jmp	LBB138_8
LBB138_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB138_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB138_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB138_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$21
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB138_11:                              ## %pause
	leaq	_http_parser__n_start_req_18(%rip), %rax
	popq	%rbx
	retq
LBB138_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_19
_http_parser__n_start_req_19:           ## @http_parser__n_start_req_19
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB139_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$65, %cl
	je	LBB139_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB139_3
## %bb.5:                               ## %http_parser__n_start_req_21.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_21 ## TAILCALL
LBB139_6:                               ## %no_data
	leaq	_http_parser__n_start_req_19(%rip), %rax
	popq	%rcx
	retq
LBB139_4:                               ## %http_parser__n_start_req_20.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_20 ## TAILCALL
LBB139_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_20
_http_parser__n_start_req_20:           ## @http_parser__n_start_req_20
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB140_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_25(%rip), %r10
	xorl	%eax, %eax
LBB140_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB140_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB140_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB140_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB140_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB140_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB140_8
LBB140_3:
	movb	$2, %r9b
	jmp	LBB140_8
LBB140_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB140_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB140_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB140_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$30
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB140_11:                              ## %pause
	leaq	_http_parser__n_start_req_20(%rip), %rax
	popq	%rbx
	retq
LBB140_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_21
_http_parser__n_start_req_21:           ## @http_parser__n_start_req_21
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB141_3
## %bb.1:                               ## %has_data
	cmpb	$76, (%rsi)
	jne	LBB141_4
## %bb.2:                               ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$10
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB141_3:                               ## %no_data
	leaq	_http_parser__n_start_req_21(%rip), %rax
	popq	%rcx
	retq
LBB141_4:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_22
_http_parser__n_start_req_22:           ## @http_parser__n_start_req_22
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB142_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_26(%rip), %r8
LBB142_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB142_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB142_2 Depth=1
	cmpl	$1, %ecx
	je	LBB142_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB142_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB142_2
## %bb.7:
	movb	$1, %al
	jmp	LBB142_8
LBB142_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB142_8
LBB142_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB142_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB142_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB142_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$11
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB142_11:                              ## %pause
	leaq	_http_parser__n_start_req_22(%rip), %rax
	popq	%rcx
	retq
LBB142_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_23
_http_parser__n_start_req_23:           ## @http_parser__n_start_req_23
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB143_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_27(%rip), %r10
	xorl	%eax, %eax
LBB143_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB143_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB143_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$4, %eax
	je	LBB143_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB143_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB143_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB143_8
LBB143_3:
	movb	$2, %r9b
	jmp	LBB143_8
LBB143_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB143_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB143_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB143_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$25
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB143_11:                              ## %pause
	leaq	_http_parser__n_start_req_23(%rip), %rax
	popq	%rbx
	retq
LBB143_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_24
_http_parser__n_start_req_24:           ## @http_parser__n_start_req_24
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB144_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_28(%rip), %r10
	xorl	%eax, %eax
LBB144_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB144_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB144_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB144_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB144_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB144_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB144_8
LBB144_3:
	movb	$2, %r9b
	jmp	LBB144_8
LBB144_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB144_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB144_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB144_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$6
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB144_11:                              ## %pause
	leaq	_http_parser__n_start_req_24(%rip), %rax
	popq	%rbx
	retq
LBB144_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_25
_http_parser__n_start_req_25:           ## @http_parser__n_start_req_25
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB145_10
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$65, %cl
	je	LBB145_6
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	je	LBB145_7
## %bb.3:                               ## %has_data
	cmpb	$82, %cl
	je	LBB145_8
## %bb.4:                               ## %has_data
	cmpb	$85, %cl
	jne	LBB145_5
## %bb.9:                               ## %http_parser__n_start_req_32.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_32 ## TAILCALL
LBB145_10:                              ## %no_data
	leaq	_http_parser__n_start_req_25(%rip), %rax
	popq	%rcx
	retq
LBB145_6:                               ## %http_parser__n_start_req_26.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_26 ## TAILCALL
LBB145_7:                               ## %http_parser__n_start_req_27.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_27 ## TAILCALL
LBB145_8:                               ## %http_parser__n_start_req_28.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_28 ## TAILCALL
LBB145_5:                               ## %http_parser__n_error_39.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_26
_http_parser__n_start_req_26:           ## @http_parser__n_start_req_26
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB146_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_29(%rip), %r10
	xorl	%eax, %eax
LBB146_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB146_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB146_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB146_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB146_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB146_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB146_8
LBB146_3:
	movb	$2, %r9b
	jmp	LBB146_8
LBB146_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB146_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB146_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB146_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$28
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB146_11:                              ## %pause
	leaq	_http_parser__n_start_req_26(%rip), %rax
	popq	%rbx
	retq
LBB146_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_27
_http_parser__n_start_req_27:           ## @http_parser__n_start_req_27
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB147_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_30(%rip), %r8
LBB147_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB147_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB147_2 Depth=1
	cmpl	$1, %ecx
	je	LBB147_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB147_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB147_2
## %bb.7:
	movb	$1, %al
	jmp	LBB147_8
LBB147_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB147_8
LBB147_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB147_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB147_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB147_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$3
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB147_11:                              ## %pause
	leaq	_http_parser__n_start_req_27(%rip), %rax
	popq	%rcx
	retq
LBB147_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_28
_http_parser__n_start_req_28:           ## @http_parser__n_start_req_28
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB148_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_31(%rip), %r8
LBB148_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB148_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB148_2 Depth=1
	cmpl	$1, %ecx
	je	LBB148_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB148_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB148_2
## %bb.7:
	movb	$1, %al
	jmp	LBB148_8
LBB148_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB148_8
LBB148_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB148_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB148_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB148_12
## %bb.10:                              ## %http_parser__n_start_req_29.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_start_req_29 ## TAILCALL
LBB148_11:                              ## %pause
	leaq	_http_parser__n_start_req_28(%rip), %rax
	popq	%rcx
	retq
LBB148_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_29
_http_parser__n_start_req_29:           ## @http_parser__n_start_req_29
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB149_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$70, %cl
	je	LBB149_4
## %bb.2:                               ## %has_data
	cmpb	$80, %cl
	jne	LBB149_3
## %bb.5:                               ## %http_parser__n_start_req_31.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_31 ## TAILCALL
LBB149_6:                               ## %no_data
	leaq	_http_parser__n_start_req_29(%rip), %rax
	popq	%rcx
	retq
LBB149_4:                               ## %http_parser__n_start_req_30.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_30 ## TAILCALL
LBB149_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_30
_http_parser__n_start_req_30:           ## @http_parser__n_start_req_30
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB150_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
	xorl	%eax, %eax
LBB150_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB150_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB150_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB150_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB150_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB150_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB150_8
LBB150_3:
	movb	$2, %r9b
	jmp	LBB150_8
LBB150_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB150_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB150_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB150_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$12
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB150_11:                              ## %pause
	leaq	_http_parser__n_start_req_30(%rip), %rax
	popq	%rbx
	retq
LBB150_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_31
_http_parser__n_start_req_31:           ## @http_parser__n_start_req_31
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB151_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_33(%rip), %r10
	xorl	%eax, %eax
LBB151_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB151_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB151_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB151_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB151_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB151_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB151_8
LBB151_3:
	movb	$2, %r9b
	jmp	LBB151_8
LBB151_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB151_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB151_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB151_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$13
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB151_11:                              ## %pause
	leaq	_http_parser__n_start_req_31(%rip), %rax
	popq	%rbx
	retq
LBB151_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_32
_http_parser__n_start_req_32:           ## @http_parser__n_start_req_32
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB152_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$82, %cl
	je	LBB152_4
## %bb.2:                               ## %has_data
	cmpb	$84, %cl
	jne	LBB152_3
## %bb.5:                               ## %http_parser__n_invoke_store_method_1.trampoline
	pushq	$4
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB152_6:                               ## %no_data
	leaq	_http_parser__n_start_req_32(%rip), %rax
	popq	%rcx
	retq
LBB152_4:                               ## %http_parser__n_start_req_33.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_33 ## TAILCALL
LBB152_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_33
_http_parser__n_start_req_33:           ## @http_parser__n_start_req_33
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB153_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_34(%rip), %r8
LBB153_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB153_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB153_2 Depth=1
	cmpl	$1, %ecx
	je	LBB153_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB153_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB153_2
## %bb.7:
	movb	$1, %al
	jmp	LBB153_8
LBB153_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB153_8
LBB153_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB153_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB153_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB153_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$29
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB153_11:                              ## %pause
	leaq	_http_parser__n_start_req_33(%rip), %rax
	popq	%rcx
	retq
LBB153_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_34
_http_parser__n_start_req_34:           ## @http_parser__n_start_req_34
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB154_3
## %bb.1:                               ## %has_data
	cmpb	$69, (%rsi)
	jne	LBB154_4
## %bb.2:                               ## %http_parser__n_start_req_35.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_start_req_35 ## TAILCALL
LBB154_3:                               ## %no_data
	leaq	_http_parser__n_start_req_34(%rip), %rax
	popq	%rcx
	retq
LBB154_4:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_35
_http_parser__n_start_req_35:           ## @http_parser__n_start_req_35
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB155_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$66, %cl
	je	LBB155_4
## %bb.2:                               ## %has_data
	cmpb	$80, %cl
	jne	LBB155_3
## %bb.5:                               ## %http_parser__n_start_req_37.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_37 ## TAILCALL
LBB155_6:                               ## %no_data
	leaq	_http_parser__n_start_req_35(%rip), %rax
	popq	%rcx
	retq
LBB155_4:                               ## %http_parser__n_start_req_36.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_36 ## TAILCALL
LBB155_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_36
_http_parser__n_start_req_36:           ## @http_parser__n_start_req_36
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB156_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
	xorl	%eax, %eax
LBB156_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB156_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB156_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB156_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB156_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB156_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB156_8
LBB156_3:
	movb	$2, %r9b
	jmp	LBB156_8
LBB156_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB156_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB156_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB156_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$17
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB156_11:                              ## %pause
	leaq	_http_parser__n_start_req_36(%rip), %rax
	popq	%rbx
	retq
LBB156_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_37
_http_parser__n_start_req_37:           ## @http_parser__n_start_req_37
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB157_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_36(%rip), %r10
	xorl	%eax, %eax
LBB157_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB157_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB157_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB157_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB157_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB157_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB157_8
LBB157_3:
	movb	$2, %r9b
	jmp	LBB157_8
LBB157_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB157_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB157_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB157_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$20
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB157_11:                              ## %pause
	leaq	_http_parser__n_start_req_37(%rip), %rax
	popq	%rbx
	retq
LBB157_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_38
_http_parser__n_start_req_38:           ## @http_parser__n_start_req_38
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB158_8
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$69, %cl
	je	LBB158_5
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	je	LBB158_6
## %bb.3:                               ## %has_data
	cmpb	$85, %cl
	jne	LBB158_4
## %bb.7:                               ## %http_parser__n_start_req_41.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_41 ## TAILCALL
LBB158_8:                               ## %no_data
	leaq	_http_parser__n_start_req_38(%rip), %rax
	popq	%rcx
	retq
LBB158_5:                               ## %http_parser__n_start_req_39.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_39 ## TAILCALL
LBB158_6:                               ## %http_parser__n_start_req_40.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_40 ## TAILCALL
LBB158_4:                               ## %http_parser__n_error_39.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_39
_http_parser__n_start_req_39:           ## @http_parser__n_start_req_39
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB159_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_37(%rip), %r10
	xorl	%eax, %eax
LBB159_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB159_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB159_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB159_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB159_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB159_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB159_8
LBB159_3:
	movb	$2, %r9b
	jmp	LBB159_8
LBB159_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB159_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB159_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB159_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$14
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB159_11:                              ## %pause
	leaq	_http_parser__n_start_req_39(%rip), %rax
	popq	%rbx
	retq
LBB159_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_40
_http_parser__n_start_req_40:           ## @http_parser__n_start_req_40
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB160_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_38(%rip), %r10
	xorl	%eax, %eax
LBB160_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB160_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB160_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB160_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB160_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB160_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB160_8
LBB160_3:
	movb	$2, %r9b
	jmp	LBB160_8
LBB160_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB160_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB160_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB160_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$33
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB160_11:                              ## %pause
	leaq	_http_parser__n_start_req_40(%rip), %rax
	popq	%rbx
	retq
LBB160_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_41
_http_parser__n_start_req_41:           ## @http_parser__n_start_req_41
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB161_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_39(%rip), %r10
	xorl	%eax, %eax
LBB161_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB161_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB161_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$6, %eax
	je	LBB161_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB161_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB161_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB161_8
LBB161_3:
	movb	$2, %r9b
	jmp	LBB161_8
LBB161_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB161_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB161_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB161_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$26
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB161_11:                              ## %pause
	leaq	_http_parser__n_start_req_41(%rip), %rax
	popq	%rbx
	retq
LBB161_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_42
_http_parser__n_start_req_42:           ## @http_parser__n_start_req_42
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB162_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_40(%rip), %r10
	xorl	%eax, %eax
LBB162_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB162_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB162_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB162_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB162_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB162_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB162_8
LBB162_3:
	movb	$2, %r9b
	jmp	LBB162_8
LBB162_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB162_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB162_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB162_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$7
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB162_11:                              ## %pause
	leaq	_http_parser__n_start_req_42(%rip), %rax
	popq	%rbx
	retq
LBB162_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_43
_http_parser__n_start_req_43:           ## @http_parser__n_start_req_43
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB163_3
## %bb.1:                               ## %has_data
	cmpb	$78, (%rsi)
	jne	LBB163_4
## %bb.2:                               ## %http_parser__n_start_req_44.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_start_req_44 ## TAILCALL
LBB163_3:                               ## %no_data
	leaq	_http_parser__n_start_req_43(%rip), %rax
	popq	%rcx
	retq
LBB163_4:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_44
_http_parser__n_start_req_44:           ## @http_parser__n_start_req_44
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB164_8
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$66, %cl
	je	LBB164_5
## %bb.2:                               ## %has_data
	cmpb	$76, %cl
	je	LBB164_6
## %bb.3:                               ## %has_data
	cmpb	$83, %cl
	jne	LBB164_4
## %bb.7:                               ## %http_parser__n_start_req_49.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_49 ## TAILCALL
LBB164_8:                               ## %no_data
	leaq	_http_parser__n_start_req_44(%rip), %rax
	popq	%rcx
	retq
LBB164_5:                               ## %http_parser__n_start_req_45.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_45 ## TAILCALL
LBB164_6:                               ## %http_parser__n_start_req_46.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_46 ## TAILCALL
LBB164_4:                               ## %http_parser__n_error_39.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_45
_http_parser__n_start_req_45:           ## @http_parser__n_start_req_45
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB165_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
	xorl	%eax, %eax
LBB165_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB165_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB165_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB165_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB165_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB165_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB165_8
LBB165_3:
	movb	$2, %r9b
	jmp	LBB165_8
LBB165_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB165_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB165_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB165_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$18
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB165_11:                              ## %pause
	leaq	_http_parser__n_start_req_45(%rip), %rax
	popq	%rbx
	retq
LBB165_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_46
_http_parser__n_start_req_46:           ## @http_parser__n_start_req_46
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB166_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$73, %cl
	je	LBB166_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB166_3
## %bb.5:                               ## %http_parser__n_start_req_48.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_48 ## TAILCALL
LBB166_6:                               ## %no_data
	leaq	_http_parser__n_start_req_46(%rip), %rax
	popq	%rcx
	retq
LBB166_4:                               ## %http_parser__n_start_req_47.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_47 ## TAILCALL
LBB166_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_47
_http_parser__n_start_req_47:           ## @http_parser__n_start_req_47
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB167_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_42(%rip), %r8
LBB167_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB167_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB167_2 Depth=1
	cmpl	$1, %ecx
	je	LBB167_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB167_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB167_2
## %bb.7:
	movb	$1, %al
	jmp	LBB167_8
LBB167_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB167_8
LBB167_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB167_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB167_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB167_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$32
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB167_11:                              ## %pause
	leaq	_http_parser__n_start_req_47(%rip), %rax
	popq	%rcx
	retq
LBB167_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_48
_http_parser__n_start_req_48:           ## @http_parser__n_start_req_48
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB168_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_43(%rip), %r8
LBB168_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB168_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB168_2 Depth=1
	cmpl	$1, %ecx
	je	LBB168_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB168_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB168_2
## %bb.7:
	movb	$1, %al
	jmp	LBB168_8
LBB168_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB168_8
LBB168_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB168_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB168_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB168_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$15
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB168_11:                              ## %pause
	leaq	_http_parser__n_start_req_48(%rip), %rax
	popq	%rcx
	retq
LBB168_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_49
_http_parser__n_start_req_49:           ## @http_parser__n_start_req_49
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB169_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_44(%rip), %r10
	xorl	%eax, %eax
LBB169_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB169_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB169_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$7, %eax
	je	LBB169_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB169_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB169_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB169_8
LBB169_3:
	movb	$2, %r9b
	jmp	LBB169_8
LBB169_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB169_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB169_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB169_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$27
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB169_11:                              ## %pause
	leaq	_http_parser__n_start_req_49(%rip), %rax
	popq	%rbx
	retq
LBB169_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_res
_http_parser__n_start_res:              ## @http_parser__n_start_res
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB170_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_45(%rip), %r10
	xorl	%eax, %eax
LBB170_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB170_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB170_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$4, %eax
	je	LBB170_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB170_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB170_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB170_8
LBB170_3:
	movb	$2, %r9b
	jmp	LBB170_8
LBB170_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB170_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB170_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB170_12
## %bb.10:                              ## %http_parser__n_res_http_major.trampoline
	leaq	1(%rsi,%rcx), %rsi
	popq	%rbx
	jmp	_http_parser__n_res_http_major ## TAILCALL
LBB170_11:                              ## %pause
	leaq	_http_parser__n_start_res(%rip), %rax
	popq	%rbx
	retq
LBB170_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_major
_http_parser__n_res_http_major:         ## @http_parser__n_res_http_major
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB171_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB171_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_major_1.trampoline
	incq	%rsi
	movb	%al, 74(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_http_dot ## TAILCALL
LBB171_3:                               ## %no_data
	leaq	_http_parser__n_res_http_major(%rip), %rax
	popq	%rcx
	retq
LBB171_4:                               ## %http_parser__n_error_37.trampoline
	popq	%rax
	jmp	_http_parser__n_error_37 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_dot
_http_parser__n_res_http_dot:           ## @http_parser__n_res_http_dot
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB172_3
## %bb.1:                               ## %has_data
	cmpb	$46, (%rsi)
	jne	LBB172_4
## %bb.2:                               ## %http_parser__n_res_http_minor.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_res_http_minor ## TAILCALL
LBB172_3:                               ## %no_data
	leaq	_http_parser__n_res_http_dot(%rip), %rax
	popq	%rcx
	retq
LBB172_4:                               ## %http_parser__n_error_36.trampoline
	popq	%rax
	jmp	_http_parser__n_error_36 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_minor
_http_parser__n_res_http_minor:         ## @http_parser__n_res_http_minor
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB173_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB173_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_minor_1.trampoline
	incq	%rsi
	movb	%al, 75(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_http_end ## TAILCALL
LBB173_3:                               ## %no_data
	leaq	_http_parser__n_res_http_minor(%rip), %rax
	popq	%rcx
	retq
LBB173_4:                               ## %http_parser__n_error_35.trampoline
	popq	%rax
	jmp	_http_parser__n_error_35 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_end
_http_parser__n_res_http_end:           ## @http_parser__n_res_http_end
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB174_3
## %bb.1:                               ## %has_data
	cmpb	$32, (%rsi)
	jne	LBB174_4
## %bb.2:                               ## %http_parser__n_invoke_update_status_code.trampoline
	incq	%rsi
	andw	$0, 80(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_status_code ## TAILCALL
LBB174_3:                               ## %no_data
	leaq	_http_parser__n_res_http_end(%rip), %rax
	popq	%rcx
	retq
LBB174_4:                               ## %http_parser__n_error_34.trampoline
	popq	%rax
	jmp	_http_parser__n_error_34 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_status_code
_http_parser__n_res_status_code:        ## @http_parser__n_res_status_code
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdx, %r9
	cmpq	%rdx, %rsi
	je	LBB175_7
## %bb.1:                               ## %has_data.lr.ph
	movw	$10, %r8w
LBB175_2:                               ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	addb	$-48, %cl
	cmpb	$10, %cl
	jae	LBB175_8
## %bb.3:                               ## %switch.lookup
                                        ##   in Loop: Header=BB175_2 Depth=1
	movzwl	80(%rdi), %eax
	mulw	%r8w
	jo	LBB175_9
## %bb.4:                               ## %no_overflow.i.i
                                        ##   in Loop: Header=BB175_2 Depth=1
	movzbl	%cl, %ecx
	addw	%cx, %ax
	jb	LBB175_9
## %bb.5:                               ## %no_overflow.i.i
                                        ##   in Loop: Header=BB175_2 Depth=1
	cmpw	$999, %ax               ## imm = 0x3E7
	ja	LBB175_9
## %bb.6:                               ## %http_parser__n_res_status_code.trampoline.i
                                        ##   in Loop: Header=BB175_2 Depth=1
	incq	%rsi
	movw	%ax, 80(%rdi)
	cmpq	%rsi, %r9
	jne	LBB175_2
LBB175_7:                               ## %no_data
	leaq	_http_parser__n_res_status_code(%rip), %rax
	popq	%rcx
	retq
LBB175_8:                               ## %http_parser__n_res_status_code_otherwise.trampoline
	movq	%r9, %rdx
	popq	%rax
	jmp	_http_parser__n_res_status_code_otherwise ## TAILCALL
LBB175_9:                               ## %http_parser__n_error_32.trampoline.i
	incq	%rsi
	movq	%r9, %rdx
	popq	%rax
	jmp	_http_parser__n_error_32 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_32
_http_parser__n_error_32:               ## @http_parser__n_error_32
	.cfi_startproc
## %bb.0:
	movl	$13, 24(%rdi)
	leaq	_g_cstr_34(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_status_code_otherwise
_http_parser__n_res_status_code_otherwise: ## @http_parser__n_res_status_code_otherwise
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB177_6
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	cmpb	$10, %al
	je	LBB177_5
## %bb.2:                               ## %has_data
	cmpb	$13, %al
	je	LBB177_5
## %bb.3:                               ## %has_data
	cmpb	$32, %al
	jne	LBB177_7
## %bb.4:                               ## %http_parser__n_res_status_start.trampoline1
	incq	%rsi
LBB177_5:                               ## %http_parser__n_res_status_start.trampoline
	popq	%rax
	jmp	_http_parser__n_res_status_start ## TAILCALL
LBB177_6:                               ## %no_data
	leaq	_http_parser__n_res_status_code_otherwise(%rip), %rax
	popq	%rcx
	retq
LBB177_7:                               ## %http_parser__n_error_33.trampoline
	popq	%rax
	jmp	_http_parser__n_error_33 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_status_start
_http_parser__n_res_status_start:       ## @http_parser__n_res_status_start
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB178_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$10, %cl
	je	LBB178_4
## %bb.2:                               ## %has_data
	cmpb	$13, %cl
	jne	LBB178_3
## %bb.5:                               ## %http_parser__n_res_line_almost_done.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_res_line_almost_done ## TAILCALL
LBB178_6:                               ## %no_data
	leaq	_http_parser__n_res_status_start(%rip), %rax
	popq	%rcx
	retq
LBB178_4:                               ## %http_parser__n_header_field_start.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB178_3:                               ## %http_parser__n_span_start_http_parser__on_status.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_status ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_line_almost_done
_http_parser__n_res_line_almost_done:   ## @http_parser__n_res_line_almost_done
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB179_1
## %bb.2:                               ## %http_parser__n_header_field_start.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB179_1:                               ## %no_data
	leaq	_http_parser__n_res_line_almost_done(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_status
_http_parser__n_span_start_http_parser__on_status: ## @http_parser__n_span_start_http_parser__on_status
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB180_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_status@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_status ## TAILCALL
LBB180_1:                               ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_status(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_status
_http_parser__n_res_status:             ## @http_parser__n_res_status
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
LBB181_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %r15
	je	LBB181_9
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB181_1 Depth=1
	movb	(%rbx), %al
	incq	%rbx
	cmpb	$13, %al
	je	LBB181_7
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB181_1 Depth=1
	cmpb	$10, %al
	jne	LBB181_1
## %bb.4:                               ## %http_parser__n_span_end_http_parser__on_status.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	leaq	-1(%rbx), %rdx
	movq	%r14, %rdi
	callq	_http_parser__on_status
	testl	%eax, %eax
	jne	LBB181_5
## %bb.11:                              ## %http_parser__n_header_field_start.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB181_7:                               ## %http_parser__n_span_end_http_parser__on_status_1.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	leaq	-1(%rbx), %rdx
	movq	%r14, %rdi
	callq	_http_parser__on_status
	testl	%eax, %eax
	jne	LBB181_8
## %bb.12:                              ## %http_parser__n_res_line_almost_done.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_res_line_almost_done ## TAILCALL
LBB181_9:                               ## %no_data
	leaq	_http_parser__n_res_status(%rip), %rax
LBB181_10:                              ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB181_8:                               ## %http_parser__n_span_end_http_parser__on_status_1.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_res_line_almost_done(%rip), %rax
	jmp	LBB181_6
LBB181_5:                               ## %http_parser__n_span_end_http_parser__on_status.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_header_field_start(%rip), %rax
LBB181_6:                               ## %http_parser__n_span_end_http_parser__on_status.exit
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB181_10
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_33
_http_parser__n_error_33:               ## @http_parser__n_error_33
	.cfi_startproc
## %bb.0:
	movl	$13, 24(%rdi)
	leaq	_g_cstr_35(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_34
_http_parser__n_error_34:               ## @http_parser__n_error_34
	.cfi_startproc
## %bb.0:
	movl	$13, 24(%rdi)
	leaq	_g_cstr_35(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_35
_http_parser__n_error_35:               ## @http_parser__n_error_35
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_22(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_36
_http_parser__n_error_36:               ## @http_parser__n_error_36
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_23(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_37
_http_parser__n_error_37:               ## @http_parser__n_error_37
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_24(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_40
_http_parser__n_error_40:               ## @http_parser__n_error_40
	.cfi_startproc
## %bb.0:
	movl	$8, 24(%rdi)
	leaq	_g_cstr_25(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_or_res
_http_parser__n_start_req_or_res:       ## @http_parser__n_start_req_or_res
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB188_3
## %bb.1:                               ## %has_data
	cmpb	$72, (%rsi)
	jne	LBB188_4
## %bb.2:                               ## %http_parser__n_req_or_res_method.trampoline
	popq	%rax
	jmp	_http_parser__n_req_or_res_method ## TAILCALL
LBB188_3:                               ## %no_data
	leaq	_http_parser__n_start_req_or_res(%rip), %rax
	popq	%rcx
	retq
LBB188_4:                               ## %http_parser__n_invoke_update_type_2.trampoline
	movb	$1, 72(%rdi)
	popq	%rax
	jmp	_http_parser__n_start_req ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_or_res_method
_http_parser__n_req_or_res_method:      ## @http_parser__n_req_or_res_method
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB189_3
## %bb.1:                               ## %has_data
	cmpb	$72, (%rsi)
	jne	LBB189_4
## %bb.2:                               ## %http_parser__n_req_or_res_method_1.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_req_or_res_method_1 ## TAILCALL
LBB189_3:                               ## %no_data
	leaq	_http_parser__n_req_or_res_method(%rip), %rax
	popq	%rcx
	retq
LBB189_4:                               ## %http_parser__n_error_38.trampoline
	popq	%rax
	jmp	_http_parser__n_error_38 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_or_res_method_1
_http_parser__n_req_or_res_method_1:    ## @http_parser__n_req_or_res_method_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB190_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$69, %cl
	je	LBB190_4
## %bb.2:                               ## %has_data
	cmpb	$84, %cl
	jne	LBB190_3
## %bb.5:                               ## %http_parser__n_req_or_res_method_3.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_req_or_res_method_3 ## TAILCALL
LBB190_6:                               ## %no_data
	leaq	_http_parser__n_req_or_res_method_1(%rip), %rax
	popq	%rcx
	retq
LBB190_4:                               ## %http_parser__n_req_or_res_method_2.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_req_or_res_method_2 ## TAILCALL
LBB190_3:                               ## %http_parser__n_error_38.trampoline
	popq	%rax
	jmp	_http_parser__n_error_38 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_or_res_method_2
_http_parser__n_req_or_res_method_2:    ## @http_parser__n_req_or_res_method_2
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	je	LBB191_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_46(%rip), %r8
LBB191_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB191_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB191_2 Depth=1
	cmpl	$1, %ecx
	je	LBB191_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB191_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB191_2
## %bb.7:
	movb	$1, %al
	jmp	LBB191_8
LBB191_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB191_8
LBB191_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB191_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB191_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB191_12
## %bb.10:                              ## %http_parser__n_invoke_store_method.trampoline
	incq	%rsi
	movb	$2, 73(%rdi)
	popq	%rax
	jmp	_http_parser__n_invoke_update_type ## TAILCALL
LBB191_11:                              ## %pause
	leaq	_http_parser__n_req_or_res_method_2(%rip), %rax
	popq	%rcx
	retq
LBB191_12:                              ## %http_parser__n_error_38.trampoline
	popq	%rax
	jmp	_http_parser__n_error_38 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_update_type
_http_parser__n_invoke_update_type:     ## @http_parser__n_invoke_update_type
	.cfi_startproc
## %bb.0:                               ## %otherwise
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$1, 72(%rdi)
	popq	%rax
	jmp	_http_parser__n_req_spaces_before_url ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_38
_http_parser__n_error_38:               ## @http_parser__n_error_38
	.cfi_startproc
## %bb.0:
	movl	$8, 24(%rdi)
	leaq	_g_cstr_36(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_or_res_method_3
_http_parser__n_req_or_res_method_3:    ## @http_parser__n_req_or_res_method_3
	.cfi_startproc
## %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rdx, %rsi
	je	LBB194_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_47(%rip), %r10
	xorl	%eax, %eax
LBB194_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB194_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB194_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB194_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB194_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB194_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB194_8
LBB194_3:
	movb	$2, %r9b
	jmp	LBB194_8
LBB194_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB194_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB194_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB194_12
## %bb.10:                              ## %http_parser__n_invoke_update_type_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$2, 72(%rdi)
	popq	%rbx
	jmp	_http_parser__n_res_http_major ## TAILCALL
LBB194_11:                              ## %pause
	leaq	_http_parser__n_req_or_res_method_3(%rip), %rax
	popq	%rbx
	retq
LBB194_12:                              ## %http_parser__n_error_38.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_38 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error
_http_parser__n_error:                  ## @http_parser__n_error
	.cfi_startproc
## %bb.0:
	movl	$15, 24(%rdi)
	leaq	_g_cstr_38(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_http_parser_init       ## -- Begin function http_parser_init
	.p2align	4, 0x90
_http_parser_init:                      ## @http_parser_init
## %bb.0:
	movl	$0, (%rdi)
	movl	$0, 24(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 40(%rdi)
	movq	$0, 32(%rdi)
	leaq	_http_parser__n_start(%rip), %rax
	movq	%rax, 56(%rdi)
	movw	$0, 80(%rdi)
	movb	$0, 82(%rdi)
	movq	$0, 88(%rdi)
	movq	$0, 71(%rdi)
	movq	$0, 64(%rdi)
	retq
                                        ## -- End function
	.globl	_http_parser_execute    ## -- Begin function http_parser_execute
	.p2align	4, 0x90
_http_parser_execute:                   ## @http_parser_execute
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	24(%rdi), %ebp
	testl	%ebp, %ebp
	jne	LBB197_5
## %bb.1:                               ## %no_error
	cmpq	$0, 8(%rbx)
	je	LBB197_2
## %bb.9:                               ## %span_restart_0
	movq	%rsi, 8(%rbx)
LBB197_2:                               ## %span_empty_0
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*56(%rbx)
	testq	%rax, %rax
	je	LBB197_8
## %bb.3:                               ## %success
	movq	%rax, 56(%rbx)
	movq	8(%rbx), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	LBB197_5
## %bb.4:                               ## %span_present_0
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*16(%rbx)
	testl	%eax, %eax
	jne	LBB197_7
LBB197_5:                               ## %span_empty_01
	movl	%ebp, %eax
LBB197_6:                               ## %span_empty_01
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB197_8:                               ## %error
	movl	24(%rbx), %eax
	jmp	LBB197_6
LBB197_7:                               ## %span_error_0
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rcx
	movq	%rcx, 32(%rbx)
	movq	%r14, 40(%rbx)
	jmp	LBB197_6
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
_g_blob:                                ## @g_blob
	.ascii	"CL"

	.p2align	4               ## @g_lookup_table
_g_lookup_table:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\001\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\002\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\000\000\000\000\000\000\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.p2align	4               ## @g_cstr
_g_cstr:
	.asciz	"Invalid characters in url"

	.p2align	4               ## @g_lookup_table_1
_g_lookup_table_1:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001\000\000\000\000\000\000\000\000\000\000\001\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001"

	.p2align	4               ## @g_cstr_1
_g_cstr_1:
	.asciz	"Span callback error"

	.p2align	4               ## @g_cstr_2
_g_cstr_2:
	.asciz	"pause on CONNECT/Upgrade"

	.p2align	4               ## @g_cstr_3
_g_cstr_3:
	.asciz	"on_message_complete pause"

	.p2align	4               ## @g_cstr_4
_g_cstr_4:
	.asciz	"on_message_complete callback error"

	.p2align	4               ## @g_cstr_5
_g_cstr_5:
	.asciz	"on_chunk_complete pause"

	.p2align	4               ## @g_cstr_6
_g_cstr_6:
	.asciz	"on_chunk_complete callback error"

	.p2align	4               ## @g_cstr_7
_g_cstr_7:
	.asciz	"Content-Length can't be present with chunked encoding"

	.p2align	4               ## @g_cstr_8
_g_cstr_8:
	.asciz	"Chunk size overflow"

	.p2align	4               ## @g_cstr_9
_g_cstr_9:
	.asciz	"on_chunk_header pause"

	.p2align	4               ## @g_cstr_10
_g_cstr_10:
	.asciz	"on_chunk_header callback error"

	.p2align	4               ## @g_cstr_11
_g_cstr_11:
	.asciz	"Invalid character in chunk size"

	.p2align	4               ## @g_cstr_12
_g_cstr_12:
	.asciz	"paused by on_headers_complete"

	.p2align	4               ## @g_cstr_13
_g_cstr_13:
	.asciz	"User callback error"

_g_blob_1:                              ## @g_blob_1
	.ascii	"on"

_g_blob_2:                              ## @g_blob_2
	.ascii	"ection"

_g_blob_3:                              ## @g_blob_3
	.ascii	"lose"

	.p2align	4               ## @g_cstr_14
_g_cstr_14:
	.asciz	"Missing expected LF after header value"

	.p2align	4               ## @g_cstr_15
_g_cstr_15:
	.asciz	"invalid header value char"

	.p2align	4               ## @g_lookup_table_2
_g_lookup_table_2:
	.asciz	"\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\002\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

_g_blob_4:                              ## @g_blob_4
	.ascii	"eep-alive"

	.p2align	4               ## @g_lookup_table_3
_g_lookup_table_3:
	.asciz	"\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

	.p2align	4               ## @g_cstr_16
_g_cstr_16:
	.asciz	"Content-Length overflow"

	.p2align	4               ## @g_cstr_17
_g_cstr_17:
	.asciz	"Invalid character in Content-Length"

	.p2align	4               ## @g_cstr_18
_g_cstr_18:
	.asciz	"Duplicate Content-Length"

_g_blob_6:                              ## @g_blob_6
	.ascii	"hunked"

	.p2align	4               ## @g_lookup_table_4
_g_lookup_table_4:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\001\001\001\001\001\000\000\001\001\000\001\001\000\001\001\001\001\001\001\001\001\001\001\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.p2align	4               ## @g_cstr_19
_g_cstr_19:
	.asciz	"Invalid header token"

_g_blob_7:                              ## @g_blob_7
	.ascii	"ent-length"

_g_blob_8:                              ## @g_blob_8
	.ascii	"roxy-connection"

_g_blob_9:                              ## @g_blob_9
	.ascii	"ransfer-encoding"

_g_blob_10:                             ## @g_blob_10
	.ascii	"pgrade"

_g_blob_11:                             ## @g_blob_11
	.ascii	"\r\n"

_g_cstr_20:                             ## @g_cstr_20
	.asciz	"Expected CRLF"

_g_blob_12:                             ## @g_blob_12
	.ascii	"TTP/"

	.p2align	4               ## @g_cstr_21
_g_cstr_21:
	.asciz	"Expected CRLF after version"

	.p2align	4               ## @g_cstr_22
_g_cstr_22:
	.asciz	"Invalid minor version"

_g_cstr_23:                             ## @g_cstr_23
	.asciz	"Expected dot"

	.p2align	4               ## @g_cstr_24
_g_cstr_24:
	.asciz	"Invalid major version"

_g_cstr_25:                             ## @g_cstr_25
	.asciz	"Expected HTTP/"

	.p2align	4               ## @g_lookup_table_5
_g_lookup_table_5:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\001\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\000\000\000\000\000\000\000\000\000\000\004\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004"

	.p2align	4               ## @g_cstr_26
_g_cstr_26:
	.asciz	"Invalid char in url fragment start"

	.p2align	4               ## @g_lookup_table_6
_g_lookup_table_6:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\001\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\004\004\005\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\000\000\000\000\000\000\000\000\000\000\004\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004"

	.p2align	4               ## @g_cstr_27
_g_cstr_27:
	.asciz	"Invalid char in url query"

	.p2align	4               ## @g_cstr_28
_g_cstr_28:
	.asciz	"Invalid char in url path"

_g_blob_13:                             ## @g_blob_13
	.space	2,47

	.p2align	4               ## @g_lookup_table_8
_g_lookup_table_8:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\001\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\004\000\000\004\004\004\004\004\004\004\004\004\004\004\005\004\004\004\004\004\004\004\004\004\004\004\004\000\004\000\006\007\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\000\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

_g_cstr_29:                             ## @g_cstr_29
	.asciz	"Double @ in url"

	.p2align	4               ## @g_cstr_30
_g_cstr_30:
	.asciz	"Unexpected char in url server"

	.p2align	4               ## @g_cstr_31
_g_cstr_31:
	.asciz	"Unexpected char in url schema"

	.p2align	4               ## @g_cstr_32
_g_cstr_32:
	.asciz	"Unexpected start char in url"

	.p2align	4               ## @g_cstr_33
_g_cstr_33:
	.asciz	"Invalid method encountered"

_g_blob_15:                             ## @g_blob_15
	.ascii	"ECKOUT"

_g_blob_16:                             ## @g_blob_16
	.ascii	"NECT"

_g_blob_17:                             ## @g_blob_17
	.ascii	"ELETE"

_g_blob_18:                             ## @g_blob_18
	.ascii	"ET"

_g_blob_19:                             ## @g_blob_19
	.ascii	"EAD"

_g_blob_22:                             ## @g_blob_22
	.ascii	"SEARCH"

_g_blob_23:                             ## @g_blob_23
	.ascii	"RGE"

_g_blob_24:                             ## @g_blob_24
	.ascii	"CTIVITY"

_g_blob_25:                             ## @g_blob_25
	.ascii	"LENDAR"

_g_blob_26:                             ## @g_blob_26
	.ascii	"VE"

_g_blob_27:                             ## @g_blob_27
	.ascii	"OTIFY"

_g_blob_28:                             ## @g_blob_28
	.ascii	"PTIONS"

_g_blob_29:                             ## @g_blob_29
	.ascii	"TCH"

_g_blob_30:                             ## @g_blob_30
	.ascii	"ST"

_g_blob_31:                             ## @g_blob_31
	.ascii	"OP"

_g_blob_33:                             ## @g_blob_33
	.ascii	"ATCH"

_g_blob_34:                             ## @g_blob_34
	.ascii	"GE"

_g_blob_36:                             ## @g_blob_36
	.ascii	"ORT"

_g_blob_37:                             ## @g_blob_37
	.ascii	"ARCH"

_g_blob_38:                             ## @g_blob_38
	.ascii	"URCE"

_g_blob_39:                             ## @g_blob_39
	.ascii	"BSCRIBE"

_g_blob_40:                             ## @g_blob_40
	.ascii	"RACE"

_g_blob_41:                             ## @g_blob_41
	.ascii	"IND"

_g_blob_42:                             ## @g_blob_42
	.ascii	"NK"

_g_blob_43:                             ## @g_blob_43
	.ascii	"CK"

_g_blob_44:                             ## @g_blob_44
	.ascii	"UBSCRIBE"

_g_blob_45:                             ## @g_blob_45
	.ascii	"HTTP/"

	.p2align	4               ## @g_cstr_34
_g_cstr_34:
	.asciz	"Response overflow"

	.p2align	4               ## @g_cstr_35
_g_cstr_35:
	.asciz	"Invalid response status"

_g_blob_46:                             ## @g_blob_46
	.ascii	"AD"

	.p2align	4               ## @g_cstr_36
_g_cstr_36:
	.asciz	"Invalid word encountered"

_g_blob_47:                             ## @g_blob_47
	.ascii	"TP/"

	.p2align	4               ## @g_cstr_37
_g_cstr_37:
	.asciz	"on_message_begin pause"

	.p2align	4               ## @g_cstr_38
_g_cstr_38:
	.asciz	"on_message_begin callback error"

	.p2align	4               ## @switch.table.http_parser__n_chunk_size
l_switch.table.http_parser__n_chunk_size:
	.quad	0                       ## 0x0
	.quad	1                       ## 0x1
	.quad	2                       ## 0x2
	.quad	3                       ## 0x3
	.quad	4                       ## 0x4
	.quad	5                       ## 0x5
	.quad	6                       ## 0x6
	.quad	7                       ## 0x7
	.quad	8                       ## 0x8
	.quad	9                       ## 0x9
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	10                      ## 0xa
	.quad	11                      ## 0xb
	.quad	12                      ## 0xc
	.quad	13                      ## 0xd
	.quad	14                      ## 0xe
	.quad	15                      ## 0xf
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	0                       ## 0x0
	.quad	10                      ## 0xa
	.quad	11                      ## 0xb
	.quad	12                      ## 0xc
	.quad	13                      ## 0xd
	.quad	14                      ## 0xe
	.quad	15                      ## 0xf


.subsections_via_symbols
