package Alien::libpcre;

use strict;
use warnings;
use 5.008001;
use base qw( Alien::Base );

# ABSTRACT: Find or download and install libpcre (The "Perl Compatible" Regular Expressions library)
# VERSION
# ALIEN SYNOPSIS
# ALIEN SEE ALSO

=head1 DESCRIPTION

B<Note> that this L<Alien> is for PCRE1, the deprecated older version of the
Perl (in)Compatible Regular Expression (PCRE) library.  It exists for projects
that require the older version of PCRE.  Currently the author uses it for
source builds of L<Alien::libnewrelic> and L<NewFangle>.  If you need the
newer currently supported version of PCRE see L<Alien::PCRE2>.

This distribution provides PCRE1 so that it can be used by other
Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of pcre on your system.  If found it
will use that.  If it cannot be found, the source code will be downloaded
from the internet and it will be installed in a private share location
for the use of other modules.

=head1 CAVEATS

The pcre, is not, as the name might suggest, actually compatible with modern Perl regular expressions.

=cut

1;


