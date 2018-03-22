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
	leaq	_g_cstr_38(%rip), %rax
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
LBB2_3:                                 ## %http_parser__n_error_40.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
LBB3_12:                                ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
## %bb.4:                               ## %http_parser__n_error_30.trampoline
	popq	%rax
	jmp	_http_parser__n_error_30 ## TAILCALL
LBB7_8:                                 ## %http_parser__n_error_32.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_32 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_30
_http_parser__n_error_30:               ## @http_parser__n_error_30
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
LBB10_6:                                ## %http_parser__n_error_26.trampoline
	popq	%rax
	jmp	_http_parser__n_error_26 ## TAILCALL
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
## %bb.19:                              ## %http_parser__n_error_11.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_11 ## TAILCALL
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
LBB15_15:                               ## %http_parser__n_error_10.trampoline.i.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_10 ## TAILCALL
LBB15_18:
	leaq	_http_parser__n_message_done(%rip), %rax
	leaq	_g_cstr_5(%rip), %rcx
	jmp	LBB15_9
LBB15_8:
	leaq	_http_parser__n_headers_done(%rip), %rax
	leaq	_g_cstr_13(%rip), %rcx
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
## %bb.2:                               ## %http_parser__n_error_9.trampoline
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_9 ## TAILCALL
LBB16_3:                                ## %http_parser__n_cleanup.trampoline
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_http_parser__after_message_complete ## TAILCALL
LBB16_4:                                ## %http_parser__n_pause_5.trampoline
	movl	$20, 24(%r15)
	leaq	_g_cstr_3(%rip), %rax
	movq	%rax, 32(%r15)
	movq	%r14, 40(%r15)
	leaq	_http_parser__n_cleanup(%rip), %rax
	movq	%rax, 56(%r15)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_http_parser__after_message_complete
_http_parser__n_invoke_http_parser__after_message_complete: ## @http_parser__n_invoke_http_parser__after_message_complete
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	_http_parser__after_message_complete
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	cmpl	$1, %eax
	jne	LBB17_1
## %bb.2:                               ## %http_parser__n_restart.trampoline
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_start   ## TAILCALL
LBB17_1:                                ## %http_parser__n_closed.trampoline
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_closed  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_closed
_http_parser__n_closed:                 ## @http_parser__n_closed
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB18_4
LBB18_1:                                ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %al
	cmpb	$10, %al
	je	LBB18_3
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB18_1 Depth=1
	cmpb	$13, %al
	jne	LBB18_5
LBB18_3:                                ## %http_parser__n_closed.trampoline
                                        ##   in Loop: Header=BB18_1 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	LBB18_1
LBB18_4:                                ## %no_data
	leaq	_http_parser__n_closed(%rip), %rax
	retq
LBB18_5:                                ## %http_parser__n_error_3.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_3 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_3
_http_parser__n_error_3:                ## @http_parser__n_error_3
	.cfi_startproc
## %bb.0:
	movl	$5, 24(%rdi)
	leaq	_g_cstr_2(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_9
_http_parser__n_error_9:                ## @http_parser__n_error_9
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_11
_http_parser__n_error_11:               ## @http_parser__n_error_11
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_10
_http_parser__n_error_10:               ## @http_parser__n_error_10
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
## %bb.10:                              ## %http_parser__n_error_4.trampoline.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_4 ## TAILCALL
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
	leaq	_g_cstr_8(%rip), %rax
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_pause_1
_http_parser__n_pause_1:                ## @http_parser__n_pause_1
	.cfi_startproc
## %bb.0:
	movl	$21, 24(%rdi)
	leaq	_g_cstr_8(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	leaq	_http_parser__n_cleanup(%rip), %rax
	movq	%rax, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_4
_http_parser__n_error_4:                ## @http_parser__n_error_4
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
	je	LBB29_7
## %bb.1:                               ## %has_data.lr.ph
	movabsq	$35465847073801215, %r8 ## imm = 0x7E0000007E03FF
	pushq	$16
	.cfi_adjust_cfa_offset 8
	popq	%r9
	.cfi_adjust_cfa_offset -8
	leaq	l_switch.table.http_parser__n_chunk_size(%rip), %r10
LBB29_2:                                ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	addb	$-48, %cl
	cmpb	$55, %cl
	jae	LBB29_8
## %bb.3:                               ## %switch.hole_check
                                        ##   in Loop: Header=BB29_2 Depth=1
	movzbl	%cl, %eax
	btq	%rax, %r8
	jae	LBB29_8
## %bb.4:                               ## %switch.lookup
                                        ##   in Loop: Header=BB29_2 Depth=1
	movq	64(%rdi), %rax
	mulq	%r9
	jo	LBB29_9
## %bb.5:                               ## %no_overflow.i.i
                                        ##   in Loop: Header=BB29_2 Depth=1
	movsbq	%cl, %rcx
	addq	(%r10,%rcx,8), %rax
	jb	LBB29_9
## %bb.6:                               ## %http_parser__n_chunk_size.trampoline.i
                                        ##   in Loop: Header=BB29_2 Depth=1
	incq	%rsi
	movq	%rax, 64(%rdi)
	cmpq	%rsi, %r11
	jne	LBB29_2
LBB29_7:                                ## %no_data
	leaq	_http_parser__n_chunk_size(%rip), %rax
	popq	%rcx
	retq
LBB29_8:                                ## %http_parser__n_chunk_size_otherwise.trampoline
	movq	%r11, %rdx
	popq	%rax
	jmp	_http_parser__n_chunk_size_otherwise ## TAILCALL
LBB29_9:                                ## %http_parser__n_error_5.trampoline.i
	incq	%rsi
	movq	%r11, %rdx
	popq	%rax
	jmp	_http_parser__n_error_5 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_5
_http_parser__n_error_5:                ## @http_parser__n_error_5
	.cfi_startproc
## %bb.0:
	movl	$12, 24(%rdi)
	leaq	_g_cstr_9(%rip), %rax
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
	je	LBB31_7
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$13, %cl
	je	LBB31_5
## %bb.2:                               ## %has_data
	cmpb	$32, %cl
	je	LBB31_6
## %bb.3:                               ## %has_data
	cmpb	$59, %cl
	jne	LBB31_4
LBB31_6:                                ## %http_parser__n_chunk_parameters.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_chunk_parameters ## TAILCALL
LBB31_7:                                ## %no_data
	leaq	_http_parser__n_chunk_size_otherwise(%rip), %rax
	popq	%rcx
	retq
LBB31_5:                                ## %http_parser__n_chunk_size_almost_done.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_chunk_size_almost_done ## TAILCALL
LBB31_4:                                ## %http_parser__n_error_8.trampoline
	popq	%rax
	jmp	_http_parser__n_error_8 ## TAILCALL
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
	je	LBB32_6
## %bb.1:                               ## %http_parser__n_chunk_size_almost_done_lf.trampoline
	incq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__on_chunk_header
	testl	%eax, %eax
	je	LBB32_4
## %bb.2:                               ## %http_parser__n_chunk_size_almost_done_lf.trampoline
	cmpl	$20, %eax
	je	LBB32_5
## %bb.3:                               ## %http_parser__n_error_6.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_6 ## TAILCALL
LBB32_6:                                ## %no_data
	leaq	_http_parser__n_chunk_size_almost_done(%rip), %rax
LBB32_7:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB32_4:                                ## %http_parser__n_invoke_is_equal_content_length.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_is_equal_content_length ## TAILCALL
LBB32_5:                                ## %http_parser__n_invoke_http_parser__on_chunk_header.exit
	movl	$20, 24(%r14)
	leaq	_g_cstr_10(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_invoke_is_equal_content_length(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB32_7
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_invoke_is_equal_content_length
_http_parser__n_invoke_is_equal_content_length: ## @http_parser__n_invoke_is_equal_content_length
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, 64(%rdi)
	jne	LBB33_2
## %bb.1:                               ## %http_parser__n_invoke_or_flags.trampoline
	orb	$-128, 77(%rdi)
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB33_2:                                ## %http_parser__n_chunk_data.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_body ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_body
_http_parser__n_span_start_http_parser__on_body: ## @http_parser__n_span_start_http_parser__on_body
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB34_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_body@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_consume_content_length ## TAILCALL
LBB34_1:                                ## %no_data
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
	ja	LBB35_3
## %bb.1:                               ## %has_data
	andq	$0, 64(%rbx)
	addq	%rax, %r14
	movq	8(%rbx), %rsi
	andq	$0, 8(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_http_parser__on_body
	testl	%eax, %eax
	jne	LBB35_2
## %bb.5:                               ## %http_parser__n_chunk_data_almost_done.trampoline.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_chunk_data_almost_done ## TAILCALL
LBB35_3:                                ## %no_data
	movq	%rcx, 64(%rbx)
	leaq	_http_parser__n_consume_content_length(%rip), %rax
	jmp	LBB35_4
LBB35_2:                                ## %http_parser__n_span_end_http_parser__on_body.exit
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, 40(%rbx)
	leaq	_http_parser__n_chunk_data_almost_done(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
LBB35_4:                                ## %no_data
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
	je	LBB36_1
## %bb.2:                               ## %http_parser__n_chunk_data_almost_done_skip.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_chunk_data_almost_done_skip ## TAILCALL
LBB36_1:                                ## %no_data
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
	je	LBB37_6
## %bb.1:                               ## %http_parser__n_chunk_complete.trampoline
	incq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_http_parser__on_chunk_complete
	testl	%eax, %eax
	je	LBB37_4
## %bb.2:                               ## %http_parser__n_chunk_complete.trampoline
	cmpl	$20, %eax
	je	LBB37_5
## %bb.3:                               ## %http_parser__n_error_7.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_7 ## TAILCALL
LBB37_6:                                ## %no_data
	leaq	_http_parser__n_chunk_data_almost_done_skip(%rip), %rax
LBB37_7:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB37_4:                                ## %http_parser__n_chunk_size_start.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_update_content_length ## TAILCALL
LBB37_5:                                ## %http_parser__n_invoke_http_parser__on_chunk_complete.exit
	movl	$20, 24(%r14)
	leaq	_g_cstr_5(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_chunk_size_start(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB37_7
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_7
_http_parser__n_error_7:                ## @http_parser__n_error_7
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_6
_http_parser__n_error_6:                ## @http_parser__n_error_6
	.cfi_startproc
## %bb.0:
	movl	$18, 24(%rdi)
	leaq	_g_cstr_11(%rip), %rax
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
LBB41_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB41_4
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB41_1 Depth=1
	cmpb	$13, (%rsi)
	leaq	1(%rsi), %rsi
	jne	LBB41_1
## %bb.3:                               ## %http_parser__n_chunk_size_almost_done.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	jmp	_http_parser__n_chunk_size_almost_done ## TAILCALL
LBB41_4:                                ## %no_data
	leaq	_http_parser__n_chunk_parameters(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_8
_http_parser__n_error_8:                ## @http_parser__n_error_8
	.cfi_startproc
## %bb.0:
	movl	$12, 24(%rdi)
	leaq	_g_cstr_12(%rip), %rax
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
	je	LBB43_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_body@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_consume_content_length_1 ## TAILCALL
LBB43_1:                                ## %no_data
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
	ja	LBB44_3
## %bb.1:                               ## %has_data
	andq	$0, 64(%rbx)
	addq	%rax, %r14
	movq	8(%rbx), %rsi
	andq	$0, 8(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_http_parser__on_body
	testl	%eax, %eax
	jne	LBB44_2
## %bb.5:                               ## %http_parser__n_message_done.trampoline.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_invoke_http_parser__on_message_complete_2 ## TAILCALL
LBB44_3:                                ## %no_data
	movq	%rcx, 64(%rbx)
	leaq	_http_parser__n_consume_content_length_1(%rip), %rax
	jmp	LBB44_4
LBB44_2:                                ## %http_parser__n_span_end_http_parser__on_body_1.exit
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, 40(%rbx)
	leaq	_http_parser__n_message_done(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
LBB44_4:                                ## %no_data
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
	je	LBB45_2
## %bb.1:                               ## %has_data
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_body@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	movb	$1, 82(%rdi)
	leaq	_http_parser__n_eof(%rip), %rax
	retq
LBB45_2:                                ## %no_data
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
	leaq	_g_cstr_14(%rip), %rax
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
	je	LBB50_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_header_field@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_header_field ## TAILCALL
LBB50_1:                                ## %no_data
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
	je	LBB51_10
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	orb	$32, %cl
	cmpb	$99, %cl
	je	LBB51_6
## %bb.2:                               ## %has_data
	cmpb	$112, %cl
	je	LBB51_7
## %bb.3:                               ## %has_data
	cmpb	$116, %cl
	je	LBB51_8
## %bb.4:                               ## %has_data
	cmpb	$117, %cl
	jne	LBB51_5
## %bb.9:                               ## %http_parser__n_header_field_7.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_7 ## TAILCALL
LBB51_10:                               ## %no_data
	leaq	_http_parser__n_header_field(%rip), %rax
	popq	%rcx
	retq
LBB51_6:                                ## %http_parser__n_header_field_1.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_1 ## TAILCALL
LBB51_7:                                ## %http_parser__n_header_field_5.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_5 ## TAILCALL
LBB51_8:                                ## %http_parser__n_header_field_6.trampoline
	popq	%rax
	jmp	_http_parser__n_header_field_6 ## TAILCALL
LBB51_5:                                ## %http_parser__n_invoke_update_header_state_7.trampoline
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
	je	LBB52_10
## %bb.1:                               ## %has_data
	movl	(%rdi), %r9d
	leaq	_g_blob_1(%rip), %r8
LBB52_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %al
	orb	$32, %al
	movslq	%r9d, %rcx
	cmpb	(%rcx,%r8), %al
	jne	LBB52_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB52_2 Depth=1
	cmpl	$1, %r9d
	je	LBB52_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB52_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%r9d
	cmpq	%rax, %rdx
	jne	LBB52_2
## %bb.7:
	movb	$1, %al
	jmp	LBB52_8
LBB52_3:
	movb	$2, %al
	xorl	%r9d, %r9d
	jmp	LBB52_8
LBB52_5:
	xorl	%r9d, %r9d
	xorl	%eax, %eax
LBB52_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r9d, (%rdi)
	andb	$3, %al
	cmpb	$2, %al
	je	LBB52_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %al
	je	LBB52_10
## %bb.12:                              ## %http_parser__n_header_field_2.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_2 ## TAILCALL
LBB52_10:                               ## %pause
	leaq	_http_parser__n_header_field_1(%rip), %rax
	popq	%rcx
	retq
LBB52_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
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
	je	LBB53_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	orb	$32, %cl
	cmpb	$110, %cl
	je	LBB53_4
## %bb.2:                               ## %has_data
	cmpb	$116, %cl
	jne	LBB53_3
## %bb.5:                               ## %http_parser__n_header_field_4.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_4 ## TAILCALL
LBB53_6:                                ## %no_data
	leaq	_http_parser__n_header_field_2(%rip), %rax
	popq	%rcx
	retq
LBB53_4:                                ## %http_parser__n_header_field_3.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_3 ## TAILCALL
LBB53_3:                                ## %http_parser__n_invoke_update_header_state_7.trampoline
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
	je	LBB54_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_2(%rip), %r10
	xorl	%eax, %eax
LBB54_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB54_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB54_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB54_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB54_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB54_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB54_8
LBB54_3:
	movb	$2, %r9b
	jmp	LBB54_8
LBB54_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB54_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB54_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB54_10
## %bb.12:                              ## %http_parser__n_invoke_store_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$2
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB54_10:                               ## %pause
	leaq	_http_parser__n_header_field_3(%rip), %rax
	popq	%rbx
	retq
LBB54_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
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
LBB56_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %r15
	je	LBB56_6
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB56_1 Depth=1
	movb	(%rbx), %al
	incq	%rbx
	cmpb	$32, %al
	je	LBB56_1
## %bb.3:                               ## %has_data
	cmpb	$58, %al
	jne	LBB56_8
## %bb.4:                               ## %http_parser__n_span_end_http_parser__on_header_field.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	leaq	-1(%rbx), %rdx
	movq	%r14, %rdi
	callq	_http_parser__on_header_field
	testl	%eax, %eax
	jne	LBB56_5
## %bb.9:                               ## %http_parser__n_header_value_discard_ws.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_value_discard_ws ## TAILCALL
LBB56_8:                                ## %http_parser__n_invoke_update_header_state_6.trampoline
	movb	$0, 76(%r14)
	decq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_field_general ## TAILCALL
LBB56_6:                                ## %no_data
	leaq	_http_parser__n_header_field_colon(%rip), %rax
LBB56_7:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB56_5:                                ## %http_parser__n_span_end_http_parser__on_header_field.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_header_value_discard_ws(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB56_7
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_discard_ws
_http_parser__n_header_value_discard_ws: ## @http_parser__n_header_value_discard_ws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB57_6
LBB57_1:                                ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %al
	cmpb	$9, %al
	je	LBB57_5
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB57_1 Depth=1
	cmpb	$10, %al
	je	LBB57_7
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB57_1 Depth=1
	cmpb	$13, %al
	je	LBB57_8
## %bb.4:                               ## %has_data
                                        ##   in Loop: Header=BB57_1 Depth=1
	cmpb	$32, %al
	jne	LBB57_9
LBB57_5:                                ## %http_parser__n_header_value_discard_ws.trampoline
                                        ##   in Loop: Header=BB57_1 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	LBB57_1
LBB57_6:                                ## %no_data
	leaq	_http_parser__n_header_value_discard_ws(%rip), %rax
	popq	%rcx
	retq
LBB57_7:                                ## %http_parser__n_header_value_discard_lws.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_lws ## TAILCALL
LBB57_8:                                ## %http_parser__n_header_value_discard_ws_almost_done.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_ws_almost_done ## TAILCALL
LBB57_9:                                ## %http_parser__n_span_start_http_parser__on_header_value_1.trampoline
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
	je	LBB58_11
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	cmpb	$9, %al
	je	LBB58_10
## %bb.2:                               ## %has_data
	cmpb	$32, %al
	jne	LBB58_3
LBB58_10:                               ## %http_parser__n_header_value_discard_ws.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_ws ## TAILCALL
LBB58_11:                               ## %no_data
	leaq	_http_parser__n_header_value_discard_lws(%rip), %rax
	popq	%rcx
	retq
LBB58_3:                                ## %http_parser__n_invoke_load_header_state.trampoline
	movb	76(%rdi), %al
	addb	$-6, %al
	cmpb	$3, %al
	ja	LBB58_9
## %bb.4:                               ## %http_parser__n_invoke_load_header_state.trampoline
	movzbl	%al, %eax
	leaq	LJTI58_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB58_5:                                ## %http_parser__n_invoke_or_flags_2.trampoline.i
	orb	$1, 77(%rdi)
	jmp	LBB58_9
LBB58_6:                                ## %http_parser__n_invoke_or_flags_3.trampoline.i
	orb	$2, 77(%rdi)
	jmp	LBB58_9
LBB58_7:                                ## %http_parser__n_invoke_or_flags_4.trampoline.i
	orb	$4, 77(%rdi)
	jmp	LBB58_9
LBB58_8:                                ## %http_parser__n_invoke_or_flags_5.trampoline.i
	orb	$8, 77(%rdi)
LBB58_9:                                ## %http_parser__n_span_start_http_parser__on_header_value.trampoline.i
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_header_value ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L58_0_set_5 = LBB58_5-LJTI58_0
L58_0_set_6 = LBB58_6-LJTI58_0
L58_0_set_7 = LBB58_7-LJTI58_0
L58_0_set_8 = LBB58_8-LJTI58_0
LJTI58_0:
	.long	L58_0_set_5
	.long	L58_0_set_6
	.long	L58_0_set_7
	.long	L58_0_set_8
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
	je	LBB59_3
## %bb.1:                               ## %has_data
	movq	_http_parser__on_header_value@GOTPCREL(%rip), %rax
	movq	%rax, 16(%r14)
	andq	$0, 8(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB59_2
## %bb.5:                               ## %http_parser__n_header_field_start.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB59_3:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_header_value(%rip), %rax
LBB59_4:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB59_2:                                ## %http_parser__n_span_end_http_parser__on_header_value.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_header_field_start(%rip), %rax
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB59_4
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_discard_ws_almost_done
_http_parser__n_header_value_discard_ws_almost_done: ## @http_parser__n_header_value_discard_ws_almost_done
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB60_1
## %bb.2:                               ## %http_parser__n_header_value_discard_lws.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_discard_lws ## TAILCALL
LBB60_1:                                ## %no_data
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
	je	LBB61_9
## %bb.1:                               ## %has_data
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_header_value@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	movb	76(%rdi), %al
	addb	$-2, %al
	cmpb	$3, %al
	ja	LBB61_3
## %bb.2:                               ## %has_data
	movzbl	%al, %eax
	leaq	LJTI61_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB61_4:                                ## %http_parser__n_header_value_connection.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value_connection ## TAILCALL
LBB61_9:                                ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_header_value_1(%rip), %rax
	popq	%rcx
	retq
LBB61_5:                                ## %http_parser__n_header_value_content_length_once.trampoline.i
	testb	$32, 77(%rdi)
	jne	LBB61_10
## %bb.6:                               ## %http_parser__n_header_value_content_length.trampoline.i.i
	popq	%rax
	jmp	_http_parser__n_header_value_content_length ## TAILCALL
LBB61_7:                                ## %http_parser__n_header_value_te_chunked.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value_te_chunked ## TAILCALL
LBB61_8:                                ## %http_parser__n_invoke_or_flags_15.trampoline.i
	orb	$16, 77(%rdi)
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_4 ## TAILCALL
LBB61_3:                                ## %http_parser__n_header_value.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value ## TAILCALL
LBB61_10:                               ## %http_parser__n_error_14.trampoline.i.i
	popq	%rax
	jmp	_http_parser__n_error_14 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L61_0_set_4 = LBB61_4-LJTI61_0
L61_0_set_5 = LBB61_5-LJTI61_0
L61_0_set_7 = LBB61_7-LJTI61_0
L61_0_set_8 = LBB61_8-LJTI61_0
LJTI61_0:
	.long	L61_0_set_4
	.long	L61_0_set_5
	.long	L61_0_set_7
	.long	L61_0_set_8
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_connection
_http_parser__n_header_value_connection: ## @http_parser__n_header_value_connection
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$32, %cl
LBB62_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB62_10
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB62_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	orb	$32, %al
	cmpb	%cl, %al
	je	LBB62_1
## %bb.3:                               ## %has_data
	cmpb	$99, %al
	je	LBB62_7
## %bb.4:                               ## %has_data
	cmpb	$107, %al
	je	LBB62_8
## %bb.5:                               ## %has_data
	cmpb	$117, %al
	jne	LBB62_6
## %bb.9:                               ## %http_parser__n_header_value_connection_3.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection_3 ## TAILCALL
LBB62_7:                                ## %http_parser__n_header_value_connection_1.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection_1 ## TAILCALL
LBB62_8:                                ## %http_parser__n_header_value_connection_2.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection_2 ## TAILCALL
LBB62_6:                                ## %http_parser__n_header_value_connection_token.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_connection_token ## TAILCALL
LBB62_10:                               ## %no_data
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
	je	LBB63_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_3(%rip), %r10
	xorl	%eax, %eax
LBB63_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB63_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB63_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB63_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB63_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB63_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB63_8
LBB63_3:
	movb	$2, %r9b
	jmp	LBB63_8
LBB63_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB63_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB63_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB63_10
## %bb.12:                              ## %http_parser__n_invoke_update_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$7, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_ws ## TAILCALL
LBB63_10:                               ## %pause
	leaq	_http_parser__n_header_value_connection_1(%rip), %rax
	popq	%rbx
	retq
LBB63_11:                               ## %http_parser__n_header_value_connection_token.trampoline
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
LBB64_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB64_15
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB64_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	cmpb	$10, %al
	je	LBB64_7
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB64_1 Depth=1
	cmpb	$13, %al
	je	LBB64_7
## %bb.4:                               ## %has_data
                                        ##   in Loop: Header=BB64_1 Depth=1
	cmpb	$32, %al
	je	LBB64_1
## %bb.5:                               ## %has_data
	cmpb	$44, %al
	jne	LBB64_6
## %bb.8:                               ## %http_parser__n_invoke_load_header_state_3.trampoline
	movb	76(%rdi), %al
	addb	$-6, %al
	cmpb	$3, %al
	ja	LBB64_14
## %bb.9:                               ## %http_parser__n_invoke_load_header_state_3.trampoline
	movzbl	%al, %eax
	leaq	LJTI64_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB64_10:                               ## %http_parser__n_invoke_or_flags_10.trampoline.i
	orb	$1, 77(%rdi)
	jmp	LBB64_14
LBB64_7:                                ## %http_parser__n_header_value_otherwise.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB64_6:                                ## %http_parser__n_invoke_update_header_state_1.trampoline
	movb	$0, 76(%rdi)
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_connection_token ## TAILCALL
LBB64_11:                               ## %http_parser__n_invoke_or_flags_11.trampoline.i
	orb	$2, 77(%rdi)
	jmp	LBB64_14
LBB64_12:                               ## %http_parser__n_invoke_or_flags_12.trampoline.i
	orb	$4, 77(%rdi)
	jmp	LBB64_14
LBB64_13:                               ## %http_parser__n_invoke_or_flags_13.trampoline.i
	orb	$8, 77(%rdi)
LBB64_14:                               ## %http_parser__n_header_value_connection.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_value_connection ## TAILCALL
LBB64_15:                               ## %no_data
	leaq	_http_parser__n_header_value_connection_ws(%rip), %rax
	popq	%rcx
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L64_0_set_10 = LBB64_10-LJTI64_0
L64_0_set_11 = LBB64_11-LJTI64_0
L64_0_set_12 = LBB64_12-LJTI64_0
L64_0_set_13 = LBB64_13-LJTI64_0
LJTI64_0:
	.long	L64_0_set_10
	.long	L64_0_set_11
	.long	L64_0_set_12
	.long	L64_0_set_13
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
	je	LBB65_12
## %bb.1:                               ## %has_data
	movb	(%rbx), %al
	cmpb	$10, %al
	je	LBB65_4
## %bb.2:                               ## %has_data
	cmpb	$13, %al
	jne	LBB65_3
## %bb.9:                               ## %http_parser__n_span_end_http_parser__on_header_value_2.trampoline
	movq	8(%r15), %rsi
	andq	$0, 8(%r15)
	leaq	1(%rbx), %r12
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB65_11
## %bb.10:                              ## %http_parser__n_header_value_almost_done.trampoline.i1
	movq	%r15, %rdi
	movq	%r12, %rsi
	jmp	LBB65_6
LBB65_12:                               ## %no_data
	leaq	_http_parser__n_header_value_otherwise(%rip), %rax
LBB65_13:                               ## %no_data
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
LBB65_4:                                ## %http_parser__n_span_end_http_parser__on_header_value_1.trampoline
	movq	8(%r15), %rsi
	andq	$0, 8(%r15)
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB65_7
## %bb.5:                               ## %http_parser__n_header_value_almost_done.trampoline.i
	movq	%r15, %rdi
	movq	%rbx, %rsi
LBB65_6:                                ## %http_parser__n_header_value_almost_done.trampoline.i
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_value_almost_done ## TAILCALL
LBB65_3:                                ## %http_parser__n_error_13.trampoline
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_13 ## TAILCALL
LBB65_11:                               ## %http_parser__n_span_end_http_parser__on_header_value_2.exit
	movl	%eax, 24(%r15)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r15)
	movq	%r12, 40(%r15)
	jmp	LBB65_8
LBB65_7:                                ## %http_parser__n_span_end_http_parser__on_header_value_1.exit
	movl	%eax, 24(%r15)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r15)
	movq	%rbx, 40(%r15)
LBB65_8:                                ## %http_parser__n_span_end_http_parser__on_header_value_1.exit
	leaq	_http_parser__n_header_value_almost_done(%rip), %rax
	movq	%rax, 56(%r15)
	xorl	%eax, %eax
	jmp	LBB65_13
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_almost_done
_http_parser__n_header_value_almost_done: ## @http_parser__n_header_value_almost_done
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB66_3
## %bb.1:                               ## %has_data
	cmpb	$10, (%rsi)
	jne	LBB66_4
## %bb.2:                               ## %http_parser__n_header_value_lws.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_lws ## TAILCALL
LBB66_3:                                ## %no_data
	leaq	_http_parser__n_header_value_almost_done(%rip), %rax
	popq	%rcx
	retq
LBB66_4:                                ## %http_parser__n_error_12.trampoline
	popq	%rax
	jmp	_http_parser__n_error_12 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_lws
_http_parser__n_header_value_lws:       ## @http_parser__n_header_value_lws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB67_11
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	cmpb	$9, %al
	je	LBB67_10
## %bb.2:                               ## %has_data
	cmpb	$32, %al
	jne	LBB67_3
LBB67_10:                               ## %http_parser__n_span_start_http_parser__on_header_value_1.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_header_value_1 ## TAILCALL
LBB67_11:                               ## %no_data
	leaq	_http_parser__n_header_value_lws(%rip), %rax
	popq	%rcx
	retq
LBB67_3:                                ## %http_parser__n_invoke_load_header_state_2.trampoline
	movb	76(%rdi), %al
	addb	$-6, %al
	cmpb	$3, %al
	ja	LBB67_9
## %bb.4:                               ## %http_parser__n_invoke_load_header_state_2.trampoline
	movzbl	%al, %eax
	leaq	LJTI67_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB67_5:                                ## %http_parser__n_invoke_or_flags_6.trampoline.i
	orb	$1, 77(%rdi)
	jmp	LBB67_9
LBB67_6:                                ## %http_parser__n_invoke_or_flags_7.trampoline.i
	orb	$2, 77(%rdi)
	jmp	LBB67_9
LBB67_7:                                ## %http_parser__n_invoke_or_flags_8.trampoline.i
	orb	$4, 77(%rdi)
	jmp	LBB67_9
LBB67_8:                                ## %http_parser__n_invoke_or_flags_9.trampoline.i
	orb	$8, 77(%rdi)
LBB67_9:                                ## %http_parser__n_header_field_start.trampoline.i
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L67_0_set_5 = LBB67_5-LJTI67_0
L67_0_set_6 = LBB67_6-LJTI67_0
L67_0_set_7 = LBB67_7-LJTI67_0
L67_0_set_8 = LBB67_8-LJTI67_0
LJTI67_0:
	.long	L67_0_set_5
	.long	L67_0_set_6
	.long	L67_0_set_7
	.long	L67_0_set_8
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_12
_http_parser__n_error_12:               ## @http_parser__n_error_12
	.cfi_startproc
## %bb.0:
	movl	$3, 24(%rdi)
	leaq	_g_cstr_15(%rip), %rax
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
	movl	$10, 24(%rdi)
	leaq	_g_cstr_16(%rip), %rax
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
LBB70_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB70_5
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB70_1 Depth=1
	movzbl	(%rsi), %ecx
	incq	%rsi
	movb	(%rcx,%rax), %cl
	cmpb	$1, %cl
	je	LBB70_1
## %bb.3:                               ## %has_data
	cmpb	$2, %cl
	jne	LBB70_6
## %bb.4:                               ## %http_parser__n_header_value_connection.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_connection ## TAILCALL
LBB70_6:                                ## %http_parser__n_header_value_otherwise.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB70_5:                                ## %no_data
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
	je	LBB71_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_4(%rip), %r10
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
	cmpl	$8, %eax
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
## %bb.12:                              ## %http_parser__n_invoke_update_header_state_2.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$6, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_ws ## TAILCALL
LBB71_10:                               ## %pause
	leaq	_http_parser__n_header_value_connection_2(%rip), %rax
	popq	%rbx
	retq
LBB71_11:                               ## %http_parser__n_header_value_connection_token.trampoline
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
	je	LBB72_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_10(%rip), %r10
	xorl	%eax, %eax
LBB72_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB72_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB72_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB72_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB72_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB72_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB72_8
LBB72_3:
	movb	$2, %r9b
	jmp	LBB72_8
LBB72_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB72_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB72_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB72_10
## %bb.12:                              ## %http_parser__n_invoke_update_header_state_3.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$8, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_connection_ws ## TAILCALL
LBB72_10:                               ## %pause
	leaq	_http_parser__n_header_value_connection_3(%rip), %rax
	popq	%rbx
	retq
LBB72_11:                               ## %http_parser__n_header_value_connection_token.trampoline
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
	je	LBB73_13
## %bb.1:                               ## %has_data.lr.ph
	leaq	LJTI73_0(%rip), %rcx
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
LBB73_2:                                ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rbx), %al
	movl	%eax, %edx
	addb	$-32, %dl
	cmpb	$25, %dl
	ja	LBB73_3
## %bb.25:                              ## %has_data
                                        ##   in Loop: Header=BB73_2 Depth=1
	movzbl	%dl, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	xorl	%r8d, %r8d
	jmpq	*%rax
LBB73_9:                                ## %case_49
                                        ##   in Loop: Header=BB73_2 Depth=1
	pushq	$1
	.cfi_adjust_cfa_offset 8
	popq	%r8
	.cfi_adjust_cfa_offset -8
	jmp	LBB73_10
LBB73_23:                               ## %case_56
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	%rbp, %r8
	jmp	LBB73_10
LBB73_21:                               ## %case_54
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	%r13, %r8
	jmp	LBB73_10
LBB73_17:                               ## %case_50
                                        ##   in Loop: Header=BB73_2 Depth=1
	pushq	$2
	.cfi_adjust_cfa_offset 8
	popq	%r8
	.cfi_adjust_cfa_offset -8
	jmp	LBB73_10
LBB73_19:                               ## %case_52
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	%r11, %r8
	jmp	LBB73_10
LBB73_18:                               ## %case_51
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	%r10, %r8
	jmp	LBB73_10
LBB73_20:                               ## %case_53
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	%r12, %r8
	jmp	LBB73_10
LBB73_22:                               ## %case_55
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	%rdi, %r8
	jmp	LBB73_10
LBB73_24:                               ## %case_57
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	%r9, %r8
LBB73_10:                               ## %http_parser__n_invoke_mul_add_content_length_1.trampoline
                                        ##   in Loop: Header=BB73_2 Depth=1
	movq	64(%r14), %rax
	mulq	%rsi
	jo	LBB73_15
## %bb.11:                              ## %no_overflow.i.i
                                        ##   in Loop: Header=BB73_2 Depth=1
	addq	%r8, %rax
	jb	LBB73_15
## %bb.12:                              ## %http_parser__n_header_value_content_length.trampoline.i
                                        ##   in Loop: Header=BB73_2 Depth=1
	incq	%rbx
	movq	%rax, 64(%r14)
	cmpq	%rbx, %r15
	jne	LBB73_2
LBB73_13:                               ## %no_data
	leaq	_http_parser__n_header_value_content_length(%rip), %rax
LBB73_14:                               ## %no_data
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB73_3:                                ## %has_data
	cmpb	$10, %al
	je	LBB73_8
## %bb.4:                               ## %has_data
	cmpb	$13, %al
	jne	LBB73_5
LBB73_8:                                ## %http_parser__n_invoke_or_flags_14.trampoline
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
LBB73_5:                                ## %http_parser__n_span_end_http_parser__on_header_value_4.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB73_6
## %bb.26:                              ## %http_parser__n_error_16.trampoline.i
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
	jmp	_http_parser__n_error_16 ## TAILCALL
LBB73_15:                               ## %http_parser__n_span_end_http_parser__on_header_value_3.trampoline.i
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	incq	%rbx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_http_parser__on_header_value
	testl	%eax, %eax
	jne	LBB73_16
## %bb.27:                              ## %http_parser__n_error_15.trampoline.i.i
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
LBB73_6:                                ## %http_parser__n_span_end_http_parser__on_header_value_4.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_error_16(%rip), %rax
LBB73_7:                                ## %http_parser__n_span_end_http_parser__on_header_value_4.exit
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB73_14
LBB73_16:                               ## %http_parser__n_invoke_mul_add_content_length_1.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_error_15(%rip), %rax
	jmp	LBB73_7
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L73_0_set_8 = LBB73_8-LJTI73_0
L73_0_set_5 = LBB73_5-LJTI73_0
L73_0_set_10 = LBB73_10-LJTI73_0
L73_0_set_9 = LBB73_9-LJTI73_0
L73_0_set_17 = LBB73_17-LJTI73_0
L73_0_set_18 = LBB73_18-LJTI73_0
L73_0_set_19 = LBB73_19-LJTI73_0
L73_0_set_20 = LBB73_20-LJTI73_0
L73_0_set_21 = LBB73_21-LJTI73_0
L73_0_set_22 = LBB73_22-LJTI73_0
L73_0_set_23 = LBB73_23-LJTI73_0
L73_0_set_24 = LBB73_24-LJTI73_0
LJTI73_0:
	.long	L73_0_set_8
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_5
	.long	L73_0_set_10
	.long	L73_0_set_9
	.long	L73_0_set_17
	.long	L73_0_set_18
	.long	L73_0_set_19
	.long	L73_0_set_20
	.long	L73_0_set_21
	.long	L73_0_set_22
	.long	L73_0_set_23
	.long	L73_0_set_24
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_header_value_discard_rws
_http_parser__n_header_value_discard_rws: ## @http_parser__n_header_value_discard_rws
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
LBB74_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB74_7
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB74_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	cmpb	$10, %al
	je	LBB74_6
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB74_1 Depth=1
	cmpb	$13, %al
	je	LBB74_6
## %bb.4:                               ## %has_data
                                        ##   in Loop: Header=BB74_1 Depth=1
	cmpb	$32, %al
	je	LBB74_1
## %bb.5:                               ## %http_parser__n_invoke_update_header_state_4.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_invoke_update_header_state_4 ## TAILCALL
LBB74_6:                                ## %http_parser__n_header_value_otherwise.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB74_7:                                ## %no_data
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
LBB76_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB76_4
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB76_1 Depth=1
	movzbl	(%rsi), %ecx
	incq	%rsi
	cmpb	$1, (%rcx,%rax)
	je	LBB76_1
## %bb.3:                               ## %http_parser__n_header_value_otherwise.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_otherwise ## TAILCALL
LBB76_4:                                ## %no_data
	leaq	_http_parser__n_header_value(%rip), %rax
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_16
_http_parser__n_error_16:               ## @http_parser__n_error_16
	.cfi_startproc
## %bb.0:
	movl	$11, 24(%rdi)
	leaq	_g_cstr_18(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_14
_http_parser__n_error_14:               ## @http_parser__n_error_14
	.cfi_startproc
## %bb.0:
	movl	$4, 24(%rdi)
	leaq	_g_cstr_19(%rip), %rax
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
	je	LBB80_6
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	orb	$32, %al
	movb	$32, %cl
	cmpb	%cl, %al
	je	LBB80_4
## %bb.2:                               ## %has_data
	cmpb	$99, %al
	jne	LBB80_3
## %bb.5:                               ## %http_parser__n_header_value_te_chunked_1.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_value_te_chunked_1 ## TAILCALL
LBB80_6:                                ## %no_data
	leaq	_http_parser__n_header_value_te_chunked(%rip), %rax
	popq	%rcx
	retq
LBB80_4:                                ## %http_parser__n_header_value_discard_rws.trampoline
	popq	%rax
	jmp	_http_parser__n_header_value_discard_rws ## TAILCALL
LBB80_3:                                ## %http_parser__n_invoke_update_header_state_4.trampoline
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
	je	LBB81_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_6(%rip), %r10
	xorl	%eax, %eax
LBB81_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB81_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB81_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB81_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB81_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB81_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB81_8
LBB81_3:
	movb	$2, %r9b
	jmp	LBB81_8
LBB81_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB81_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB81_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB81_10
## %bb.12:                              ## %http_parser__n_invoke_update_header_state_5.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$9, 76(%rdi)
	popq	%rbx
	jmp	_http_parser__n_header_value_discard_rws ## TAILCALL
LBB81_10:                               ## %pause
	leaq	_http_parser__n_header_value_te_chunked_1(%rip), %rax
	popq	%rbx
	retq
LBB81_11:                               ## %http_parser__n_invoke_update_header_state_4.trampoline
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
LBB82_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB82_4
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB82_1 Depth=1
	movzbl	(%rsi), %ecx
	incq	%rsi
	cmpb	$1, (%rcx,%rax)
	je	LBB82_1
## %bb.3:                               ## %http_parser__n_header_field_general_otherwise.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_general_otherwise ## TAILCALL
LBB82_4:                                ## %no_data
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
	je	LBB83_4
## %bb.1:                               ## %has_data
	cmpb	$58, (%rax)
	jne	LBB83_6
## %bb.2:                               ## %http_parser__n_span_end_http_parser__on_header_field_1.trampoline
	leaq	1(%rax), %r15
	movq	8(%rbx), %rsi
	andq	$0, 8(%rbx)
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	_http_parser__on_header_field
	testl	%eax, %eax
	jne	LBB83_3
## %bb.7:                               ## %http_parser__n_header_value_discard_ws.trampoline.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_value_discard_ws ## TAILCALL
LBB83_4:                                ## %no_data
	leaq	_http_parser__n_header_field_general_otherwise(%rip), %rax
LBB83_5:                                ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB83_6:                                ## %http_parser__n_error_17.trampoline
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_error_17 ## TAILCALL
LBB83_3:                                ## %http_parser__n_span_end_http_parser__on_header_field_1.exit
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%r15, 40(%rbx)
	leaq	_http_parser__n_header_value_discard_ws(%rip), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
	jmp	LBB83_5
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_17
_http_parser__n_error_17:               ## @http_parser__n_error_17
	.cfi_startproc
## %bb.0:
	movl	$10, 24(%rdi)
	leaq	_g_cstr_20(%rip), %rax
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
	je	LBB86_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_7(%rip), %r10
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
	cmpl	$9, %eax
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
	pushq	$3
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB86_10:                               ## %pause
	leaq	_http_parser__n_header_field_4(%rip), %rax
	popq	%rbx
	retq
LBB86_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
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
	je	LBB87_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_8(%rip), %r10
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
	cmpl	$14, %eax
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
	pushq	$1
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB87_10:                               ## %pause
	leaq	_http_parser__n_header_field_5(%rip), %rax
	popq	%rbx
	retq
LBB87_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
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
	je	LBB88_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_9(%rip), %r10
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
	cmpl	$15, %eax
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
	pushq	$4
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB88_10:                               ## %pause
	leaq	_http_parser__n_header_field_6(%rip), %rax
	popq	%rbx
	retq
LBB88_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
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
	je	LBB89_10
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_10(%rip), %r10
	xorl	%eax, %eax
LBB89_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	orb	$32, %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB89_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB89_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB89_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB89_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB89_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_to_lower_unsafe.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB89_8
LBB89_3:
	movb	$2, %r9b
	jmp	LBB89_8
LBB89_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB89_8:                                ## %http_parser__match_sequence_to_lower_unsafe.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$2, %r9b
	je	LBB89_11
## %bb.9:                               ## %http_parser__match_sequence_to_lower_unsafe.exit
	cmpb	$1, %r9b
	je	LBB89_10
## %bb.12:                              ## %http_parser__n_invoke_store_header_state.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$5
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_header_state ## TAILCALL
LBB89_10:                               ## %pause
	leaq	_http_parser__n_header_field_7(%rip), %rax
	popq	%rbx
	retq
LBB89_11:                               ## %http_parser__n_invoke_update_header_state_7.trampoline
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
	jne	LBB90_1
## %bb.2:                               ## %http_parser__n_url_skip_lf_to_http09.trampoline
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_url_skip_lf_to_http09 ## TAILCALL
LBB90_1:                                ## %error
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
	je	LBB91_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_11(%rip), %r8
LBB91_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB91_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB91_2 Depth=1
	cmpl	$1, %ecx
	je	LBB91_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB91_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB91_2
## %bb.7:
	movb	$1, %al
	jmp	LBB91_8
LBB91_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB91_8
LBB91_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB91_8:                                ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB91_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB91_12
## %bb.10:                              ## %http_parser__n_url_to_http_09.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_invoke_update_http_major ## TAILCALL
LBB91_11:                               ## %pause
	leaq	_http_parser__n_url_skip_lf_to_http09(%rip), %rax
	popq	%rcx
	retq
LBB91_12:                               ## %http_parser__n_error_18.trampoline
	popq	%rax
	jmp	_http_parser__n_error_18 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_18
_http_parser__n_error_18:               ## @http_parser__n_error_18
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_21(%rip), %rax
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
	jne	LBB93_1
## %bb.2:                               ## %http_parser__n_url_skip_to_http.trampoline
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_url_skip_to_http ## TAILCALL
LBB93_1:                                ## %error
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
	je	LBB94_1
## %bb.2:                               ## %http_parser__n_url_to_http.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_req_http_start ## TAILCALL
LBB94_1:                                ## %no_data
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
LBB95_1:                                ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB95_5
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB95_1 Depth=1
	movb	(%rsi), %al
	incq	%rsi
	cmpb	$32, %al
	je	LBB95_1
## %bb.3:                               ## %has_data
	cmpb	$72, %al
	jne	LBB95_6
## %bb.4:                               ## %http_parser__n_req_http_start_1.trampoline
	popq	%rax
	jmp	_http_parser__n_req_http_start_1 ## TAILCALL
LBB95_5:                                ## %no_data
	leaq	_http_parser__n_req_http_start(%rip), %rax
	popq	%rcx
	retq
LBB95_6:                                ## %http_parser__n_error_23.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_23 ## TAILCALL
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
	je	LBB96_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_12(%rip), %r10
	xorl	%eax, %eax
LBB96_2:                                ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB96_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB96_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB96_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB96_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB96_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB96_8
LBB96_3:
	movb	$2, %r9b
	jmp	LBB96_8
LBB96_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB96_8:                                ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB96_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB96_12
## %bb.10:                              ## %http_parser__n_req_http_major.trampoline
	leaq	1(%rsi,%rcx), %rsi
	popq	%rbx
	jmp	_http_parser__n_req_http_major ## TAILCALL
LBB96_11:                               ## %pause
	leaq	_http_parser__n_req_http_start_1(%rip), %rax
	popq	%rbx
	retq
LBB96_12:                               ## %http_parser__n_error_23.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_23 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_major
_http_parser__n_req_http_major:         ## @http_parser__n_req_http_major
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB97_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB97_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_major.trampoline
	incq	%rsi
	movb	%al, 74(%rdi)
	popq	%rax
	jmp	_http_parser__n_req_http_dot ## TAILCALL
LBB97_3:                                ## %no_data
	leaq	_http_parser__n_req_http_major(%rip), %rax
	popq	%rcx
	retq
LBB97_4:                                ## %http_parser__n_error_22.trampoline
	popq	%rax
	jmp	_http_parser__n_error_22 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_dot
_http_parser__n_req_http_dot:           ## @http_parser__n_req_http_dot
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB98_3
## %bb.1:                               ## %has_data
	cmpb	$46, (%rsi)
	jne	LBB98_4
## %bb.2:                               ## %http_parser__n_req_http_minor.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_req_http_minor ## TAILCALL
LBB98_3:                                ## %no_data
	leaq	_http_parser__n_req_http_dot(%rip), %rax
	popq	%rcx
	retq
LBB98_4:                                ## %http_parser__n_error_21.trampoline
	popq	%rax
	jmp	_http_parser__n_error_21 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_minor
_http_parser__n_req_http_minor:         ## @http_parser__n_req_http_minor
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB99_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB99_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_minor.trampoline
	incq	%rsi
	movb	%al, 75(%rdi)
	popq	%rax
	jmp	_http_parser__n_req_http_end ## TAILCALL
LBB99_3:                                ## %no_data
	leaq	_http_parser__n_req_http_minor(%rip), %rax
	popq	%rcx
	retq
LBB99_4:                                ## %http_parser__n_error_20.trampoline
	popq	%rax
	jmp	_http_parser__n_error_20 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_end
_http_parser__n_req_http_end:           ## @http_parser__n_req_http_end
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB100_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$10, %cl
	je	LBB100_4
## %bb.2:                               ## %has_data
	cmpb	$13, %cl
	jne	LBB100_3
## %bb.5:                               ## %http_parser__n_req_http_end_1.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_req_http_end_1 ## TAILCALL
LBB100_6:                               ## %no_data
	leaq	_http_parser__n_req_http_end(%rip), %rax
	popq	%rcx
	retq
LBB100_4:                               ## %http_parser__n_header_field_start.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB100_3:                               ## %http_parser__n_error_19.trampoline
	popq	%rax
	jmp	_http_parser__n_error_19 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_http_end_1
_http_parser__n_req_http_end_1:         ## @http_parser__n_req_http_end_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB101_3
## %bb.1:                               ## %has_data
	cmpb	$10, (%rsi)
	jne	LBB101_4
## %bb.2:                               ## %http_parser__n_header_field_start.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB101_3:                               ## %no_data
	leaq	_http_parser__n_req_http_end_1(%rip), %rax
	popq	%rcx
	retq
LBB101_4:                               ## %http_parser__n_error_19.trampoline
	popq	%rax
	jmp	_http_parser__n_error_19 ## TAILCALL
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
	movl	$9, 24(%rdi)
	leaq	_g_cstr_25(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_23
_http_parser__n_error_23:               ## @http_parser__n_error_23
	.cfi_startproc
## %bb.0:
	movl	$8, 24(%rdi)
	leaq	_g_cstr_26(%rip), %rax
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
	leaq	LJTI107_0(%rip), %rcx
LBB107_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB107_8
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB107_1 Depth=1
	movzbl	(%rsi), %eax
	incq	%rsi
	movb	(%rax,%r8), %al
	decb	%al
	cmpb	$3, %al
	ja	LBB107_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB107_1 Depth=1
	movzbl	%al, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB107_5:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB107_6:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB107_7:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB107_8:                               ## %no_data
	leaq	_http_parser__n_url_fragment(%rip), %rax
	popq	%rcx
	retq
LBB107_4:                               ## %http_parser__n_error_24.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_24 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L107_0_set_5 = LBB107_5-LJTI107_0
L107_0_set_6 = LBB107_6-LJTI107_0
L107_0_set_7 = LBB107_7-LJTI107_0
L107_0_set_1 = LBB107_1-LJTI107_0
LJTI107_0:
	.long	L107_0_set_5
	.long	L107_0_set_6
	.long	L107_0_set_7
	.long	L107_0_set_1
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_query
_http_parser__n_url_query:              ## @http_parser__n_url_query
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_g_lookup_table_6(%rip), %r8
	leaq	LJTI109_0(%rip), %rcx
LBB109_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB109_9
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB109_1 Depth=1
	movzbl	(%rsi), %eax
	incq	%rsi
	movb	(%rax,%r8), %al
	decb	%al
	cmpb	$4, %al
	ja	LBB109_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB109_1 Depth=1
	movzbl	%al, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB109_5:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB109_6:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB109_7:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB109_8:                               ## %http_parser__n_url_fragment.trampoline
	popq	%rax
	jmp	_http_parser__n_url_fragment ## TAILCALL
LBB109_9:                               ## %no_data
	leaq	_http_parser__n_url_query(%rip), %rax
	popq	%rcx
	retq
LBB109_4:                               ## %http_parser__n_error_25.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_25 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L109_0_set_5 = LBB109_5-LJTI109_0
L109_0_set_6 = LBB109_6-LJTI109_0
L109_0_set_7 = LBB109_7-LJTI109_0
L109_0_set_1 = LBB109_1-LJTI109_0
L109_0_set_8 = LBB109_8-LJTI109_0
LJTI109_0:
	.long	L109_0_set_5
	.long	L109_0_set_6
	.long	L109_0_set_7
	.long	L109_0_set_1
	.long	L109_0_set_8
	.end_data_region
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_schema
_http_parser__n_url_schema:             ## @http_parser__n_url_schema
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB112_8
## %bb.1:                               ## %has_data.preheader
	leaq	LJTI112_0(%rip), %rax
LBB112_2:                               ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	addb	$-10, %cl
	cmpb	$112, %cl
	ja	LBB112_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB112_2 Depth=1
	movzbl	%cl, %ecx
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB112_7:                               ## %http_parser__n_url_schema.trampoline
                                        ##   in Loop: Header=BB112_2 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	LBB112_2
LBB112_8:                               ## %no_data
	leaq	_http_parser__n_url_schema(%rip), %rax
	popq	%rcx
	retq
LBB112_6:                               ## %http_parser__n_url_schema_1.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_url_schema_1 ## TAILCALL
LBB112_5:                               ## %http_parser__n_error_30.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_30 ## TAILCALL
LBB112_4:                               ## %http_parser__n_error_31.trampoline
	popq	%rax
	jmp	_http_parser__n_error_31 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L112_0_set_5 = LBB112_5-LJTI112_0
L112_0_set_4 = LBB112_4-LJTI112_0
L112_0_set_6 = LBB112_6-LJTI112_0
L112_0_set_7 = LBB112_7-LJTI112_0
LJTI112_0:
	.long	L112_0_set_5
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_5
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_5
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_6
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_4
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
	.long	L112_0_set_7
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
	je	LBB113_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_13(%rip), %r8
LBB113_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB113_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB113_2 Depth=1
	cmpl	$1, %ecx
	je	LBB113_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB113_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB113_2
## %bb.7:
	movb	$1, %al
	jmp	LBB113_8
LBB113_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB113_8
LBB113_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB113_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB113_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB113_12
## %bb.10:                              ## %http_parser__n_url_server.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_url_server ## TAILCALL
LBB113_11:                              ## %pause
	leaq	_http_parser__n_url_schema_1(%rip), %rax
	popq	%rcx
	retq
LBB113_12:                              ## %http_parser__n_error_31.trampoline
	popq	%rax
	jmp	_http_parser__n_error_31 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_server
_http_parser__n_url_server:             ## @http_parser__n_url_server
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_g_lookup_table_8(%rip), %r8
	leaq	LJTI114_0(%rip), %rcx
LBB114_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	LBB114_11
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB114_1 Depth=1
	movzbl	(%rsi), %eax
	incq	%rsi
	movb	(%rax,%r8), %al
	decb	%al
	cmpb	$6, %al
	ja	LBB114_4
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB114_1 Depth=1
	movzbl	%al, %eax
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB114_5:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB114_6:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB114_7:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB114_8:                               ## %http_parser__n_url_path.trampoline
	popq	%rax
	jmp	_http_parser__n_url_path ## TAILCALL
LBB114_9:                               ## %http_parser__n_url_query.trampoline
	popq	%rax
	jmp	_http_parser__n_url_query ## TAILCALL
LBB114_10:                              ## %http_parser__n_url_server_with_at.trampoline
	popq	%rax
	jmp	_http_parser__n_url_server_with_at ## TAILCALL
LBB114_11:                              ## %no_data
	leaq	_http_parser__n_url_server(%rip), %rax
	popq	%rcx
	retq
LBB114_4:                               ## %http_parser__n_error_29.trampoline
	decq	%rsi
	popq	%rax
	jmp	_http_parser__n_error_29 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L114_0_set_5 = LBB114_5-LJTI114_0
L114_0_set_6 = LBB114_6-LJTI114_0
L114_0_set_7 = LBB114_7-LJTI114_0
L114_0_set_1 = LBB114_1-LJTI114_0
L114_0_set_8 = LBB114_8-LJTI114_0
L114_0_set_9 = LBB114_9-LJTI114_0
L114_0_set_10 = LBB114_10-LJTI114_0
LJTI114_0:
	.long	L114_0_set_5
	.long	L114_0_set_6
	.long	L114_0_set_7
	.long	L114_0_set_1
	.long	L114_0_set_8
	.long	L114_0_set_9
	.long	L114_0_set_10
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_url_server_with_at
_http_parser__n_url_server_with_at:     ## @http_parser__n_url_server_with_at
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB115_11
## %bb.1:                               ## %has_data
	movzbl	(%rsi), %eax
	leaq	_g_lookup_table_8(%rip), %rcx
	movb	(%rax,%rcx), %cl
	decb	%cl
	cmpb	$6, %cl
	ja	LBB115_3
## %bb.2:                               ## %has_data
	leaq	1(%rsi), %r8
	movzbl	%cl, %ecx
	leaq	LJTI115_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB115_4:                               ## %http_parser__n_span_end_http_parser__on_url.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url ## TAILCALL
LBB115_11:                              ## %no_data
	leaq	_http_parser__n_url_server_with_at(%rip), %rax
	popq	%rcx
	retq
LBB115_5:                               ## %http_parser__n_span_end_http_parser__on_url_1.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_1 ## TAILCALL
LBB115_6:                               ## %http_parser__n_span_end_http_parser__on_url_2.trampoline
	popq	%rax
	jmp	_http_parser__n_span_end_http_parser__on_url_2 ## TAILCALL
LBB115_7:                               ## %http_parser__n_url_server.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_url_server ## TAILCALL
LBB115_8:                               ## %http_parser__n_url_path.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_url_path ## TAILCALL
LBB115_9:                               ## %http_parser__n_url_query.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_url_query ## TAILCALL
LBB115_3:                               ## %http_parser__n_error_28.trampoline
	popq	%rax
	jmp	_http_parser__n_error_28 ## TAILCALL
LBB115_10:                              ## %http_parser__n_error_27.trampoline
	movq	%r8, %rsi
	popq	%rax
	jmp	_http_parser__n_error_27 ## TAILCALL
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L115_0_set_4 = LBB115_4-LJTI115_0
L115_0_set_5 = LBB115_5-LJTI115_0
L115_0_set_6 = LBB115_6-LJTI115_0
L115_0_set_7 = LBB115_7-LJTI115_0
L115_0_set_8 = LBB115_8-LJTI115_0
L115_0_set_9 = LBB115_9-LJTI115_0
L115_0_set_10 = LBB115_10-LJTI115_0
LJTI115_0:
	.long	L115_0_set_4
	.long	L115_0_set_5
	.long	L115_0_set_6
	.long	L115_0_set_7
	.long	L115_0_set_8
	.long	L115_0_set_9
	.long	L115_0_set_10
	.end_data_region
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
	leaq	_g_cstr_31(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_29
_http_parser__n_error_29:               ## @http_parser__n_error_29
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_32
_http_parser__n_error_32:               ## @http_parser__n_error_32
	.cfi_startproc
## %bb.0:
	movl	$7, 24(%rdi)
	leaq	_g_cstr_33(%rip), %rax
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
	je	LBB121_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_url@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_url_server ## TAILCALL
LBB121_1:                               ## %no_data
	leaq	_http_parser__n_span_start_http_parser__on_url(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_40
_http_parser__n_error_40:               ## @http_parser__n_error_40
	.cfi_startproc
## %bb.0:
	movl	$6, 24(%rdi)
	leaq	_g_cstr_34(%rip), %rax
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
	je	LBB123_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
	xorl	%eax, %eax
LBB123_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB123_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB123_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB123_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB123_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB123_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB123_8
LBB123_3:
	movb	$2, %r9b
	jmp	LBB123_8
LBB123_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB123_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB123_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB123_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$16
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB123_11:                              ## %pause
	leaq	_http_parser__n_start_req_2(%rip), %rax
	popq	%rbx
	retq
LBB123_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_3
_http_parser__n_start_req_3:            ## @http_parser__n_start_req_3
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB124_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$72, %cl
	je	LBB124_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB124_3
## %bb.5:                               ## %http_parser__n_start_req_5.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_5 ## TAILCALL
LBB124_6:                               ## %no_data
	leaq	_http_parser__n_start_req_3(%rip), %rax
	popq	%rcx
	retq
LBB124_4:                               ## %http_parser__n_start_req_4.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_4 ## TAILCALL
LBB124_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB125_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_15(%rip), %r10
	xorl	%eax, %eax
LBB125_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB125_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB125_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB125_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB125_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB125_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB125_8
LBB125_3:
	movb	$2, %r9b
	jmp	LBB125_8
LBB125_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB125_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB125_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB125_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$22
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB125_11:                              ## %pause
	leaq	_http_parser__n_start_req_4(%rip), %rax
	popq	%rbx
	retq
LBB125_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_5
_http_parser__n_start_req_5:            ## @http_parser__n_start_req_5
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB126_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$78, %cl
	je	LBB126_4
## %bb.2:                               ## %has_data
	cmpb	$80, %cl
	jne	LBB126_3
## %bb.5:                               ## %http_parser__n_start_req_7.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_7 ## TAILCALL
LBB126_6:                               ## %no_data
	leaq	_http_parser__n_start_req_5(%rip), %rax
	popq	%rcx
	retq
LBB126_4:                               ## %http_parser__n_start_req_6.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_6 ## TAILCALL
LBB126_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB127_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_16(%rip), %r10
	xorl	%eax, %eax
LBB127_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB127_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB127_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB127_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB127_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB127_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB127_8
LBB127_3:
	movb	$2, %r9b
	jmp	LBB127_8
LBB127_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB127_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB127_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB127_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$5
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB127_11:                              ## %pause
	leaq	_http_parser__n_start_req_6(%rip), %rax
	popq	%rbx
	retq
LBB127_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_7
_http_parser__n_start_req_7:            ## @http_parser__n_start_req_7
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB128_3
## %bb.1:                               ## %has_data
	cmpb	$89, (%rsi)
	jne	LBB128_4
## %bb.2:                               ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$8
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB128_3:                               ## %no_data
	leaq	_http_parser__n_start_req_7(%rip), %rax
	popq	%rcx
	retq
LBB128_4:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB129_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_17(%rip), %r10
	xorl	%eax, %eax
LBB129_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB129_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB129_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$4, %eax
	je	LBB129_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB129_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB129_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB129_8
LBB129_3:
	movb	$2, %r9b
	jmp	LBB129_8
LBB129_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB129_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB129_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB129_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	xorl	%ecx, %ecx
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB129_11:                              ## %pause
	leaq	_http_parser__n_start_req_8(%rip), %rax
	popq	%rbx
	retq
LBB129_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB130_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_18(%rip), %r8
LBB130_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB130_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB130_2 Depth=1
	cmpl	$1, %ecx
	je	LBB130_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB130_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB130_2
## %bb.7:
	movb	$1, %al
	jmp	LBB130_8
LBB130_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB130_8
LBB130_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB130_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB130_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB130_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$1
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB130_11:                              ## %pause
	leaq	_http_parser__n_start_req_9(%rip), %rax
	popq	%rcx
	retq
LBB130_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB131_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_19(%rip), %r10
	xorl	%eax, %eax
LBB131_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB131_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB131_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB131_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB131_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB131_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB131_8
LBB131_3:
	movb	$2, %r9b
	jmp	LBB131_8
LBB131_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB131_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB131_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB131_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$2
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB131_11:                              ## %pause
	leaq	_http_parser__n_start_req_10(%rip), %rax
	popq	%rbx
	retq
LBB131_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_11
_http_parser__n_start_req_11:           ## @http_parser__n_start_req_11
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB132_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$73, %cl
	je	LBB132_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB132_3
## %bb.5:                               ## %http_parser__n_start_req_13.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_13 ## TAILCALL
LBB132_6:                               ## %no_data
	leaq	_http_parser__n_start_req_11(%rip), %rax
	popq	%rcx
	retq
LBB132_4:                               ## %http_parser__n_start_req_12.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_12 ## TAILCALL
LBB132_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB133_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_42(%rip), %r8
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
	pushq	$31
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB133_11:                              ## %pause
	leaq	_http_parser__n_start_req_12(%rip), %rax
	popq	%rcx
	retq
LBB133_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB134_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_43(%rip), %r8
LBB134_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB134_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB134_2 Depth=1
	cmpl	$1, %ecx
	je	LBB134_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB134_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB134_2
## %bb.7:
	movb	$1, %al
	jmp	LBB134_8
LBB134_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB134_8
LBB134_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB134_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB134_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB134_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$9
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB134_11:                              ## %pause
	leaq	_http_parser__n_start_req_13(%rip), %rax
	popq	%rcx
	retq
LBB134_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB135_10
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$45, %cl
	je	LBB135_6
## %bb.2:                               ## %has_data
	cmpb	$69, %cl
	je	LBB135_7
## %bb.3:                               ## %has_data
	cmpb	$75, %cl
	je	LBB135_8
## %bb.4:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB135_5
## %bb.9:                               ## %http_parser__n_start_req_22.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_22 ## TAILCALL
LBB135_10:                              ## %no_data
	leaq	_http_parser__n_start_req_14(%rip), %rax
	popq	%rcx
	retq
LBB135_6:                               ## %http_parser__n_start_req_15.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_15 ## TAILCALL
LBB135_7:                               ## %http_parser__n_start_req_16.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_16 ## TAILCALL
LBB135_8:                               ## %http_parser__n_start_req_17.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_17 ## TAILCALL
LBB135_5:                               ## %http_parser__n_error_40.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB136_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_22(%rip), %r10
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
	cmpl	$5, %eax
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
	pushq	$24
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB136_11:                              ## %pause
	leaq	_http_parser__n_start_req_15(%rip), %rax
	popq	%rbx
	retq
LBB136_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB137_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_23(%rip), %r10
	xorl	%eax, %eax
LBB137_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB137_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB137_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB137_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB137_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB137_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB137_8
LBB137_3:
	movb	$2, %r9b
	jmp	LBB137_8
LBB137_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB137_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB137_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB137_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$23
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB137_11:                              ## %pause
	leaq	_http_parser__n_start_req_16(%rip), %rax
	popq	%rbx
	retq
LBB137_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_17
_http_parser__n_start_req_17:           ## @http_parser__n_start_req_17
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB138_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$65, %cl
	je	LBB138_4
## %bb.2:                               ## %has_data
	cmpb	$67, %cl
	jne	LBB138_3
## %bb.5:                               ## %http_parser__n_start_req_19.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_19 ## TAILCALL
LBB138_6:                               ## %no_data
	leaq	_http_parser__n_start_req_17(%rip), %rax
	popq	%rcx
	retq
LBB138_4:                               ## %http_parser__n_start_req_18.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_18 ## TAILCALL
LBB138_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB139_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_24(%rip), %r10
	xorl	%eax, %eax
LBB139_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB139_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB139_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$6, %eax
	je	LBB139_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB139_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB139_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB139_8
LBB139_3:
	movb	$2, %r9b
	jmp	LBB139_8
LBB139_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB139_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB139_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB139_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$21
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB139_11:                              ## %pause
	leaq	_http_parser__n_start_req_18(%rip), %rax
	popq	%rbx
	retq
LBB139_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_19
_http_parser__n_start_req_19:           ## @http_parser__n_start_req_19
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB140_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$65, %cl
	je	LBB140_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB140_3
## %bb.5:                               ## %http_parser__n_start_req_21.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_21 ## TAILCALL
LBB140_6:                               ## %no_data
	leaq	_http_parser__n_start_req_19(%rip), %rax
	popq	%rcx
	retq
LBB140_4:                               ## %http_parser__n_start_req_20.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_20 ## TAILCALL
LBB140_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB141_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_25(%rip), %r10
	xorl	%eax, %eax
LBB141_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB141_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB141_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB141_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB141_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB141_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB141_8
LBB141_3:
	movb	$2, %r9b
	jmp	LBB141_8
LBB141_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB141_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB141_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB141_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$30
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB141_11:                              ## %pause
	leaq	_http_parser__n_start_req_20(%rip), %rax
	popq	%rbx
	retq
LBB141_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_21
_http_parser__n_start_req_21:           ## @http_parser__n_start_req_21
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB142_3
## %bb.1:                               ## %has_data
	cmpb	$76, (%rsi)
	jne	LBB142_4
## %bb.2:                               ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$10
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB142_3:                               ## %no_data
	leaq	_http_parser__n_start_req_21(%rip), %rax
	popq	%rcx
	retq
LBB142_4:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB143_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_26(%rip), %r8
LBB143_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB143_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB143_2 Depth=1
	cmpl	$1, %ecx
	je	LBB143_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB143_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB143_2
## %bb.7:
	movb	$1, %al
	jmp	LBB143_8
LBB143_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB143_8
LBB143_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB143_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB143_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB143_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$11
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB143_11:                              ## %pause
	leaq	_http_parser__n_start_req_22(%rip), %rax
	popq	%rcx
	retq
LBB143_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB144_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_27(%rip), %r10
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
	cmpl	$4, %eax
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
	pushq	$25
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB144_11:                              ## %pause
	leaq	_http_parser__n_start_req_23(%rip), %rax
	popq	%rbx
	retq
LBB144_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB145_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_28(%rip), %r10
	xorl	%eax, %eax
LBB145_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB145_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB145_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$5, %eax
	je	LBB145_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB145_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB145_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB145_8
LBB145_3:
	movb	$2, %r9b
	jmp	LBB145_8
LBB145_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB145_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB145_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB145_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$6
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB145_11:                              ## %pause
	leaq	_http_parser__n_start_req_24(%rip), %rax
	popq	%rbx
	retq
LBB145_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB146_10
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$65, %cl
	je	LBB146_6
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	je	LBB146_7
## %bb.3:                               ## %has_data
	cmpb	$82, %cl
	je	LBB146_8
## %bb.4:                               ## %has_data
	cmpb	$85, %cl
	jne	LBB146_5
## %bb.9:                               ## %http_parser__n_start_req_32.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_32 ## TAILCALL
LBB146_10:                              ## %no_data
	leaq	_http_parser__n_start_req_25(%rip), %rax
	popq	%rcx
	retq
LBB146_6:                               ## %http_parser__n_start_req_26.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_26 ## TAILCALL
LBB146_7:                               ## %http_parser__n_start_req_27.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_27 ## TAILCALL
LBB146_8:                               ## %http_parser__n_start_req_28.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_28 ## TAILCALL
LBB146_5:                               ## %http_parser__n_error_40.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB147_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_29(%rip), %r10
	xorl	%eax, %eax
LBB147_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB147_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB147_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB147_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB147_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB147_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB147_8
LBB147_3:
	movb	$2, %r9b
	jmp	LBB147_8
LBB147_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB147_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB147_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB147_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$28
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB147_11:                              ## %pause
	leaq	_http_parser__n_start_req_26(%rip), %rax
	popq	%rbx
	retq
LBB147_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB148_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_30(%rip), %r8
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
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$3
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB148_11:                              ## %pause
	leaq	_http_parser__n_start_req_27(%rip), %rax
	popq	%rcx
	retq
LBB148_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB149_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_31(%rip), %r8
LBB149_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB149_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB149_2 Depth=1
	cmpl	$1, %ecx
	je	LBB149_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB149_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB149_2
## %bb.7:
	movb	$1, %al
	jmp	LBB149_8
LBB149_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB149_8
LBB149_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB149_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB149_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB149_12
## %bb.10:                              ## %http_parser__n_start_req_29.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_start_req_29 ## TAILCALL
LBB149_11:                              ## %pause
	leaq	_http_parser__n_start_req_28(%rip), %rax
	popq	%rcx
	retq
LBB149_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_29
_http_parser__n_start_req_29:           ## @http_parser__n_start_req_29
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB150_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$70, %cl
	je	LBB150_4
## %bb.2:                               ## %has_data
	cmpb	$80, %cl
	jne	LBB150_3
## %bb.5:                               ## %http_parser__n_start_req_31.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_31 ## TAILCALL
LBB150_6:                               ## %no_data
	leaq	_http_parser__n_start_req_29(%rip), %rax
	popq	%rcx
	retq
LBB150_4:                               ## %http_parser__n_start_req_30.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_30 ## TAILCALL
LBB150_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB151_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
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
	cmpl	$2, %eax
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
	pushq	$12
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB151_11:                              ## %pause
	leaq	_http_parser__n_start_req_30(%rip), %rax
	popq	%rbx
	retq
LBB151_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB152_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_33(%rip), %r10
	xorl	%eax, %eax
LBB152_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB152_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB152_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB152_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB152_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB152_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB152_8
LBB152_3:
	movb	$2, %r9b
	jmp	LBB152_8
LBB152_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB152_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB152_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB152_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$13
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB152_11:                              ## %pause
	leaq	_http_parser__n_start_req_31(%rip), %rax
	popq	%rbx
	retq
LBB152_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_32
_http_parser__n_start_req_32:           ## @http_parser__n_start_req_32
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB153_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$82, %cl
	je	LBB153_4
## %bb.2:                               ## %has_data
	cmpb	$84, %cl
	jne	LBB153_3
## %bb.5:                               ## %http_parser__n_invoke_store_method_1.trampoline
	pushq	$4
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB153_6:                               ## %no_data
	leaq	_http_parser__n_start_req_32(%rip), %rax
	popq	%rcx
	retq
LBB153_4:                               ## %http_parser__n_start_req_33.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_33 ## TAILCALL
LBB153_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB154_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_34(%rip), %r8
LBB154_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB154_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB154_2 Depth=1
	cmpl	$1, %ecx
	je	LBB154_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB154_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB154_2
## %bb.7:
	movb	$1, %al
	jmp	LBB154_8
LBB154_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB154_8
LBB154_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB154_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB154_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB154_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$29
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB154_11:                              ## %pause
	leaq	_http_parser__n_start_req_33(%rip), %rax
	popq	%rcx
	retq
LBB154_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_34
_http_parser__n_start_req_34:           ## @http_parser__n_start_req_34
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB155_3
## %bb.1:                               ## %has_data
	cmpb	$69, (%rsi)
	jne	LBB155_4
## %bb.2:                               ## %http_parser__n_start_req_35.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_start_req_35 ## TAILCALL
LBB155_3:                               ## %no_data
	leaq	_http_parser__n_start_req_34(%rip), %rax
	popq	%rcx
	retq
LBB155_4:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_35
_http_parser__n_start_req_35:           ## @http_parser__n_start_req_35
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB156_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$66, %cl
	je	LBB156_4
## %bb.2:                               ## %has_data
	cmpb	$80, %cl
	jne	LBB156_3
## %bb.5:                               ## %http_parser__n_start_req_37.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_37 ## TAILCALL
LBB156_6:                               ## %no_data
	leaq	_http_parser__n_start_req_35(%rip), %rax
	popq	%rcx
	retq
LBB156_4:                               ## %http_parser__n_start_req_36.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_36 ## TAILCALL
LBB156_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB157_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
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
	pushq	$17
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB157_11:                              ## %pause
	leaq	_http_parser__n_start_req_36(%rip), %rax
	popq	%rbx
	retq
LBB157_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB158_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_36(%rip), %r10
	xorl	%eax, %eax
LBB158_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB158_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB158_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB158_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB158_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB158_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB158_8
LBB158_3:
	movb	$2, %r9b
	jmp	LBB158_8
LBB158_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB158_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB158_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB158_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$20
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB158_11:                              ## %pause
	leaq	_http_parser__n_start_req_37(%rip), %rax
	popq	%rbx
	retq
LBB158_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB159_8
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$69, %cl
	je	LBB159_5
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	je	LBB159_6
## %bb.3:                               ## %has_data
	cmpb	$85, %cl
	jne	LBB159_4
## %bb.7:                               ## %http_parser__n_start_req_41.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_41 ## TAILCALL
LBB159_8:                               ## %no_data
	leaq	_http_parser__n_start_req_38(%rip), %rax
	popq	%rcx
	retq
LBB159_5:                               ## %http_parser__n_start_req_39.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_39 ## TAILCALL
LBB159_6:                               ## %http_parser__n_start_req_40.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_40 ## TAILCALL
LBB159_4:                               ## %http_parser__n_error_40.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB160_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_37(%rip), %r10
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
	pushq	$14
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB160_11:                              ## %pause
	leaq	_http_parser__n_start_req_39(%rip), %rax
	popq	%rbx
	retq
LBB160_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB161_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_38(%rip), %r10
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
	cmpl	$3, %eax
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
	pushq	$33
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB161_11:                              ## %pause
	leaq	_http_parser__n_start_req_40(%rip), %rax
	popq	%rbx
	retq
LBB161_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB162_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_39(%rip), %r10
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
	cmpl	$6, %eax
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
	pushq	$26
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB162_11:                              ## %pause
	leaq	_http_parser__n_start_req_41(%rip), %rax
	popq	%rbx
	retq
LBB162_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB163_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_40(%rip), %r10
	xorl	%eax, %eax
LBB163_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB163_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB163_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$3, %eax
	je	LBB163_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB163_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB163_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB163_8
LBB163_3:
	movb	$2, %r9b
	jmp	LBB163_8
LBB163_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB163_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB163_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB163_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$7
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB163_11:                              ## %pause
	leaq	_http_parser__n_start_req_42(%rip), %rax
	popq	%rbx
	retq
LBB163_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_43
_http_parser__n_start_req_43:           ## @http_parser__n_start_req_43
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB164_3
## %bb.1:                               ## %has_data
	cmpb	$78, (%rsi)
	jne	LBB164_4
## %bb.2:                               ## %http_parser__n_start_req_44.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_start_req_44 ## TAILCALL
LBB164_3:                               ## %no_data
	leaq	_http_parser__n_start_req_43(%rip), %rax
	popq	%rcx
	retq
LBB164_4:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB165_8
## %bb.1:                               ## %has_data
	leaq	1(%rax), %rsi
	movb	(%rax), %cl
	cmpb	$66, %cl
	je	LBB165_5
## %bb.2:                               ## %has_data
	cmpb	$76, %cl
	je	LBB165_6
## %bb.3:                               ## %has_data
	cmpb	$83, %cl
	jne	LBB165_4
## %bb.7:                               ## %http_parser__n_start_req_49.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_49 ## TAILCALL
LBB165_8:                               ## %no_data
	leaq	_http_parser__n_start_req_44(%rip), %rax
	popq	%rcx
	retq
LBB165_5:                               ## %http_parser__n_start_req_45.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_45 ## TAILCALL
LBB165_6:                               ## %http_parser__n_start_req_46.trampoline
	popq	%rax
	jmp	_http_parser__n_start_req_46 ## TAILCALL
LBB165_4:                               ## %http_parser__n_error_40.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB166_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_41(%rip), %r10
	xorl	%eax, %eax
LBB166_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB166_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB166_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB166_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB166_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB166_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB166_8
LBB166_3:
	movb	$2, %r9b
	jmp	LBB166_8
LBB166_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB166_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB166_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB166_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$18
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB166_11:                              ## %pause
	leaq	_http_parser__n_start_req_45(%rip), %rax
	popq	%rbx
	retq
LBB166_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_start_req_46
_http_parser__n_start_req_46:           ## @http_parser__n_start_req_46
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB167_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$73, %cl
	je	LBB167_4
## %bb.2:                               ## %has_data
	cmpb	$79, %cl
	jne	LBB167_3
## %bb.5:                               ## %http_parser__n_start_req_48.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_48 ## TAILCALL
LBB167_6:                               ## %no_data
	leaq	_http_parser__n_start_req_46(%rip), %rax
	popq	%rcx
	retq
LBB167_4:                               ## %http_parser__n_start_req_47.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_start_req_47 ## TAILCALL
LBB167_3:                               ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB168_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_42(%rip), %r8
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
	pushq	$32
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB168_11:                              ## %pause
	leaq	_http_parser__n_start_req_47(%rip), %rax
	popq	%rcx
	retq
LBB168_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB169_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_43(%rip), %r8
LBB169_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB169_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB169_2 Depth=1
	cmpl	$1, %ecx
	je	LBB169_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB169_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB169_2
## %bb.7:
	movb	$1, %al
	jmp	LBB169_8
LBB169_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB169_8
LBB169_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB169_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB169_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB169_12
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	incq	%rsi
	pushq	$15
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rax
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB169_11:                              ## %pause
	leaq	_http_parser__n_start_req_48(%rip), %rax
	popq	%rcx
	retq
LBB169_12:                              ## %http_parser__n_error_40.trampoline
	popq	%rax
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB170_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_44(%rip), %r10
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
	cmpl	$7, %eax
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
## %bb.10:                              ## %http_parser__n_invoke_store_method_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	pushq	$27
	.cfi_adjust_cfa_offset 8
	popq	%rcx
	.cfi_adjust_cfa_offset -8
	popq	%rbx
	jmp	_http_parser__n_invoke_store_method_1 ## TAILCALL
LBB170_11:                              ## %pause
	leaq	_http_parser__n_start_req_49(%rip), %rax
	popq	%rbx
	retq
LBB170_12:                              ## %http_parser__n_error_40.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_40 ## TAILCALL
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
	je	LBB171_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_45(%rip), %r10
	xorl	%eax, %eax
LBB171_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB171_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB171_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$4, %eax
	je	LBB171_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB171_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB171_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB171_8
LBB171_3:
	movb	$2, %r9b
	jmp	LBB171_8
LBB171_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB171_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB171_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB171_12
## %bb.10:                              ## %http_parser__n_res_http_major.trampoline
	leaq	1(%rsi,%rcx), %rsi
	popq	%rbx
	jmp	_http_parser__n_res_http_major ## TAILCALL
LBB171_11:                              ## %pause
	leaq	_http_parser__n_start_res(%rip), %rax
	popq	%rbx
	retq
LBB171_12:                              ## %http_parser__n_error_41.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_41 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_major
_http_parser__n_res_http_major:         ## @http_parser__n_res_http_major
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB172_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB172_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_major_1.trampoline
	incq	%rsi
	movb	%al, 74(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_http_dot ## TAILCALL
LBB172_3:                               ## %no_data
	leaq	_http_parser__n_res_http_major(%rip), %rax
	popq	%rcx
	retq
LBB172_4:                               ## %http_parser__n_error_38.trampoline
	popq	%rax
	jmp	_http_parser__n_error_38 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_dot
_http_parser__n_res_http_dot:           ## @http_parser__n_res_http_dot
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB173_3
## %bb.1:                               ## %has_data
	cmpb	$46, (%rsi)
	jne	LBB173_4
## %bb.2:                               ## %http_parser__n_res_http_minor.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_res_http_minor ## TAILCALL
LBB173_3:                               ## %no_data
	leaq	_http_parser__n_res_http_dot(%rip), %rax
	popq	%rcx
	retq
LBB173_4:                               ## %http_parser__n_error_37.trampoline
	popq	%rax
	jmp	_http_parser__n_error_37 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_minor
_http_parser__n_res_http_minor:         ## @http_parser__n_res_http_minor
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB174_3
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	addb	$-48, %al
	cmpb	$10, %al
	jae	LBB174_4
## %bb.2:                               ## %http_parser__n_invoke_store_http_minor_1.trampoline
	incq	%rsi
	movb	%al, 75(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_http_end ## TAILCALL
LBB174_3:                               ## %no_data
	leaq	_http_parser__n_res_http_minor(%rip), %rax
	popq	%rcx
	retq
LBB174_4:                               ## %http_parser__n_error_36.trampoline
	popq	%rax
	jmp	_http_parser__n_error_36 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_http_end
_http_parser__n_res_http_end:           ## @http_parser__n_res_http_end
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB175_3
## %bb.1:                               ## %has_data
	cmpb	$32, (%rsi)
	jne	LBB175_4
## %bb.2:                               ## %http_parser__n_invoke_update_status_code.trampoline
	incq	%rsi
	andw	$0, 80(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_status_code ## TAILCALL
LBB175_3:                               ## %no_data
	leaq	_http_parser__n_res_http_end(%rip), %rax
	popq	%rcx
	retq
LBB175_4:                               ## %http_parser__n_error_35.trampoline
	popq	%rax
	jmp	_http_parser__n_error_35 ## TAILCALL
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
	je	LBB176_7
## %bb.1:                               ## %has_data.lr.ph
	movw	$10, %r8w
LBB176_2:                               ## %has_data
                                        ## =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	addb	$-48, %cl
	cmpb	$10, %cl
	jae	LBB176_8
## %bb.3:                               ## %switch.lookup
                                        ##   in Loop: Header=BB176_2 Depth=1
	movzwl	80(%rdi), %eax
	mulw	%r8w
	jo	LBB176_9
## %bb.4:                               ## %no_overflow.i.i
                                        ##   in Loop: Header=BB176_2 Depth=1
	movzbl	%cl, %ecx
	addw	%cx, %ax
	jb	LBB176_9
## %bb.5:                               ## %no_overflow.i.i
                                        ##   in Loop: Header=BB176_2 Depth=1
	cmpw	$999, %ax               ## imm = 0x3E7
	ja	LBB176_9
## %bb.6:                               ## %http_parser__n_res_status_code.trampoline.i
                                        ##   in Loop: Header=BB176_2 Depth=1
	incq	%rsi
	movw	%ax, 80(%rdi)
	cmpq	%rsi, %r9
	jne	LBB176_2
LBB176_7:                               ## %no_data
	leaq	_http_parser__n_res_status_code(%rip), %rax
	popq	%rcx
	retq
LBB176_8:                               ## %http_parser__n_res_status_code_otherwise.trampoline
	movq	%r9, %rdx
	popq	%rax
	jmp	_http_parser__n_res_status_code_otherwise ## TAILCALL
LBB176_9:                               ## %http_parser__n_error_33.trampoline.i
	incq	%rsi
	movq	%r9, %rdx
	popq	%rax
	jmp	_http_parser__n_error_33 ## TAILCALL
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_status_code_otherwise
_http_parser__n_res_status_code_otherwise: ## @http_parser__n_res_status_code_otherwise
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB178_6
## %bb.1:                               ## %has_data
	movb	(%rsi), %al
	cmpb	$10, %al
	je	LBB178_5
## %bb.2:                               ## %has_data
	cmpb	$13, %al
	je	LBB178_5
## %bb.3:                               ## %has_data
	cmpb	$32, %al
	jne	LBB178_7
## %bb.4:                               ## %http_parser__n_res_status_start.trampoline1
	incq	%rsi
LBB178_5:                               ## %http_parser__n_res_status_start.trampoline
	popq	%rax
	jmp	_http_parser__n_res_status_start ## TAILCALL
LBB178_6:                               ## %no_data
	leaq	_http_parser__n_res_status_code_otherwise(%rip), %rax
	popq	%rcx
	retq
LBB178_7:                               ## %http_parser__n_error_34.trampoline
	popq	%rax
	jmp	_http_parser__n_error_34 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_status_start
_http_parser__n_res_status_start:       ## @http_parser__n_res_status_start
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB179_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$10, %cl
	je	LBB179_4
## %bb.2:                               ## %has_data
	cmpb	$13, %cl
	jne	LBB179_3
## %bb.5:                               ## %http_parser__n_res_line_almost_done.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_res_line_almost_done ## TAILCALL
LBB179_6:                               ## %no_data
	leaq	_http_parser__n_res_status_start(%rip), %rax
	popq	%rcx
	retq
LBB179_4:                               ## %http_parser__n_header_field_start.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB179_3:                               ## %http_parser__n_span_start_http_parser__on_status.trampoline
	popq	%rax
	jmp	_http_parser__n_span_start_http_parser__on_status ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_res_line_almost_done
_http_parser__n_res_line_almost_done:   ## @http_parser__n_res_line_almost_done
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB180_1
## %bb.2:                               ## %http_parser__n_header_field_start.trampoline
	pushq	%rax
	.cfi_def_cfa_offset 16
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB180_1:                               ## %no_data
	leaq	_http_parser__n_res_line_almost_done(%rip), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_span_start_http_parser__on_status
_http_parser__n_span_start_http_parser__on_status: ## @http_parser__n_span_start_http_parser__on_status
	.cfi_startproc
## %bb.0:
	cmpq	%rdx, %rsi
	je	LBB181_1
## %bb.2:                               ## %has_data
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, 8(%rdi)
	movq	_http_parser__on_status@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	popq	%rax
	jmp	_http_parser__n_res_status ## TAILCALL
LBB181_1:                               ## %no_data
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
LBB182_1:                               ## %tailrecurse
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %r15
	je	LBB182_9
## %bb.2:                               ## %has_data
                                        ##   in Loop: Header=BB182_1 Depth=1
	movb	(%rbx), %al
	incq	%rbx
	cmpb	$13, %al
	je	LBB182_7
## %bb.3:                               ## %has_data
                                        ##   in Loop: Header=BB182_1 Depth=1
	cmpb	$10, %al
	jne	LBB182_1
## %bb.4:                               ## %http_parser__n_span_end_http_parser__on_status.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	leaq	-1(%rbx), %rdx
	movq	%r14, %rdi
	callq	_http_parser__on_status
	testl	%eax, %eax
	jne	LBB182_5
## %bb.11:                              ## %http_parser__n_header_field_start.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_header_field_start ## TAILCALL
LBB182_7:                               ## %http_parser__n_span_end_http_parser__on_status_1.trampoline
	movq	8(%r14), %rsi
	andq	$0, 8(%r14)
	leaq	-1(%rbx), %rdx
	movq	%r14, %rdi
	callq	_http_parser__on_status
	testl	%eax, %eax
	jne	LBB182_8
## %bb.12:                              ## %http_parser__n_res_line_almost_done.trampoline.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_http_parser__n_res_line_almost_done ## TAILCALL
LBB182_9:                               ## %no_data
	leaq	_http_parser__n_res_status(%rip), %rax
LBB182_10:                              ## %no_data
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
LBB182_8:                               ## %http_parser__n_span_end_http_parser__on_status_1.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_res_line_almost_done(%rip), %rax
	jmp	LBB182_6
LBB182_5:                               ## %http_parser__n_span_end_http_parser__on_status.exit
	movl	%eax, 24(%r14)
	leaq	_g_cstr_1(%rip), %rax
	movq	%rax, 32(%r14)
	movq	%rbx, 40(%r14)
	leaq	_http_parser__n_header_field_start(%rip), %rax
LBB182_6:                               ## %http_parser__n_span_end_http_parser__on_status.exit
	movq	%rax, 56(%r14)
	xorl	%eax, %eax
	jmp	LBB182_10
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_34
_http_parser__n_error_34:               ## @http_parser__n_error_34
	.cfi_startproc
## %bb.0:
	movl	$13, 24(%rdi)
	leaq	_g_cstr_36(%rip), %rax
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
	movl	$13, 24(%rdi)
	leaq	_g_cstr_36(%rip), %rax
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_38
_http_parser__n_error_38:               ## @http_parser__n_error_38
	.cfi_startproc
## %bb.0:
	movl	$9, 24(%rdi)
	leaq	_g_cstr_25(%rip), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_41
_http_parser__n_error_41:               ## @http_parser__n_error_41
	.cfi_startproc
## %bb.0:
	movl	$8, 24(%rdi)
	leaq	_g_cstr_26(%rip), %rax
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
	je	LBB189_3
## %bb.1:                               ## %has_data
	cmpb	$72, (%rsi)
	jne	LBB189_4
## %bb.2:                               ## %http_parser__n_req_or_res_method.trampoline
	popq	%rax
	jmp	_http_parser__n_req_or_res_method ## TAILCALL
LBB189_3:                               ## %no_data
	leaq	_http_parser__n_start_req_or_res(%rip), %rax
	popq	%rcx
	retq
LBB189_4:                               ## %http_parser__n_invoke_update_type_2.trampoline
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
	je	LBB190_3
## %bb.1:                               ## %has_data
	cmpb	$72, (%rsi)
	jne	LBB190_4
## %bb.2:                               ## %http_parser__n_req_or_res_method_1.trampoline
	incq	%rsi
	popq	%rax
	jmp	_http_parser__n_req_or_res_method_1 ## TAILCALL
LBB190_3:                               ## %no_data
	leaq	_http_parser__n_req_or_res_method(%rip), %rax
	popq	%rcx
	retq
LBB190_4:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_req_or_res_method_1
_http_parser__n_req_or_res_method_1:    ## @http_parser__n_req_or_res_method_1
	.cfi_startproc
## %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rdx, %rsi
	je	LBB191_6
## %bb.1:                               ## %has_data
	leaq	1(%rsi), %rax
	movb	(%rsi), %cl
	cmpb	$69, %cl
	je	LBB191_4
## %bb.2:                               ## %has_data
	cmpb	$84, %cl
	jne	LBB191_3
## %bb.5:                               ## %http_parser__n_req_or_res_method_3.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_req_or_res_method_3 ## TAILCALL
LBB191_6:                               ## %no_data
	leaq	_http_parser__n_req_or_res_method_1(%rip), %rax
	popq	%rcx
	retq
LBB191_4:                               ## %http_parser__n_req_or_res_method_2.trampoline
	movq	%rax, %rsi
	popq	%rax
	jmp	_http_parser__n_req_or_res_method_2 ## TAILCALL
LBB191_3:                               ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
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
	je	LBB192_11
## %bb.1:                               ## %has_data
	movl	(%rdi), %ecx
	leaq	_g_blob_46(%rip), %r8
LBB192_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movb	(%rax), %r9b
	movslq	%ecx, %rax
	cmpb	(%rax,%r8), %r9b
	jne	LBB192_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB192_2 Depth=1
	cmpl	$1, %ecx
	je	LBB192_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB192_2 Depth=1
	leaq	1(%rsi), %rax
	incl	%ecx
	cmpq	%rax, %rdx
	jne	LBB192_2
## %bb.7:
	movb	$1, %al
	jmp	LBB192_8
LBB192_3:
	movb	$2, %al
	xorl	%ecx, %ecx
	jmp	LBB192_8
LBB192_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB192_8:                               ## %http_parser__match_sequence_id.exit
	movl	%ecx, (%rdi)
	andb	$3, %al
	cmpb	$1, %al
	je	LBB192_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %al
	je	LBB192_12
## %bb.10:                              ## %http_parser__n_invoke_store_method.trampoline
	incq	%rsi
	movb	$2, 73(%rdi)
	popq	%rax
	jmp	_http_parser__n_invoke_update_type ## TAILCALL
LBB192_11:                              ## %pause
	leaq	_http_parser__n_req_or_res_method_2(%rip), %rax
	popq	%rcx
	retq
LBB192_12:                              ## %http_parser__n_error_39.trampoline
	popq	%rax
	jmp	_http_parser__n_error_39 ## TAILCALL
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
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error_39
_http_parser__n_error_39:               ## @http_parser__n_error_39
	.cfi_startproc
## %bb.0:
	movl	$8, 24(%rdi)
	leaq	_g_cstr_37(%rip), %rax
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
	je	LBB195_11
## %bb.1:                               ## %has_data
	movq	%rdx, %r9
	subq	%rsi, %r9
	movl	(%rdi), %r11d
	xorl	%r8d, %r8d
	leaq	_g_blob_47(%rip), %r10
	xorl	%eax, %eax
LBB195_2:                               ## %loop.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leal	(%r11,%rax), %eax
	movb	(%rsi,%rcx), %bl
	cltq
	cmpb	(%rax,%r10), %bl
	jne	LBB195_3
## %bb.4:                               ## %match.i
                                        ##   in Loop: Header=BB195_2 Depth=1
	leal	(%r11,%rcx), %eax
	cmpl	$2, %eax
	je	LBB195_5
## %bb.6:                               ## %is_incomplete.i
                                        ##   in Loop: Header=BB195_2 Depth=1
	leaq	1(%rcx), %rax
	cmpq	%rax, %r9
	jne	LBB195_2
## %bb.7:                               ## %is_incomplete.i.http_parser__match_sequence_id.exit_crit_edge
	addl	%r11d, %eax
	movb	$1, %r9b
	movl	%eax, %r8d
	jmp	LBB195_8
LBB195_3:
	movb	$2, %r9b
	jmp	LBB195_8
LBB195_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
LBB195_8:                               ## %http_parser__match_sequence_id.exit
	movl	%r8d, (%rdi)
	andb	$3, %r9b
	cmpb	$1, %r9b
	je	LBB195_11
## %bb.9:                               ## %http_parser__match_sequence_id.exit
	cmpb	$2, %r9b
	je	LBB195_12
## %bb.10:                              ## %http_parser__n_invoke_update_type_1.trampoline
	leaq	1(%rsi,%rcx), %rsi
	movb	$2, 72(%rdi)
	popq	%rbx
	jmp	_http_parser__n_res_http_major ## TAILCALL
LBB195_11:                              ## %pause
	leaq	_http_parser__n_req_or_res_method_3(%rip), %rax
	popq	%rbx
	retq
LBB195_12:                              ## %http_parser__n_error_39.trampoline
	addq	%rcx, %rsi
	popq	%rbx
	jmp	_http_parser__n_error_39 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function http_parser__n_error
_http_parser__n_error:                  ## @http_parser__n_error
	.cfi_startproc
## %bb.0:
	movl	$15, 24(%rdi)
	leaq	_g_cstr_39(%rip), %rax
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
	jne	LBB198_5
## %bb.1:                               ## %no_error
	cmpq	$0, 8(%rbx)
	je	LBB198_2
## %bb.9:                               ## %span_restart_0
	movq	%rsi, 8(%rbx)
LBB198_2:                               ## %span_empty_0
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*56(%rbx)
	testq	%rax, %rax
	je	LBB198_8
## %bb.3:                               ## %success
	movq	%rax, 56(%rbx)
	movq	8(%rbx), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	LBB198_5
## %bb.4:                               ## %span_present_0
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*16(%rbx)
	testl	%eax, %eax
	jne	LBB198_7
LBB198_5:                               ## %span_empty_01
	movl	%ebp, %eax
LBB198_6:                               ## %span_empty_01
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB198_8:                               ## %error
	movl	24(%rbx), %eax
	jmp	LBB198_6
LBB198_7:                               ## %span_error_0
	movl	%eax, 24(%rbx)
	leaq	_g_cstr_1(%rip), %rcx
	movq	%rcx, 32(%rbx)
	movq	%r14, 40(%rbx)
	jmp	LBB198_6
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
	.asciz	"Data after `Connection: close`"

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
	.asciz	"pause on CONNECT/Upgrade"

	.p2align	4               ## @g_cstr_9
_g_cstr_9:
	.asciz	"Chunk size overflow"

	.p2align	4               ## @g_cstr_10
_g_cstr_10:
	.asciz	"on_chunk_header pause"

	.p2align	4               ## @g_cstr_11
_g_cstr_11:
	.asciz	"on_chunk_header callback error"

	.p2align	4               ## @g_cstr_12
_g_cstr_12:
	.asciz	"Invalid character in chunk size"

	.p2align	4               ## @g_cstr_13
_g_cstr_13:
	.asciz	"paused by on_headers_complete"

	.p2align	4               ## @g_cstr_14
_g_cstr_14:
	.asciz	"User callback error"

_g_blob_1:                              ## @g_blob_1
	.ascii	"on"

_g_blob_2:                              ## @g_blob_2
	.ascii	"ection"

_g_blob_3:                              ## @g_blob_3
	.ascii	"lose"

	.p2align	4               ## @g_cstr_15
_g_cstr_15:
	.asciz	"Missing expected LF after header value"

	.p2align	4               ## @g_cstr_16
_g_cstr_16:
	.asciz	"invalid header value char"

	.p2align	4               ## @g_lookup_table_2
_g_lookup_table_2:
	.asciz	"\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\002\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

_g_blob_4:                              ## @g_blob_4
	.ascii	"eep-alive"

	.p2align	4               ## @g_lookup_table_3
_g_lookup_table_3:
	.asciz	"\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

	.p2align	4               ## @g_cstr_17
_g_cstr_17:
	.asciz	"Content-Length overflow"

	.p2align	4               ## @g_cstr_18
_g_cstr_18:
	.asciz	"Invalid character in Content-Length"

	.p2align	4               ## @g_cstr_19
_g_cstr_19:
	.asciz	"Duplicate Content-Length"

_g_blob_6:                              ## @g_blob_6
	.ascii	"hunked"

	.p2align	4               ## @g_lookup_table_4
_g_lookup_table_4:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\001\001\001\001\001\000\000\001\001\000\001\001\000\001\001\001\001\001\001\001\001\001\001\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.p2align	4               ## @g_cstr_20
_g_cstr_20:
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

_g_cstr_21:                             ## @g_cstr_21
	.asciz	"Expected CRLF"

_g_blob_12:                             ## @g_blob_12
	.ascii	"TTP/"

	.p2align	4               ## @g_cstr_22
_g_cstr_22:
	.asciz	"Expected CRLF after version"

	.p2align	4               ## @g_cstr_23
_g_cstr_23:
	.asciz	"Invalid minor version"

_g_cstr_24:                             ## @g_cstr_24
	.asciz	"Expected dot"

	.p2align	4               ## @g_cstr_25
_g_cstr_25:
	.asciz	"Invalid major version"

_g_cstr_26:                             ## @g_cstr_26
	.asciz	"Expected HTTP/"

	.p2align	4               ## @g_lookup_table_5
_g_lookup_table_5:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\001\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\000\000\000\000\000\000\000\000\000\000\004\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004"

	.p2align	4               ## @g_cstr_27
_g_cstr_27:
	.asciz	"Invalid char in url fragment start"

	.p2align	4               ## @g_lookup_table_6
_g_lookup_table_6:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\001\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\004\004\005\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\000\000\000\000\000\000\000\000\000\000\004\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004"

	.p2align	4               ## @g_cstr_28
_g_cstr_28:
	.asciz	"Invalid char in url query"

	.p2align	4               ## @g_cstr_29
_g_cstr_29:
	.asciz	"Invalid char in url path"

_g_blob_13:                             ## @g_blob_13
	.space	2,47

	.p2align	4               ## @g_lookup_table_8
_g_lookup_table_8:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\001\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\004\000\000\004\004\004\004\004\004\004\004\004\004\004\005\004\004\004\004\004\004\004\004\004\004\004\004\000\004\000\006\007\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\004\000\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

_g_cstr_30:                             ## @g_cstr_30
	.asciz	"Double @ in url"

	.p2align	4               ## @g_cstr_31
_g_cstr_31:
	.asciz	"Unexpected char in url server"

	.p2align	4               ## @g_cstr_32
_g_cstr_32:
	.asciz	"Unexpected char in url schema"

	.p2align	4               ## @g_cstr_33
_g_cstr_33:
	.asciz	"Unexpected start char in url"

	.p2align	4               ## @g_cstr_34
_g_cstr_34:
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

	.p2align	4               ## @g_cstr_35
_g_cstr_35:
	.asciz	"Response overflow"

	.p2align	4               ## @g_cstr_36
_g_cstr_36:
	.asciz	"Invalid response status"

_g_blob_46:                             ## @g_blob_46
	.ascii	"AD"

	.p2align	4               ## @g_cstr_37
_g_cstr_37:
	.asciz	"Invalid word encountered"

_g_blob_47:                             ## @g_blob_47
	.ascii	"TP/"

	.p2align	4               ## @g_cstr_38
_g_cstr_38:
	.asciz	"on_message_begin pause"

	.p2align	4               ## @g_cstr_39
_g_cstr_39:
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
