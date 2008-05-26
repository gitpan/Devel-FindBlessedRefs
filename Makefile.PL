use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Devel::FindBlessedRefs',
    VERSION_FROM => 'FindBlessedRefs.pm',
    AUTHOR       => 'Paul Miller <jettero@cpan.org>',
    PREREQ_PM    => { version => 0, },
);
