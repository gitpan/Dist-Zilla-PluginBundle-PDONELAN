# 
# This file is part of Dist-Zilla-PluginBundle-PDONELAN
# 
# This software is copyright (c) 2010 by Patrick Donelan.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
package Dist::Zilla::PluginBundle::PDONELAN;
our $VERSION = '1.100830';

# ABSTRACT: Dist::Zilla plugin bundle for PDONELAN

use Moose;
use Moose::Autobox;
with 'Dist::Zilla::Role::PluginBundle';

use Dist::Zilla::PluginBundle::Filter;
use Dist::Zilla::PluginBundle::Git;

sub bundle_config {
    my ( $self, $section ) = @_;
    my $class = ( ref $self ) || $self;

    my $arg = $section->{payload};

    my @plugins = Dist::Zilla::PluginBundle::Filter->bundle_config(
        {   name    => "$class/Classic",
            payload => {
                bundle => '@Classic',
                remove => [qw(PodVersion Readme)],
            }
        }
    );

    my $prefix = 'Dist::Zilla::Plugin::';
    my @extra
        = map { [ "$class/$prefix$_->[0]" => "$prefix$_->[0]" => $_->[1] ] } (
        [ AutoPrereq     => {} ],
        [ AutoVersion    => {} ],
        [ CheckChangeLog => {} ],
        [ CompileTests   => {} ],
        [ MetaTests      => {} ],
        [ MetaJSON       => {} ],
        [ ModuleBuild    => {} ],
        [ NextRelease    => {} ],
        [ PodWeaver      => {} ],
        [ Prepender      => {} ],
        [ Repository     => {} ],
        [ ReadmeFromPod  => {} ],
        [ UploadToCPAN   => {} ],
        );

    push @plugins, @extra;

    # add git plugins
    push @plugins,
        Dist::Zilla::PluginBundle::Git->bundle_config(
        {   name    => "$section->{name}/Git",
            payload => {},
        }
        );

    eval "require $_->[1]; 1;" or die for @plugins;    ## no critic Carp

    return @plugins;
}

__PACKAGE__->meta->make_immutable;
no Moose;

1;


=pod

=head1 NAME

Dist::Zilla::PluginBundle::PDONELAN - Dist::Zilla plugin bundle for PDONELAN

=head1 VERSION

version 1.100830

=head1 SYNOPSIS

    # dist.ini
    [@PDONELAN]

It is equivalent to:

    [@Filter]
    bundle = @Classic
    remove = PodVersion
    remove = Readme
      
    [AutoPrereq]
    [AutoVersion]
    [CheckChangeLog]
    [CompileTests]
    [@Git]
    [MetaTests]
    [MetaJSON]
    [ModuleBuild]
    [NextRelease]
    [PodWeaver]
    [Prepender]
    [Repository]
    [ReadmeFromPod]
    [UploadToCPAN]

=cut

=head1 AUTHOR

  Patrick Donelan <pat@patspam.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Patrick Donelan.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

