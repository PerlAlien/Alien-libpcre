# Alien::libpcre ![linux](https://github.com/PerlAlien/Alien-libpcre/workflows/linux/badge.svg)

Find or download and install libpcre (The "Perl Compatible" Regular Expressions library)

# SYNOPSIS

In your Makefile.PL:

```perl
use ExtUtils::MakeMaker;
use Alien::Base::Wrapper ();

WriteMakefile(
  Alien::Base::Wrapper->new('Alien::libpcre')->mm_args2(
    # MakeMaker args
    NAME => 'My::XS',
    ...
  ),
);
```

In your Build.PL:

```perl
use Module::Build;
use Alien::Base::Wrapper qw( Alien::libpcre !export );

my $builder = Module::Build->new(
  ...
  configure_requires => {
    'Alien::libpcre' => '0',
    ...
  },
  Alien::Base::Wrapper->mb_args,
  ...
);

$build->create_build_script;
```

In your [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus) script or module:

```perl
use FFI::Platypus;
use Alien::libpcre;

my $ffi = FFI::Platypus->new(
  lib => [ Alien::libpcre->dynamic_libs ],
);
```

# DESCRIPTION

**Note** that this [Alien](https://metacpan.org/pod/Alien) is for PCRE1, the deprecated older version of the
Perl (in)Compatible Regular Expression (PCRE) library.  It exists for projects
that require the older version of PCRE.  Currently the author uses it for
source builds of [Alien::libnewrelic](https://metacpan.org/pod/Alien::libnewrelic) and [NewFangle](https://metacpan.org/pod/NewFangle).  If you need the
newer currently supported version of PCRE see [Alien::PCRE2](https://metacpan.org/pod/Alien::PCRE2).

This distribution provides PCRE1 so that it can be used by other
Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of PCRE1 on your system.  If found it
will use that.  If it cannot be found, the source code will be downloaded
from the internet and it will be installed in a private share location
for the use of other modules.

# SEE ALSO

[Alien](https://metacpan.org/pod/Alien), [Alien::Base](https://metacpan.org/pod/Alien::Base), [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser)

# CAVEATS

PCRE1 (and PCRE2), is not, as the name might suggest, actually compatible with modern Perl regular expressions.

On Debian based systems (including Ubuntu), the development package for PCRE1 is `libpcre3-dev`, which
is quite confusing, but I am sure there was a good reason for it.  If you want to do a `system` install
use that package not the confusingly newer `libpcre2-dev`.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2020 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
