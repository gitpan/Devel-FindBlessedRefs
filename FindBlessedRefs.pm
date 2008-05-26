package Devel::FindBlessedRefs;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;
use base 'Exporter';

our %EXPORT_TAGS = ( all => [qw( find_refs )]);
our @EXPORT_OK   = ( @{$EXPORT_TAGS{all}} );

use version;
our $VERSION = qv('1.0.3');

require XSLoader;
XSLoader::load('Devel::FindBlessedRefs', $VERSION);

1;

__END__

=head1 NAME

Devel::FindBlessedRefs - find all refs blessed under a package

=head1 SYNOPSIS

    use Devel::FindBlessedRefs qw(find_refs);

    my @refs = find_refs("PackageName");
    # this is somewhat inefficient and is rprobably only useful for testing

=head1 AUTHOR

Paul Miller <paul@cpan.org>

I am using this software in my own projects...  If you find bugs, please
please please let me know. :) Actually, let me know if you find it handy at
all.  Half the fun of releasing this stuff is knowing that people use it.

=head1 COPYRIGHT

Copyright (c) 2007 Paul Miller -- LGPL [attached]

=head1 SEE ALSO

perl(1)

=cut
