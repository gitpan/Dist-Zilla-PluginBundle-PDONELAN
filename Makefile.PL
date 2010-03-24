
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::PluginBundle::PDONELAN',
                       'DISTNAME' => 'Dist-Zilla-PluginBundle-PDONELAN',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Patrick Donelan <pat@patspam.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Dist::Zilla plugin bundle for PDONELAN',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100830',
                       'PREREQ_PM' => {
                                        'Test::More' => '0',
                                        'Dist::Zilla::Role::PluginBundle' => '0',
                                        'Dist::Zilla::PluginBundle::Filter' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Dist::Zilla::PluginBundle::Git' => '0',
                                        'Moose::Autobox' => '0',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



