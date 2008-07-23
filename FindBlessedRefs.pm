package Devel::FindBlessedRefs;

use strict;
use warnings;
use Carp;

require Exporter;
use base 'Exporter';

our %EXPORT_TAGS = ( all => [qw( find_refs find_refs_by_coderef )]);
our @EXPORT_OK   = ( @{$EXPORT_TAGS{all}} );

use version; our $VERSION = qv('1.1.2');

require XSLoader;
XSLoader::load('Devel::FindBlessedRefs', $VERSION);

1;

__END__
