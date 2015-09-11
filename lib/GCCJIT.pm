package GCCJIT;

use 5.020002;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	GCC_JIT_BINARY_OP_BITWISE_AND
	GCC_JIT_BINARY_OP_BITWISE_OR
	GCC_JIT_BINARY_OP_BITWISE_XOR
	GCC_JIT_BINARY_OP_DIVIDE
	GCC_JIT_BINARY_OP_LOGICAL_AND
	GCC_JIT_BINARY_OP_LOGICAL_OR
	GCC_JIT_BINARY_OP_LSHIFT
	GCC_JIT_BINARY_OP_MINUS
	GCC_JIT_BINARY_OP_MODULO
	GCC_JIT_BINARY_OP_MULT
	GCC_JIT_BINARY_OP_PLUS
	GCC_JIT_BINARY_OP_RSHIFT
	GCC_JIT_BOOL_OPTION_DEBUGINFO
	GCC_JIT_BOOL_OPTION_DUMP_EVERYTHING
	GCC_JIT_BOOL_OPTION_DUMP_GENERATED_CODE
	GCC_JIT_BOOL_OPTION_DUMP_INITIAL_GIMPLE
	GCC_JIT_BOOL_OPTION_DUMP_INITIAL_TREE
	GCC_JIT_BOOL_OPTION_DUMP_SUMMARY
	GCC_JIT_BOOL_OPTION_KEEP_INTERMEDIATES
	GCC_JIT_BOOL_OPTION_SELFCHECK_GC
	GCC_JIT_COMPARISON_EQ
	GCC_JIT_COMPARISON_GE
	GCC_JIT_COMPARISON_GT
	GCC_JIT_COMPARISON_LE
	GCC_JIT_COMPARISON_LT
	GCC_JIT_COMPARISON_NE
	GCC_JIT_FUNCTION_ALWAYS_INLINE
	GCC_JIT_FUNCTION_EXPORTED
	GCC_JIT_FUNCTION_IMPORTED
	GCC_JIT_FUNCTION_INTERNAL
	GCC_JIT_GLOBAL_EXPORTED
	GCC_JIT_GLOBAL_IMPORTED
	GCC_JIT_GLOBAL_INTERNAL
	GCC_JIT_INT_OPTION_OPTIMIZATION_LEVEL
	GCC_JIT_NUM_BOOL_OPTIONS
	GCC_JIT_NUM_INT_OPTIONS
	GCC_JIT_NUM_STR_OPTIONS
	GCC_JIT_OUTPUT_KIND_ASSEMBLER
	GCC_JIT_OUTPUT_KIND_DYNAMIC_LIBRARY
	GCC_JIT_OUTPUT_KIND_EXECUTABLE
	GCC_JIT_OUTPUT_KIND_OBJECT_FILE
	GCC_JIT_STR_OPTION_PROGNAME
	GCC_JIT_TYPE_BOOL
	GCC_JIT_TYPE_CHAR
	GCC_JIT_TYPE_COMPLEX_DOUBLE
	GCC_JIT_TYPE_COMPLEX_FLOAT
	GCC_JIT_TYPE_COMPLEX_LONG_DOUBLE
	GCC_JIT_TYPE_CONST_CHAR_PTR
	GCC_JIT_TYPE_DOUBLE
	GCC_JIT_TYPE_FILE_PTR
	GCC_JIT_TYPE_FLOAT
	GCC_JIT_TYPE_INT
	GCC_JIT_TYPE_LONG
	GCC_JIT_TYPE_LONG_DOUBLE
	GCC_JIT_TYPE_LONG_LONG
	GCC_JIT_TYPE_SHORT
	GCC_JIT_TYPE_SIGNED_CHAR
	GCC_JIT_TYPE_SIZE_T
	GCC_JIT_TYPE_UNSIGNED_CHAR
	GCC_JIT_TYPE_UNSIGNED_INT
	GCC_JIT_TYPE_UNSIGNED_LONG
	GCC_JIT_TYPE_UNSIGNED_LONG_LONG
	GCC_JIT_TYPE_UNSIGNED_SHORT
	GCC_JIT_TYPE_VOID
	GCC_JIT_TYPE_VOID_PTR
	GCC_JIT_UNARY_OP_ABS
	GCC_JIT_UNARY_OP_BITWISE_NEGATE
	GCC_JIT_UNARY_OP_LOGICAL_NEGATE
	GCC_JIT_UNARY_OP_MINUS
	gcc_jit_block_add_assignment
	gcc_jit_block_add_assignment_op
	gcc_jit_block_add_comment
	gcc_jit_block_add_eval
	gcc_jit_block_as_object
	gcc_jit_block_end_with_conditional
	gcc_jit_block_end_with_jump
	gcc_jit_block_end_with_return
	gcc_jit_block_end_with_switch
	gcc_jit_block_end_with_void_return
	gcc_jit_block_get_function
	gcc_jit_case_as_object
	gcc_jit_context_acquire
	gcc_jit_context_add_command_line_option
	gcc_jit_context_compile
	gcc_jit_context_compile_to_file
	gcc_jit_context_dump_reproducer_to_file
	gcc_jit_context_dump_to_file
	gcc_jit_context_enable_dump
	gcc_jit_context_get_builtin_function
	gcc_jit_context_get_first_error
	gcc_jit_context_get_int_type
	gcc_jit_context_get_last_error
	gcc_jit_context_get_type
	gcc_jit_context_new_array_access
	gcc_jit_context_new_array_type
	gcc_jit_context_new_binary_op
	gcc_jit_context_new_call
	gcc_jit_context_new_call_through_ptr
	gcc_jit_context_new_case
	gcc_jit_context_new_cast
	gcc_jit_context_new_child_context
	gcc_jit_context_new_comparison
	gcc_jit_context_new_field
	gcc_jit_context_new_function
	gcc_jit_context_new_function_ptr_type
	gcc_jit_context_new_global
	gcc_jit_context_new_location
	gcc_jit_context_new_opaque_struct
	gcc_jit_context_new_param
	gcc_jit_context_new_rvalue_from_double
	gcc_jit_context_new_rvalue_from_int
	gcc_jit_context_new_rvalue_from_long
	gcc_jit_context_new_rvalue_from_ptr
	gcc_jit_context_new_string_literal
	gcc_jit_context_new_struct_type
	gcc_jit_context_new_unary_op
	gcc_jit_context_new_union_type
	gcc_jit_context_null
	gcc_jit_context_one
	gcc_jit_context_release
	gcc_jit_context_set_bool_allow_unreachable_blocks
	gcc_jit_context_set_bool_option
	gcc_jit_context_set_int_option
	gcc_jit_context_set_logfile
	gcc_jit_context_set_str_option
	gcc_jit_context_zero
	gcc_jit_field_as_object
	gcc_jit_function_as_object
	gcc_jit_function_dump_to_dot
	gcc_jit_function_get_param
	gcc_jit_function_new_block
	gcc_jit_function_new_local
	gcc_jit_location_as_object
	gcc_jit_lvalue_access_field
	gcc_jit_lvalue_as_object
	gcc_jit_lvalue_as_rvalue
	gcc_jit_lvalue_get_address
	gcc_jit_object_get_context
	gcc_jit_object_get_debug_string
	gcc_jit_param_as_lvalue
	gcc_jit_param_as_object
	gcc_jit_param_as_rvalue
	gcc_jit_result_get_code
	gcc_jit_result_get_global
	gcc_jit_result_release
	gcc_jit_rvalue_access_field
	gcc_jit_rvalue_as_object
	gcc_jit_rvalue_dereference
	gcc_jit_rvalue_dereference_field
	gcc_jit_rvalue_get_type
	gcc_jit_struct_as_type
	gcc_jit_struct_set_fields
	gcc_jit_type_as_object
	gcc_jit_type_get_const
	gcc_jit_type_get_pointer
	gcc_jit_type_get_volatile
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our $VERSION = '0.01';

sub AUTOLOAD {
    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&GCCJIT::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
        no strict 'refs';
        *$AUTOLOAD = sub { $val };
    }
    goto &$AUTOLOAD;
}

require XSLoader;
XSLoader::load('GCCJIT', $VERSION);

1;
__END__

=head1 NAME

GCCJIT - Perl bindings for GCCJIT library

=head1 SYNOPSIS

    use GCCJIT qw/:all/;

    my $ctx = gcc_jit_context_acquire;
    my $int = gcc_jit_context_get_type $ctx, GCC_JIT_TYPE_INT;

    my $arg = gcc_jit_context_new_param $ctx, undef, $int, "i";
    my $fun = gcc_jit_context_new_function $ctx, undef,
        GCC_JIT_FUNCTION_EXPORTED, $int, "square", [ $arg ], 0;

    my $tmp = gcc_jit_context_new_binary_op $ctx, undef, GCC_JIT_BINARY_OP_MULT, $int,
        jit_param_as_rvalue($arg), jit_param_as_rvalue($arg);

    my $blk = gcc_jit_function_new_block $fun, "entry";
    gcc_jit_block_end_with_return $blk, undef, $tmp;

    my $res = gcc_jit_context_compile $ctx;
    my $ptr = gcc_jit_result_get_code $res, "square";

=head1 DESCRIPTION

Every function (except C<gcc_jit_context_enable_dump>) is exported as is. Where
C function accepts an array as two arguments C<int num_items> and C<item_t *items>
a single argument is expected.

C<gcc_jit_context_enable_dump> function was left out of these bindings, due to the
difficulty in handling it's C<out_ptr> argument.

These library does not provide an easy way to call compiled functions. Libraries like L<FFI::Raw> can help with that.

=head1 SEE ALSO

Online documentation for GCCJIT library: L<https://gcc.gnu.org/onlinedocs/gcc-5.2.0/jit/>

GCCJIT project wiki page: L<https://gcc.gnu.org/wiki/JIT>

=head1 AUTHOR

Vikentiy Fesunov E<lt>cpan-gccjit@setattr.netE<gt>

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
