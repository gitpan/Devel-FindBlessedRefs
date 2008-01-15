use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Devel::FindBlessedRefs',
    VERSION_FROM => 'FindBlessedRefs.pm',
    AUTHOR       => 'Paul Miller <jettero@cpan.org>',
  # LIBS         => ['-lperl'],
);


# what was I thinking? write them and then unlink them?
# EU:CC isnt' available until perl 5.7, so this just makes 5.6 fail to build
# use ExtUtils::Constant;
# ExtUtils::Constant::WriteConstants(
#     NAME => 'Devel::FindBlessedRefs',
# );
#
# unlink "const-c.inc";
# unlink "const-xs.inc";
