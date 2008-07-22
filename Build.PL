
use Module::Build;
my $build = Module::Build->new(
    module_name       => 'Devel::FindBlessedRefs',
    dist_version_from => "FindBlessedRefs.pm",
    license           => 'lgpl',
     pm_files         => { 'FindBlessedRefs.pm'  => 'lib/Devel/FindBlessedRefs.pm'  },
    pod_files         => { 'FindBlessedRefs.pod' => 'lib/Devel/FindBlessedRefs.pod' },
     xs_files         => { 'FindBlessedRefs.xs'  => 'lib/Devel/FindBlessedRefs.xs'  },
    requires          => {
        'version' => '0',
    },
);
$build->create_build_script;

