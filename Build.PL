
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'Dist::Zilla plugin bundle for PDONELAN',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601'
                                           },
                       'dist_name' => 'Dist-Zilla-PluginBundle-PDONELAN',
                       'dist_author' => [
                                          'Patrick Donelan <pat@patspam.com>'
                                        ],
                       'module_name' => 'Dist::Zilla::PluginBundle::PDONELAN',
                       'requires' => {
                                       'Dist::Zilla::Plugin::PodWeaver' => '0',
                                       'Dist::Zilla::Role::PluginBundle' => '0',
                                       'Dist::Zilla::Plugin::MinimumVersionTests' => '0',
                                       'Dist::Zilla::Plugin::ModuleBuild' => '0',
                                       'Dist::Zilla::Plugin::ReadmeFromPod' => '0',
                                       'Dist::Zilla::PluginBundle::Filter' => '0',
                                       'Dist::Zilla::Plugin::AutoVersion' => '0',
                                       'Dist::Zilla::Plugin::MetaResources' => '0',
                                       'Moose' => '0',
                                       'Dist::Zilla::Plugin::SynopsisTests' => '0',
                                       'Dist::Zilla::Plugin::Prepender' => '0',
                                       'Dist::Zilla::Plugin::PortabilityTests' => '0',
                                       'Dist::Zilla::Plugin::AutoPrereq' => '0',
                                       'Dist::Zilla::Plugin::ManifestSkip' => '0',
                                       'Dist::Zilla::Plugin::CheckChangeLog' => '0',
                                       'Dist::Zilla::Plugin::CompileTests' => '0',
                                       'Dist::Zilla::Plugin::Repository' => '0',
                                       'Dist::Zilla::Plugin::NextRelease' => '0',
                                       'Moose::Autobox' => '0',
                                       'Dist::Zilla::PluginBundle::Classic' => '0',
                                       'Dist::Zilla::Plugin::HasVersionTests' => '0',
                                       'Dist::Zilla::Plugin::DistManifestTests' => '0',
                                       'Dist::Zilla::Plugin::UploadToCPAN' => '0',
                                       'Dist::Zilla::Plugin::MetaJSON' => '0',
                                       'Dist::Zilla::PluginBundle::Git' => '0',
                                       'Dist::Zilla::Plugin::CheckChangesTests' => '0',
                                       'Dist::Zilla::Plugin::MetaTests' => '0'
                                     },
                       'recommends' => {},
                       'configure_requires' => {
                                                 'ExtUtils::MakeMaker' => '6.31',
                                                 'Module::Build' => '0.3601'
                                               },
                       'dist_version' => '1.100970'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
