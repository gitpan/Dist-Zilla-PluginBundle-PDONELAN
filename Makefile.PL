
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::PluginBundle::PDONELAN',
                       'DISTNAME' => 'Dist-Zilla-PluginBundle-PDONELAN',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31',
                                                 'Module::Build' => '0.3601'
                                               },
                       'AUTHOR' => 'Patrick Donelan <pat@patspam.com>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601'
                                           },
                       'ABSTRACT' => 'Dist::Zilla plugin bundle for PDONELAN',
                       'EXE_FILES' => [],
                       'VERSION' => '1.101060',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Plugin::PodWeaver' => '0',
                                        'Dist::Zilla::Role::PluginBundle' => '0',
                                        'Dist::Zilla::Plugin::MinimumVersionTests' => '0',
                                        'Dist::Zilla::Plugin::ModuleBuild' => '0',
                                        'Dist::Zilla::Plugin::ReadmeFromPod' => '0',
                                        'Dist::Zilla::PluginBundle::Filter' => '0',
                                        'Dist::Zilla::Plugin::AutoVersion' => '0',
                                        'Dist::Zilla::Plugin::MetaResources' => '0',
                                        'Moose' => '0',
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
                                        'Dist::Zilla::Plugin::MetaJSON' => '0',
                                        'Dist::Zilla::PluginBundle::Git' => '0',
                                        'Dist::Zilla::Plugin::CheckChangesTests' => '0',
                                        'Dist::Zilla::Plugin::MetaTests' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



