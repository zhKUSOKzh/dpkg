# Copyright © 2009 Raphaël Hertzog <hertzog@debian.org>

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

package Dpkg::Control::Changelog;

use strict;
use warnings;

use Dpkg::Control;
use base 'Dpkg::Control';

=head1 NAME

Dpkg::Control::Changelog - represent info fields output by dpkg-parsechangelog

=head1 DESCRIPTION

This object derives directly from Dpkg::Control with the type
CTRL_CHANGELOG.

=head1 FUNCTIONS

=over 4

=item $c = Dpkg::Control::Changelog->new()

Create a new empty set of changelog related fields.

=cut

sub new {
    my $this = shift;
    my $class = ref($this) || $this;
    my $self = Dpkg::Control->new(type => CTRL_CHANGELOG, @_);
    return bless $self, $class;
}

=back

=head1 AUTHOR

Raphael Hertzog <hertzog@debian.org>.

=cut

1;