use utf8;
package Test::Schema::Result::Logindetail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Test::Schema::Result::Logindetail

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<logindetails>

=cut

__PACKAGE__->table("logindetails");

=head1 ACCESSORS

=head2 username

  data_type: 'text'
  is_nullable: 0

=head2 password

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "username",
  { data_type => "text", is_nullable => 0 },
  "password",
  { data_type => "text", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-05-06 11:09:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uQPd0HPJqHo/lJdbZubRLQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
