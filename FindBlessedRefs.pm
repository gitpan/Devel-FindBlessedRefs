package Devel::FindBlessedRefs;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;
use base 'Exporter';

our %EXPORT_TAGS = ( all => [qw( find_refs )]);
our @EXPORT_OK   = ( @{$EXPORT_TAGS{all}} );
our $VERSION     = '1.0.0';

require XSLoader;
XSLoader::load('Devel::FindBlessedRefs', $VERSION);

1;

__END__

=head1 NAME

Devel::FindBlessedRefs - find all refs blessed under a package

=head1 SYNOPSIS

    use Devel::FindBlessedRefs qw(find_refs);

    my @refs = find_refs("PackageName");

=head1 AUTHOR

Paul Miller <japh@voltar-confed.org>

I am using this software in my own projects...  If you find bugs, please
please please let me know. :) Actually, let me know if you find it handy at
all.  Half the fun of releasing this stuff is knowing that people use it.

=head1 COPYRIGHT

GPL! (and/or whatever license the gnu regex engine is under)

Though, additionally, I will say that I'll be tickled if you were to include
this package in any commercial endeavor.  Also, any thoughts to the effect that
using this module will somehow make your commercial package GPL should be washed
away.

I hereby release you from any such silly conditions.

This package and any modifications you make to it must remain GPL.  Any programs
you (or your company) write shall remain yours (and under whatever copyright you
choose) even if you use this package's intended and/or exported interfaces in
them.

=head1 SEE ALSO

perl(1)

=cut
