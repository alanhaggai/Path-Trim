use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    'module_name'       => 'Path::Trim',
    'license'           => 'perl',
    'dist_author'       => 'Alan Haggai Alavi <haggai@cpan.org>',
    'dist_version_from' => 'lib/Path/Trim.pm',
    'build_requires'    => { 'Test::More' => 0, },
    'requires'          => { 'version' => 0, },
    'meta_merge'        => {
        'resources' =>
          { 'repository' => 'git://github.com/alanhaggai/Path-Trim.git', },
    },
    'add_to_cleanup' => ['Path-Trim-*'],
);

$builder->create_build_script();
