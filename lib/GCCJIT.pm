package GCCJIT;

use 5.020002;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use GCCJIT ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
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
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&GCCJIT::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
	no strict 'refs';
	# Fixed between 5.005_53 and 5.005_61
#XXX	if ($] >= 5.00561) {
#XXX	    *$AUTOLOAD = sub () { $val };
#XXX	}
#XXX	else {
	    *$AUTOLOAD = sub { $val };
#XXX	}
    }
    goto &$AUTOLOAD;
}

require XSLoader;
XSLoader::load('GCCJIT', $VERSION);

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

GCCJIT - Perl extension for blah blah blah

=head1 SYNOPSIS

  use GCCJIT;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for GCCJIT, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.

=head2 Exportable constants

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

=head2 Exportable functions

  void
gcc_jit_block_add_assignment (gcc_jit_block *block,
         gcc_jit_location *loc,
         gcc_jit_lvalue *lvalue,
         gcc_jit_rvalue *rvalue)
  void
gcc_jit_block_add_assignment_op (gcc_jit_block *block,
     gcc_jit_location *loc,
     gcc_jit_lvalue *lvalue,
     enum gcc_jit_binary_op op,
     gcc_jit_rvalue *rvalue)
  void
gcc_jit_block_add_comment (gcc_jit_block *block,
      gcc_jit_location *loc,
      const char *text)
  void
gcc_jit_block_add_eval (gcc_jit_block *block,
   gcc_jit_location *loc,
   gcc_jit_rvalue *rvalue)
  gcc_jit_object *
gcc_jit_block_as_object (gcc_jit_block *block)
  void
gcc_jit_block_end_with_conditional (gcc_jit_block *block,
        gcc_jit_location *loc,
        gcc_jit_rvalue *boolval,
        gcc_jit_block *on_true,
        gcc_jit_block *on_false)
  void
gcc_jit_block_end_with_jump (gcc_jit_block *block,
        gcc_jit_location *loc,
        gcc_jit_block *target)
  void
gcc_jit_block_end_with_return (gcc_jit_block *block,
          gcc_jit_location *loc,
          gcc_jit_rvalue *rvalue)
  void
gcc_jit_block_end_with_switch (gcc_jit_block *block,
          gcc_jit_location *loc,
          gcc_jit_rvalue *expr,
          gcc_jit_block *default_block,
          int num_cases,
          gcc_jit_case **cases)
  void
gcc_jit_block_end_with_void_return (gcc_jit_block *block,
        gcc_jit_location *loc)
  gcc_jit_function *
gcc_jit_block_get_function (gcc_jit_block *block)
  gcc_jit_object *
gcc_jit_case_as_object (gcc_jit_case *case_)
  gcc_jit_context *
gcc_jit_context_acquire (void)
  void
gcc_jit_context_add_command_line_option (gcc_jit_context *ctxt,
      const char *optname)
  gcc_jit_result *
gcc_jit_context_compile (gcc_jit_context *ctxt)
  void
gcc_jit_context_compile_to_file (gcc_jit_context *ctxt,
     enum gcc_jit_output_kind output_kind,
     const char *output_path)
  void
gcc_jit_context_dump_reproducer_to_file (gcc_jit_context *ctxt,
      const char *path)
  void
gcc_jit_context_dump_to_file (gcc_jit_context *ctxt,
         const char *path,
         int update_locations)
  void
gcc_jit_context_enable_dump (gcc_jit_context *ctxt,
        const char *dumpname,
        char **out_ptr)
  gcc_jit_function *
gcc_jit_context_get_builtin_function (gcc_jit_context *ctxt,
          const char *name)
  const char *
gcc_jit_context_get_first_error (gcc_jit_context *ctxt)
  gcc_jit_type *
gcc_jit_context_get_int_type (gcc_jit_context *ctxt,
         int num_bytes, int is_signed)
  const char *
gcc_jit_context_get_last_error (gcc_jit_context *ctxt)
  gcc_jit_type *
gcc_jit_context_get_type (gcc_jit_context *ctxt,
     enum gcc_jit_types type_)
  gcc_jit_lvalue *
gcc_jit_context_new_array_access (gcc_jit_context *ctxt,
      gcc_jit_location *loc,
      gcc_jit_rvalue *ptr,
      gcc_jit_rvalue *index)
  gcc_jit_type *
gcc_jit_context_new_array_type (gcc_jit_context *ctxt,
    gcc_jit_location *loc,
    gcc_jit_type *element_type,
    int num_elements)
  gcc_jit_rvalue *
gcc_jit_context_new_binary_op (gcc_jit_context *ctxt,
          gcc_jit_location *loc,
          enum gcc_jit_binary_op op,
          gcc_jit_type *result_type,
          gcc_jit_rvalue *a, gcc_jit_rvalue *b)
  gcc_jit_rvalue *
gcc_jit_context_new_call (gcc_jit_context *ctxt,
     gcc_jit_location *loc,
     gcc_jit_function *func,
     int numargs , gcc_jit_rvalue **args)
  gcc_jit_rvalue *
gcc_jit_context_new_call_through_ptr (gcc_jit_context *ctxt,
          gcc_jit_location *loc,
          gcc_jit_rvalue *fn_ptr,
          int numargs, gcc_jit_rvalue **args)
  gcc_jit_case *
gcc_jit_context_new_case (gcc_jit_context *ctxt,
     gcc_jit_rvalue *min_value,
     gcc_jit_rvalue *max_value,
     gcc_jit_block *dest_block)
  gcc_jit_rvalue *
gcc_jit_context_new_cast (gcc_jit_context *ctxt,
     gcc_jit_location *loc,
     gcc_jit_rvalue *rvalue,
     gcc_jit_type *type)
  gcc_jit_context *
gcc_jit_context_new_child_context (gcc_jit_context *parent_ctxt)
  gcc_jit_rvalue *
gcc_jit_context_new_comparison (gcc_jit_context *ctxt,
    gcc_jit_location *loc,
    enum gcc_jit_comparison op,
    gcc_jit_rvalue *a, gcc_jit_rvalue *b)
  gcc_jit_field *
gcc_jit_context_new_field (gcc_jit_context *ctxt,
      gcc_jit_location *loc,
      gcc_jit_type *type,
      const char *name)
  gcc_jit_function *
gcc_jit_context_new_function (gcc_jit_context *ctxt,
         gcc_jit_location *loc,
         enum gcc_jit_function_kind kind,
         gcc_jit_type *return_type,
         const char *name,
         int num_params,
         gcc_jit_param **params,
         int is_variadic)
  gcc_jit_type *
gcc_jit_context_new_function_ptr_type (gcc_jit_context *ctxt,
           gcc_jit_location *loc,
           gcc_jit_type *return_type,
           int num_params,
           gcc_jit_type **param_types,
           int is_variadic)
  gcc_jit_lvalue *
gcc_jit_context_new_global (gcc_jit_context *ctxt,
       gcc_jit_location *loc,
       enum gcc_jit_global_kind kind,
       gcc_jit_type *type,
       const char *name)
  gcc_jit_location *
gcc_jit_context_new_location (gcc_jit_context *ctxt,
         const char *filename,
         int line,
         int column)
  gcc_jit_struct *
gcc_jit_context_new_opaque_struct (gcc_jit_context *ctxt,
       gcc_jit_location *loc,
       const char *name)
  gcc_jit_param *
gcc_jit_context_new_param (gcc_jit_context *ctxt,
      gcc_jit_location *loc,
      gcc_jit_type *type,
      const char *name)
  gcc_jit_rvalue *
gcc_jit_context_new_rvalue_from_double (gcc_jit_context *ctxt,
     gcc_jit_type *numeric_type,
     double value)
  gcc_jit_rvalue *
gcc_jit_context_new_rvalue_from_int (gcc_jit_context *ctxt,
         gcc_jit_type *numeric_type,
         int value)
  gcc_jit_rvalue *
gcc_jit_context_new_rvalue_from_long (gcc_jit_context *ctxt,
          gcc_jit_type *numeric_type,
          long value)
  gcc_jit_rvalue *
gcc_jit_context_new_rvalue_from_ptr (gcc_jit_context *ctxt,
         gcc_jit_type *pointer_type,
         void *value)
  gcc_jit_rvalue *
gcc_jit_context_new_string_literal (gcc_jit_context *ctxt,
        const char *value)
  gcc_jit_struct *
gcc_jit_context_new_struct_type (gcc_jit_context *ctxt,
     gcc_jit_location *loc,
     const char *name,
     int num_fields,
     gcc_jit_field **fields)
  gcc_jit_rvalue *
gcc_jit_context_new_unary_op (gcc_jit_context *ctxt,
         gcc_jit_location *loc,
         enum gcc_jit_unary_op op,
         gcc_jit_type *result_type,
         gcc_jit_rvalue *rvalue)
  gcc_jit_type *
gcc_jit_context_new_union_type (gcc_jit_context *ctxt,
    gcc_jit_location *loc,
    const char *name,
    int num_fields,
    gcc_jit_field **fields)
  gcc_jit_rvalue *
gcc_jit_context_null (gcc_jit_context *ctxt,
        gcc_jit_type *pointer_type)
  gcc_jit_rvalue *
gcc_jit_context_one (gcc_jit_context *ctxt,
       gcc_jit_type *numeric_type)
  void
gcc_jit_context_release (gcc_jit_context *ctxt)
  void
gcc_jit_context_set_bool_allow_unreachable_blocks (gcc_jit_context *ctxt,
         int bool_value)
  void
gcc_jit_context_set_bool_option (gcc_jit_context *ctxt,
     enum gcc_jit_bool_option opt,
     int value)
  void
gcc_jit_context_set_int_option (gcc_jit_context *ctxt,
    enum gcc_jit_int_option opt,
    int value)
  void
gcc_jit_context_set_logfile (gcc_jit_context *ctxt,
        FILE *logfile,
        int flags,
        int verbosity)
  void
gcc_jit_context_set_str_option (gcc_jit_context *ctxt,
    enum gcc_jit_str_option opt,
    const char *value)
  gcc_jit_rvalue *
gcc_jit_context_zero (gcc_jit_context *ctxt,
        gcc_jit_type *numeric_type)
  gcc_jit_object *
gcc_jit_field_as_object (gcc_jit_field *field)
  gcc_jit_object *
gcc_jit_function_as_object (gcc_jit_function *func)
  void
gcc_jit_function_dump_to_dot (gcc_jit_function *func,
         const char *path)
  gcc_jit_param *
gcc_jit_function_get_param (gcc_jit_function *func, int index)
  gcc_jit_block *
gcc_jit_function_new_block (gcc_jit_function *func,
       const char *name)
  gcc_jit_lvalue *
gcc_jit_function_new_local (gcc_jit_function *func,
       gcc_jit_location *loc,
       gcc_jit_type *type,
       const char *name)
  gcc_jit_object *
gcc_jit_location_as_object (gcc_jit_location *loc)
  gcc_jit_lvalue *
gcc_jit_lvalue_access_field (gcc_jit_lvalue *struct_or_union,
        gcc_jit_location *loc,
        gcc_jit_field *field)
  gcc_jit_object *
gcc_jit_lvalue_as_object (gcc_jit_lvalue *lvalue)
  gcc_jit_rvalue *
gcc_jit_lvalue_as_rvalue (gcc_jit_lvalue *lvalue)
  gcc_jit_rvalue *
gcc_jit_lvalue_get_address (gcc_jit_lvalue *lvalue,
       gcc_jit_location *loc)
  gcc_jit_context *
gcc_jit_object_get_context (gcc_jit_object *obj)
  const char *
gcc_jit_object_get_debug_string (gcc_jit_object *obj)
  gcc_jit_lvalue *
gcc_jit_param_as_lvalue (gcc_jit_param *param)
  gcc_jit_object *
gcc_jit_param_as_object (gcc_jit_param *param)
  gcc_jit_rvalue *
gcc_jit_param_as_rvalue (gcc_jit_param *param)
  void *
gcc_jit_result_get_code (gcc_jit_result *result,
    const char *funcname)
  void *
gcc_jit_result_get_global (gcc_jit_result *result,
      const char *name)
  void
gcc_jit_result_release (gcc_jit_result *result)
  gcc_jit_rvalue *
gcc_jit_rvalue_access_field (gcc_jit_rvalue *struct_or_union,
        gcc_jit_location *loc,
        gcc_jit_field *field)
  gcc_jit_object *
gcc_jit_rvalue_as_object (gcc_jit_rvalue *rvalue)
  gcc_jit_lvalue *
gcc_jit_rvalue_dereference (gcc_jit_rvalue *rvalue,
       gcc_jit_location *loc)
  gcc_jit_lvalue *
gcc_jit_rvalue_dereference_field (gcc_jit_rvalue *ptr,
      gcc_jit_location *loc,
      gcc_jit_field *field)
  gcc_jit_type *
gcc_jit_rvalue_get_type (gcc_jit_rvalue *rvalue)
  gcc_jit_type *
gcc_jit_struct_as_type (gcc_jit_struct *struct_type)
  void
gcc_jit_struct_set_fields (gcc_jit_struct *struct_type,
      gcc_jit_location *loc,
      int num_fields,
      gcc_jit_field **fields)
  gcc_jit_object *
gcc_jit_type_as_object (gcc_jit_type *type)
  gcc_jit_type *
gcc_jit_type_get_const (gcc_jit_type *type)
  gcc_jit_type *
gcc_jit_type_get_pointer (gcc_jit_type *type)
  gcc_jit_type *
gcc_jit_type_get_volatile (gcc_jit_type *type)



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

kent, E<lt>kent@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2015 by kent

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.20.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
