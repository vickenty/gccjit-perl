# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl GCCJIT.t'

#########################

# change 'tests => 2' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 2;
BEGIN { use_ok('GCCJIT') };


my $fail = 0;
foreach my $constname (qw(
	GCC_JIT_BINARY_OP_BITWISE_AND GCC_JIT_BINARY_OP_BITWISE_OR
	GCC_JIT_BINARY_OP_BITWISE_XOR GCC_JIT_BINARY_OP_DIVIDE
	GCC_JIT_BINARY_OP_LOGICAL_AND GCC_JIT_BINARY_OP_LOGICAL_OR
	GCC_JIT_BINARY_OP_LSHIFT GCC_JIT_BINARY_OP_MINUS
	GCC_JIT_BINARY_OP_MODULO GCC_JIT_BINARY_OP_MULT GCC_JIT_BINARY_OP_PLUS
	GCC_JIT_BINARY_OP_RSHIFT GCC_JIT_BOOL_OPTION_DEBUGINFO
	GCC_JIT_BOOL_OPTION_DUMP_EVERYTHING
	GCC_JIT_BOOL_OPTION_DUMP_GENERATED_CODE
	GCC_JIT_BOOL_OPTION_DUMP_INITIAL_GIMPLE
	GCC_JIT_BOOL_OPTION_DUMP_INITIAL_TREE GCC_JIT_BOOL_OPTION_DUMP_SUMMARY
	GCC_JIT_BOOL_OPTION_KEEP_INTERMEDIATES GCC_JIT_BOOL_OPTION_SELFCHECK_GC
	GCC_JIT_COMPARISON_EQ GCC_JIT_COMPARISON_GE GCC_JIT_COMPARISON_GT
	GCC_JIT_COMPARISON_LE GCC_JIT_COMPARISON_LT GCC_JIT_COMPARISON_NE
	GCC_JIT_FUNCTION_ALWAYS_INLINE GCC_JIT_FUNCTION_EXPORTED
	GCC_JIT_FUNCTION_IMPORTED GCC_JIT_FUNCTION_INTERNAL
	GCC_JIT_GLOBAL_EXPORTED GCC_JIT_GLOBAL_IMPORTED GCC_JIT_GLOBAL_INTERNAL
	GCC_JIT_INT_OPTION_OPTIMIZATION_LEVEL GCC_JIT_NUM_BOOL_OPTIONS
	GCC_JIT_NUM_INT_OPTIONS GCC_JIT_NUM_STR_OPTIONS
	GCC_JIT_OUTPUT_KIND_ASSEMBLER GCC_JIT_OUTPUT_KIND_DYNAMIC_LIBRARY
	GCC_JIT_OUTPUT_KIND_EXECUTABLE GCC_JIT_OUTPUT_KIND_OBJECT_FILE
	GCC_JIT_STR_OPTION_PROGNAME GCC_JIT_TYPE_BOOL GCC_JIT_TYPE_CHAR
	GCC_JIT_TYPE_COMPLEX_DOUBLE GCC_JIT_TYPE_COMPLEX_FLOAT
	GCC_JIT_TYPE_COMPLEX_LONG_DOUBLE GCC_JIT_TYPE_CONST_CHAR_PTR
	GCC_JIT_TYPE_DOUBLE GCC_JIT_TYPE_FILE_PTR GCC_JIT_TYPE_FLOAT
	GCC_JIT_TYPE_INT GCC_JIT_TYPE_LONG GCC_JIT_TYPE_LONG_DOUBLE
	GCC_JIT_TYPE_LONG_LONG GCC_JIT_TYPE_SHORT GCC_JIT_TYPE_SIGNED_CHAR
	GCC_JIT_TYPE_SIZE_T GCC_JIT_TYPE_UNSIGNED_CHAR
	GCC_JIT_TYPE_UNSIGNED_INT GCC_JIT_TYPE_UNSIGNED_LONG
	GCC_JIT_TYPE_UNSIGNED_LONG_LONG GCC_JIT_TYPE_UNSIGNED_SHORT
	GCC_JIT_TYPE_VOID GCC_JIT_TYPE_VOID_PTR GCC_JIT_UNARY_OP_ABS
	GCC_JIT_UNARY_OP_BITWISE_NEGATE GCC_JIT_UNARY_OP_LOGICAL_NEGATE
	GCC_JIT_UNARY_OP_MINUS)) {
  next if (eval "my \$a = $constname; 1");
  if ($@ =~ /^Your vendor has not defined GCCJIT macro $constname/) {
    print "# pass: $@";
  } else {
    print "# fail: $@";
    $fail = 1;
  }

}

ok( $fail == 0 , 'Constants' );
#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

