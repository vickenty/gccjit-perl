# DO NOT EDIT - this file is autogenerated by tools/regen.pl
package GCCJIT::Wrapper;
use strict;
use warnings;
use Scalar::Util qw/weaken/;
use GCCJIT;

my %stash;
sub gcc_jit_blockPtr::add_assignment {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_add_assignment(@_);
}

sub gcc_jit_blockPtr::add_assignment_op {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_add_assignment_op(@_);
}

sub gcc_jit_blockPtr::add_comment {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_add_comment(@_);
}

sub gcc_jit_blockPtr::add_eval {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_add_eval(@_);
}

sub gcc_jit_blockPtr::as_object {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_block_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_blockPtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_blockPtr::end_with_conditional {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_end_with_conditional(@_);
}

sub gcc_jit_blockPtr::end_with_jump {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_end_with_jump(@_);
}

sub gcc_jit_blockPtr::end_with_return {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_end_with_return(@_);
}

sub gcc_jit_blockPtr::end_with_switch {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_end_with_switch(@_);
}

sub gcc_jit_blockPtr::end_with_void_return {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    GCCJIT::gcc_jit_block_end_with_void_return(@_);
}

sub gcc_jit_blockPtr::get_function {
    die "this block is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_blockPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_block_get_function(@_);
    if (defined $obj) {
        $stash{"gcc_jit_functionPtr"}{$obj} = $stash{"gcc_jit_blockPtr"}{$_[0]};
        weaken $stash{"gcc_jit_functionPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_casePtr::as_object {
    die "this case is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_casePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_case_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_casePtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::acquire {
    my $obj = GCCJIT::gcc_jit_context_acquire(@_);
    if (defined $obj) {
        $stash{"gcc_jit_contextPtr"}{$obj} = $_[0];
    }
    $obj;
}

*gcc_jit_contextPtr::add_command_line_option = \&GCCJIT::gcc_jit_context_add_command_line_option;

*gcc_jit_contextPtr::compile = \&GCCJIT::gcc_jit_context_compile;

*gcc_jit_contextPtr::compile_to_file = \&GCCJIT::gcc_jit_context_compile_to_file;

*gcc_jit_contextPtr::dump_reproducer_to_file = \&GCCJIT::gcc_jit_context_dump_reproducer_to_file;

*gcc_jit_contextPtr::dump_to_file = \&GCCJIT::gcc_jit_context_dump_to_file;

sub gcc_jit_contextPtr::get_builtin_function {
    my $obj = GCCJIT::gcc_jit_context_get_builtin_function(@_);
    if (defined $obj) {
        $stash{"gcc_jit_functionPtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_functionPtr"}{$obj};
    }
    $obj;
}

*gcc_jit_contextPtr::get_first_error = \&GCCJIT::gcc_jit_context_get_first_error;

sub gcc_jit_contextPtr::get_int_type {
    my $obj = GCCJIT::gcc_jit_context_get_int_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

*gcc_jit_contextPtr::get_last_error = \&GCCJIT::gcc_jit_context_get_last_error;

sub gcc_jit_contextPtr::get_type {
    my $obj = GCCJIT::gcc_jit_context_get_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_array_access {
    my $obj = GCCJIT::gcc_jit_context_new_array_access(@_);
    if (defined $obj) {
        $stash{"gcc_jit_lvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_lvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_array_type {
    my $obj = GCCJIT::gcc_jit_context_new_array_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_binary_op {
    my $obj = GCCJIT::gcc_jit_context_new_binary_op(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_call {
    my $obj = GCCJIT::gcc_jit_context_new_call(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_call_through_ptr {
    my $obj = GCCJIT::gcc_jit_context_new_call_through_ptr(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_case {
    my $obj = GCCJIT::gcc_jit_context_new_case(@_);
    if (defined $obj) {
        $stash{"gcc_jit_casePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_casePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_cast {
    my $obj = GCCJIT::gcc_jit_context_new_cast(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_child_context {
    my $obj = GCCJIT::gcc_jit_context_new_child_context(@_);
    if (defined $obj) {
        $stash{"gcc_jit_contextPtr"}{$obj} = $_[0];
    }
    $obj;
}

sub gcc_jit_contextPtr::new_comparison {
    my $obj = GCCJIT::gcc_jit_context_new_comparison(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_field {
    my $obj = GCCJIT::gcc_jit_context_new_field(@_);
    if (defined $obj) {
        $stash{"gcc_jit_fieldPtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_fieldPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_function {
    my $obj = GCCJIT::gcc_jit_context_new_function(@_);
    if (defined $obj) {
        $stash{"gcc_jit_functionPtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_functionPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_function_ptr_type {
    my $obj = GCCJIT::gcc_jit_context_new_function_ptr_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_global {
    my $obj = GCCJIT::gcc_jit_context_new_global(@_);
    if (defined $obj) {
        $stash{"gcc_jit_lvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_lvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_location {
    my $obj = GCCJIT::gcc_jit_context_new_location(@_);
    if (defined $obj) {
        $stash{"gcc_jit_locationPtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_locationPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_opaque_struct {
    my $obj = GCCJIT::gcc_jit_context_new_opaque_struct(@_);
    if (defined $obj) {
        $stash{"gcc_jit_structPtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_structPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_param {
    my $obj = GCCJIT::gcc_jit_context_new_param(@_);
    if (defined $obj) {
        $stash{"gcc_jit_paramPtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_paramPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_rvalue_from_double {
    my $obj = GCCJIT::gcc_jit_context_new_rvalue_from_double(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_rvalue_from_int {
    my $obj = GCCJIT::gcc_jit_context_new_rvalue_from_int(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_rvalue_from_long {
    my $obj = GCCJIT::gcc_jit_context_new_rvalue_from_long(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_rvalue_from_ptr {
    my $obj = GCCJIT::gcc_jit_context_new_rvalue_from_ptr(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_string_literal {
    my $obj = GCCJIT::gcc_jit_context_new_string_literal(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_struct_type {
    my $obj = GCCJIT::gcc_jit_context_new_struct_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_structPtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_structPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_unary_op {
    my $obj = GCCJIT::gcc_jit_context_new_unary_op(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::new_union_type {
    my $obj = GCCJIT::gcc_jit_context_new_union_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::null {
    my $obj = GCCJIT::gcc_jit_context_null(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_contextPtr::one {
    my $obj = GCCJIT::gcc_jit_context_one(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

*gcc_jit_contextPtr::set_bool_allow_unreachable_blocks = \&GCCJIT::gcc_jit_context_set_bool_allow_unreachable_blocks;

*gcc_jit_contextPtr::set_bool_option = \&GCCJIT::gcc_jit_context_set_bool_option;

*gcc_jit_contextPtr::set_int_option = \&GCCJIT::gcc_jit_context_set_int_option;

*gcc_jit_contextPtr::set_logfile = \&GCCJIT::gcc_jit_context_set_logfile;

*gcc_jit_contextPtr::set_str_option = \&GCCJIT::gcc_jit_context_set_str_option;

sub gcc_jit_contextPtr::zero {
    my $obj = GCCJIT::gcc_jit_context_zero(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $_[0];
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_fieldPtr::as_object {
    die "this field is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_fieldPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_field_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_fieldPtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_functionPtr::as_object {
    die "this function is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_functionPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_function_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_functionPtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_functionPtr::dump_to_dot {
    die "this function is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_functionPtr"}{$_[0]};
    GCCJIT::gcc_jit_function_dump_to_dot(@_);
}

sub gcc_jit_functionPtr::get_param {
    die "this function is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_functionPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_function_get_param(@_);
    if (defined $obj) {
        $stash{"gcc_jit_paramPtr"}{$obj} = $stash{"gcc_jit_functionPtr"}{$_[0]};
        weaken $stash{"gcc_jit_paramPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_functionPtr::new_block {
    die "this function is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_functionPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_function_new_block(@_);
    if (defined $obj) {
        $stash{"gcc_jit_blockPtr"}{$obj} = $stash{"gcc_jit_functionPtr"}{$_[0]};
        weaken $stash{"gcc_jit_blockPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_functionPtr::new_local {
    die "this function is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_functionPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_function_new_local(@_);
    if (defined $obj) {
        $stash{"gcc_jit_lvaluePtr"}{$obj} = $stash{"gcc_jit_functionPtr"}{$_[0]};
        weaken $stash{"gcc_jit_lvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_locationPtr::as_object {
    die "this location is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_locationPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_location_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_locationPtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_lvaluePtr::access_field {
    die "this lvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_lvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_lvalue_access_field(@_);
    if (defined $obj) {
        $stash{"gcc_jit_lvaluePtr"}{$obj} = $stash{"gcc_jit_lvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_lvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_lvaluePtr::as_object {
    die "this lvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_lvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_lvalue_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_lvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_lvaluePtr::as_rvalue {
    die "this lvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_lvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_lvalue_as_rvalue(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $stash{"gcc_jit_lvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_lvaluePtr::get_address {
    die "this lvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_lvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_lvalue_get_address(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $stash{"gcc_jit_lvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_objectPtr::get_context {
    $stash{"gcc_jit_objectPtr"}{$_[0]}
}

sub gcc_jit_objectPtr::get_debug_string {
    die "this object is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_objectPtr"}{$_[0]};
    GCCJIT::gcc_jit_object_get_debug_string(@_);
}

sub gcc_jit_paramPtr::as_lvalue {
    die "this param is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_paramPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_param_as_lvalue(@_);
    if (defined $obj) {
        $stash{"gcc_jit_lvaluePtr"}{$obj} = $stash{"gcc_jit_paramPtr"}{$_[0]};
        weaken $stash{"gcc_jit_lvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_paramPtr::as_object {
    die "this param is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_paramPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_param_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_paramPtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_paramPtr::as_rvalue {
    die "this param is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_paramPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_param_as_rvalue(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $stash{"gcc_jit_paramPtr"}{$_[0]};
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

*gcc_jit_resultPtr::get_code = \&GCCJIT::gcc_jit_result_get_code;

*gcc_jit_resultPtr::get_global = \&GCCJIT::gcc_jit_result_get_global;

sub gcc_jit_rvaluePtr::access_field {
    die "this rvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_rvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_rvalue_access_field(@_);
    if (defined $obj) {
        $stash{"gcc_jit_rvaluePtr"}{$obj} = $stash{"gcc_jit_rvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_rvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_rvaluePtr::as_object {
    die "this rvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_rvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_rvalue_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_rvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_rvaluePtr::dereference {
    die "this rvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_rvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_rvalue_dereference(@_);
    if (defined $obj) {
        $stash{"gcc_jit_lvaluePtr"}{$obj} = $stash{"gcc_jit_rvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_lvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_rvaluePtr::dereference_field {
    die "this rvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_rvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_rvalue_dereference_field(@_);
    if (defined $obj) {
        $stash{"gcc_jit_lvaluePtr"}{$obj} = $stash{"gcc_jit_rvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_lvaluePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_rvaluePtr::get_type {
    die "this rvalue is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_rvaluePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_rvalue_get_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $stash{"gcc_jit_rvaluePtr"}{$_[0]};
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_structPtr::as_type {
    die "this struct is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_structPtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_struct_as_type(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $stash{"gcc_jit_structPtr"}{$_[0]};
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_structPtr::set_fields {
    die "this struct is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_structPtr"}{$_[0]};
    GCCJIT::gcc_jit_struct_set_fields(@_);
}

sub gcc_jit_typePtr::as_object {
    die "this type is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_typePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_type_as_object(@_);
    if (defined $obj) {
        $stash{"gcc_jit_objectPtr"}{$obj} = $stash{"gcc_jit_typePtr"}{$_[0]};
        weaken $stash{"gcc_jit_objectPtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_typePtr::get_const {
    die "this type is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_typePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_type_get_const(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $stash{"gcc_jit_typePtr"}{$_[0]};
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_typePtr::get_pointer {
    die "this type is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_typePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_type_get_pointer(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $stash{"gcc_jit_typePtr"}{$_[0]};
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_typePtr::get_volatile {
    die "this type is no longer usable because parent context was destroyed"
        unless defined $stash{"gcc_jit_typePtr"}{$_[0]};
    my $obj = GCCJIT::gcc_jit_type_get_volatile(@_);
    if (defined $obj) {
        $stash{"gcc_jit_typePtr"}{$obj} = $stash{"gcc_jit_typePtr"}{$_[0]};
        weaken $stash{"gcc_jit_typePtr"}{$obj};
    }
    $obj;
}

sub gcc_jit_blockPtr::DESTROY {
    delete $stash{"gcc_jit_blockPtr"}{$_[0]};
}

sub gcc_jit_casePtr::DESTROY {
    delete $stash{"gcc_jit_casePtr"}{$_[0]};
}

sub gcc_jit_contextPtr::DESTROY {
    delete $stash{"gcc_jit_contextPtr"}{$_[0]};
    GCCJIT::gcc_jit_context_release($_[0]);
}

sub gcc_jit_fieldPtr::DESTROY {
    delete $stash{"gcc_jit_fieldPtr"}{$_[0]};
}

sub gcc_jit_functionPtr::DESTROY {
    delete $stash{"gcc_jit_functionPtr"}{$_[0]};
}

sub gcc_jit_locationPtr::DESTROY {
    delete $stash{"gcc_jit_locationPtr"}{$_[0]};
}

sub gcc_jit_lvaluePtr::DESTROY {
    delete $stash{"gcc_jit_lvaluePtr"}{$_[0]};
}

sub gcc_jit_objectPtr::DESTROY {
    delete $stash{"gcc_jit_objectPtr"}{$_[0]};
}

sub gcc_jit_paramPtr::DESTROY {
    delete $stash{"gcc_jit_paramPtr"}{$_[0]};
}

sub gcc_jit_resultPtr::DESTROY {
    GCCJIT::gcc_jit_result_release($_[0]);
}

sub gcc_jit_rvaluePtr::DESTROY {
    delete $stash{"gcc_jit_rvaluePtr"}{$_[0]};
}

sub gcc_jit_structPtr::DESTROY {
    delete $stash{"gcc_jit_structPtr"}{$_[0]};
}

sub gcc_jit_typePtr::DESTROY {
    delete $stash{"gcc_jit_typePtr"}{$_[0]};
}

1;
__END__
=head1 NAME

GCCJIT::Wrapper - object oriented wrapper for GCCJIT.

=head1 DESCRIPTION

Do not use this package directly. Instead, use L<GCCJIT::Context>.

=head1 AUTHOR

Vickenty Fesunov E<lt>cpan-gccjit@setattr.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2015 by Vickenty Fesunov.

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see <http://www.gnu.org/licenses/>.

=cut
