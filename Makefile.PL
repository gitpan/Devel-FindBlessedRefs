use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Devel::FindBlessedRefs',
    VERSION_FROM => 'FindBlessedRefs.pm',
    AUTHOR       => 'Paul Miller <jettero@cpan.org>',
  # LIBS         => ['-lperl'],
);

use ExtUtils::Constant;
ExtUtils::Constant::WriteConstants(
    NAME => 'Devel::FindBlessedRefs',
);

unlink "const-c.inc";
unlink "const-xs.inc";
