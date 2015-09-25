package GCCJIT::Context;
use strict;
use warnings;

require GCCJIT::Wrapper;

sub acquire {
    gcc_jit_contextPtr::acquire();
}

1;
