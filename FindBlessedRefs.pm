package Devel::FindBlessedRefs;

use strict;
use warnings;
use Carp;

require Exporter;
use base 'Exporter';

our %EXPORT_TAGS = ( all => [qw( find_refs find_refs_by_coderef )]);
our @EXPORT_OK   = ( @{$EXPORT_TAGS{all}} );

our $VERSION = 1.25;

require XSLoader;
XSLoader::load('Devel::FindBlessedRefs', $VERSION);

1;
