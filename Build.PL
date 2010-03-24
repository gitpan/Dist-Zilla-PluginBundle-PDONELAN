
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'Dist::Zilla plugin bundle for PDONELAN',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {},
                       'dist_name' => 'Dist-Zilla-PluginBundle-PDONELAN',
                       'dist_author' => [
                                          'Patrick Donelan <pat@patspam.com>'
                                        ],
                       'module_name' => 'Dist::Zilla::PluginBundle::PDONELAN',
                       'requires' => {
                                       'Test::More' => '0',
                                       'Dist::Zilla::Role::PluginBundle' => '0',
                                       'Dist::Zilla::PluginBundle::Filter' => '0',
                                       'File::Find' => '0',
                                       'File::Temp' => '0',
                                       'Dist::Zilla::PluginBundle::Git' => '0',
                                       'Moose::Autobox' => '0',
                                       'Moose' => '0'
                                     },
                       'configure_requires' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'dist_version' => '1.100830'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
