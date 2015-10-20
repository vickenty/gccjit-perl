package GCCJIT::Wrapper;
use strict;
use warnings;

use GCCJIT;
use ExtUtils::WeakWrapperGenerator;

package gcc_jit_contextPtr {
    my %stash;

    sub WRAP {
        my ($self, $other) = @_;
        $stash{$self} = $other;
        return $self;
    }

    sub DESTROY {
        my $self = shift;
        delete $stash{$self};
        $self->release();
    }
}

package gcc_jit_resultPtr {
    sub DESTROY {
        my $self = shift;
        $self->release();
    }
}

my $owned_class_name = __PACKAGE__ . "::WeakWrapper";
ExtUtils::WeakWrapperGenerator->generate_owned_class($owned_class_name, "gcc_jit_contextPtr", "context");

my @xs_blacklist = (
    qr{get_context$},
);

ExtUtils::WeakWrapperGenerator->generate_from_xs(
    {
        xs_package => "GCCJIT",

        parse_xs_name => sub {
            my ($name) = @_;

            # If compiled against an older gccjit library, some functions may
            # not be available and that's ok.
            return unless GCCJIT->can($name);
            # Other functions are excluded explicitly.
            return if grep { $name =~ $_ } @xs_blacklist;

            my ($class, $method) = $name =~ /^gcc_jit_([a-z]+)_(.*)/;
            return "gcc_jit_${class}Ptr", $method;
        },

        package_callback => sub {
            my ($package) = @_;

            if ($package =~ /^gcc_jit_.*Ptr$/ && $package !~ /^gcc_jit_(context|result)Ptr$/) {
                no strict "refs";
                @{"${package}::ISA"} = $owned_class_name;
            }
        },
    },
    # Extracted from GCCJIT.xs with Vim command:
    # :%g/^\(const \)\?[a-z][^ ]\+\( \*\)\?\ngcc_jit_/,+1 y A
    # "aP
    q!
        void
        gcc_jit_block_add_assignment(block, loc, lvalue, rvalue)
        void
        gcc_jit_block_add_assignment_op(block, loc, lvalue, op, rvalue)
        void
        gcc_jit_block_add_comment(block, loc, text)
        void
        gcc_jit_block_add_eval(block, loc, rvalue)
        gcc_jit_object *
        gcc_jit_block_as_object(block)
        void
        gcc_jit_block_end_with_conditional(block, loc, boolval, on_true, on_false)
        void
        gcc_jit_block_end_with_jump(block, loc, target)
        void
        gcc_jit_block_end_with_return(block, loc, rvalue)
        void
        gcc_jit_block_end_with_switch(block, loc, expr, default_block, cases)
        void
        gcc_jit_block_end_with_void_return(block, loc)
        gcc_jit_function *
        gcc_jit_block_get_function(block)
        gcc_jit_object *
        gcc_jit_case_as_object(case_)
        gcc_jit_context *
        gcc_jit_context_acquire()
        void
        gcc_jit_context_add_command_line_option(ctxt, optname)
        gcc_jit_result *
        gcc_jit_context_compile(ctxt)
        void
        gcc_jit_context_compile_to_file(ctxt, output_kind, output_path)
        void
        gcc_jit_context_dump_reproducer_to_file(ctxt, path)
        void
        gcc_jit_context_dump_to_file(ctxt, path, update_locations)
        void
        gcc_jit_context_enable_dump(ctxt, dumpname, out_ptr)
        gcc_jit_function *
        gcc_jit_context_get_builtin_function(ctxt, name)
        const char *
        gcc_jit_context_get_first_error(ctxt)
        gcc_jit_type *
        gcc_jit_context_get_int_type(ctxt, num_bytes, is_signed)
        const char *
        gcc_jit_context_get_last_error(ctxt)
        gcc_jit_type *
        gcc_jit_context_get_type(ctxt, type_)
        gcc_jit_lvalue *
        gcc_jit_context_new_array_access(ctxt, loc, ptr, index)
        gcc_jit_type *
        gcc_jit_context_new_array_type(ctxt, loc, element_type, num_elements)
        gcc_jit_rvalue *
        gcc_jit_context_new_binary_op(ctxt, loc, op, result_type, a, b)
        gcc_jit_rvalue *
        gcc_jit_context_new_call(ctxt, loc, func, args)
        gcc_jit_rvalue *
        gcc_jit_context_new_call_through_ptr(ctxt, loc, fn_ptr, args)
        gcc_jit_case *
        gcc_jit_context_new_case(ctxt, min_value, max_value, dest_block)
        gcc_jit_rvalue *
        gcc_jit_context_new_cast(ctxt, loc, rvalue, type)
        gcc_jit_context *
        gcc_jit_context_new_child_context(parent_ctxt)
        gcc_jit_rvalue *
        gcc_jit_context_new_comparison(ctxt, loc, op, a, b)
        gcc_jit_field *
        gcc_jit_context_new_field(ctxt, loc, type, name)
        gcc_jit_function *
        gcc_jit_context_new_function(ctxt, loc, kind, return_type, name, params, is_variadic)
        gcc_jit_type *
        gcc_jit_context_new_function_ptr_type(ctxt, loc, return_type, param_types, is_variadic)
        gcc_jit_lvalue *
        gcc_jit_context_new_global(ctxt, loc, kind, type, name)
        gcc_jit_location *
        gcc_jit_context_new_location(ctxt, filename, line, column)
        gcc_jit_struct *
        gcc_jit_context_new_opaque_struct(ctxt, loc, name)
        gcc_jit_param *
        gcc_jit_context_new_param(ctxt, loc, type, name)
        gcc_jit_rvalue *
        gcc_jit_context_new_rvalue_from_double(ctxt, numeric_type, value)
        gcc_jit_rvalue *
        gcc_jit_context_new_rvalue_from_int(ctxt, numeric_type, value)
        gcc_jit_rvalue *
        gcc_jit_context_new_rvalue_from_long(ctxt, numeric_type, value)
        gcc_jit_rvalue *
        gcc_jit_context_new_rvalue_from_ptr(ctxt, pointer_type, value)
        gcc_jit_rvalue *
        gcc_jit_context_new_string_literal(ctxt, value)
        gcc_jit_struct *
        gcc_jit_context_new_struct_type(ctxt, loc, name, fields)
        gcc_jit_rvalue *
        gcc_jit_context_new_unary_op(ctxt, loc, op, result_type, rvalue)
        gcc_jit_type *
        gcc_jit_context_new_union_type(ctxt, loc, name, fields)
        gcc_jit_rvalue *
        gcc_jit_context_null(ctxt, pointer_type)
        gcc_jit_rvalue *
        gcc_jit_context_one(ctxt, numeric_type)
        void
        gcc_jit_context_release(ctxt)
        void
        gcc_jit_context_set_bool_allow_unreachable_blocks(ctxt, bool_value)
        void
        gcc_jit_context_set_bool_option(ctxt, opt, value)
        void
        gcc_jit_context_set_int_option(ctxt, opt, value)
        void
        gcc_jit_context_set_logfile(ctxt, logfile, flags, verbosity)
        void
        gcc_jit_context_set_str_option(ctxt, opt, value)
        gcc_jit_rvalue *
        gcc_jit_context_zero(ctxt, numeric_type)
        gcc_jit_object *
        gcc_jit_field_as_object(field)
        gcc_jit_object *
        gcc_jit_function_as_object(func)
        void
        gcc_jit_function_dump_to_dot(func, path)
        gcc_jit_param *
        gcc_jit_function_get_param(func, index)
        gcc_jit_block *
        gcc_jit_function_new_block(func, name)
        gcc_jit_lvalue *
        gcc_jit_function_new_local(func, loc, type, name)
        gcc_jit_object *
        gcc_jit_location_as_object(loc)
        gcc_jit_lvalue *
        gcc_jit_lvalue_access_field(struct_or_union, loc, field)
        cc_jit_object *
        gcc_jit_lvalue_as_object(lvalue)
        gcc_jit_rvalue *
        gcc_jit_lvalue_as_rvalue(lvalue)
        gcc_jit_rvalue *
        gcc_jit_lvalue_get_address(lvalue, loc)
        gcc_jit_context *
        gcc_jit_object_get_context(obj)
        const char *
        gcc_jit_object_get_debug_string(obj)
        gcc_jit_lvalue *
        gcc_jit_param_as_lvalue(param)
        gcc_jit_object *
        gcc_jit_param_as_object(param)
        gcc_jit_rvalue *
        gcc_jit_param_as_rvalue(param)
        void *
        gcc_jit_result_get_code(result, funcname)
        void *
        gcc_jit_result_get_global(result, name)
        void
        gcc_jit_result_release(result)
        gcc_jit_rvalue *
        gcc_jit_rvalue_access_field(struct_or_union, loc, field)
        gcc_jit_object *
        gcc_jit_rvalue_as_object(rvalue)
        gcc_jit_lvalue *
        gcc_jit_rvalue_dereference(rvalue, loc)
        gcc_jit_lvalue *
        gcc_jit_rvalue_dereference_field(ptr, loc, field)
        gcc_jit_type *
        gcc_jit_rvalue_get_type(rvalue)
        gcc_jit_type *
        gcc_jit_struct_as_type(struct_type)
        void
        gcc_jit_struct_set_fields(struct_type, loc, fields)
        gcc_jit_object *
        gcc_jit_type_as_object(type)
        gcc_jit_type *
        gcc_jit_type_get_const(type)
        gcc_jit_type *
        gcc_jit_type_get_pointer(type)
        gcc_jit_type *
        gcc_jit_type_get_volatile(type)
    !,
);

1;
