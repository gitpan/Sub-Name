package Sub::Name;
# git description: v0.10-TRIAL-4-gf093e04
$Sub::Name::VERSION = '0.11'; # TRIAL
# ABSTRACT: (re)name a sub

#pod =pod
#pod
#pod =head1 SYNOPSIS
#pod
#pod     use Sub::Name;
#pod
#pod     subname $name, $subref;
#pod
#pod     $subref = subname foo => sub { ... };
#pod
#pod =head1 DESCRIPTION
#pod
#pod This module has only one function, which is also exported by default:
#pod
#pod =for stopwords subname
#pod
#pod =head2 subname NAME, CODEREF
#pod
#pod Assigns a new name to referenced sub.  If package specification is omitted in
#pod the name, then the current package is used.  The return value is the sub.
#pod
#pod The name is only used for informative routines (caller, Carp, etc).  You won't
#pod be able to actually invoke the sub by the given name.  To allow that, you need
#pod to do glob-assignment yourself.
#pod
#pod Note that for anonymous closures (subs that reference lexicals declared outside
#pod the sub itself) you can name each instance of the closure differently, which
#pod can be very useful for debugging.
#pod
#pod =head1 SEE ALSO
#pod
#pod =over 4
#pod
#pod =item *
#pod L<Sub::Identify> - for getting information about subs
#pod
#pod =back
#pod
#pod =head1 COPYRIGHT AND LICENSE
#pod
#pod =for stopwords cPanel
#pod
#pod This software is copyright (c) 2004, 2008 by Matthijs van Duin, all rights reserved;
#pod copyright (c) 2014 cPanel Inc., all rights reserved.
#pod
#pod This program is free software; you can redistribute it and/or modify
#pod it under the same terms as Perl itself.
#pod
#pod =cut

use 5.006;

use strict;
use warnings;

use Exporter 5.57 'import';

our @EXPORT = qw(subname);
our @EXPORT_OK = @EXPORT;

use XSLoader;
XSLoader::load(
    __PACKAGE__,
    exists $Sub::Name::{VERSION}
        ? ${ $Sub::Name::{VERSION} }
        : (),
);

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Sub::Name - (re)name a sub

=head1 VERSION

version 0.11

=head1 SYNOPSIS

    use Sub::Name;

    subname $name, $subref;

    $subref = subname foo => sub { ... };

=head1 DESCRIPTION

This module has only one function, which is also exported by default:

=for stopwords subname

=head2 subname NAME, CODEREF

Assigns a new name to referenced sub.  If package specification is omitted in
the name, then the current package is used.  The return value is the sub.

The name is only used for informative routines (caller, Carp, etc).  You won't
be able to actually invoke the sub by the given name.  To allow that, you need
to do glob-assignment yourself.

Note that for anonymous closures (subs that reference lexicals declared outside
the sub itself) you can name each instance of the closure differently, which
can be very useful for debugging.

=head1 SEE ALSO

=over 4

=item *
L<Sub::Identify> - for getting information about subs

=back

=for stopwords cPanel

This software is copyright (c) 2004, 2008 by Matthijs van Duin, all rights reserved;
copyright (c) 2014 cPanel Inc., all rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Matthijs van Duin <xmath@cpan.org>

=head1 CONTRIBUTORS

=for stopwords Karen Etheridge Florian Ragwitz Matthijs van Duin Reini Urban Dagfinn Ilmari Mannsåker gfx J.R. Mash

=over 4

=item *

Karen Etheridge <ether@cpan.org>

=item *

Florian Ragwitz <rafl@debian.org>

=item *

Matthijs van Duin <xmath-no-spam@nospam.cpan.org>

=item *

Reini Urban <rurban@cpanel.net>

=item *

Dagfinn Ilmari Mannsåker <ilmari@ilmari.org>

=item *

gfx <gfuji@cpan.org>

=item *

J.R. Mash <jmash.code@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

=cut
