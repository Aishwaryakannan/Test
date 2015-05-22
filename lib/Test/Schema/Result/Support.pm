use utf8;
package Test::Schema::Result::Support;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Test::Schema::Result::Support

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

=head1 TABLE: C<support>

=cut

__PACKAGE__->table("support");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'support_id_seq'

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 details

  data_type: 'text'
  is_nullable: 1

=head2 isissue

  data_type: 'boolean'
  default_value: true
  is_nullable: 0

=head2 frommail

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 requesttype

  data_type: 'integer'
  is_nullable: 1

=head2 osid

  data_type: 'integer'
  is_nullable: 1

=head2 browserid

  data_type: 'integer'
  is_nullable: 1

=head2 attachment

  data_type: 'integer[]'
  is_nullable: 1

=head2 createdepoch

  data_type: 'integer'
  is_nullable: 1

=head2 updatedepoch

  data_type: 'integer'
  is_nullable: 1

=head2 status

  data_type: 'integer'
  is_nullable: 1

=head2 criticality

  data_type: 'integer'
  is_nullable: 1

=head2 youtrackid

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "support_id_seq",
  },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "details",
  { data_type => "text", is_nullable => 1 },
  "isissue",
  { data_type => "boolean", default_value => \"true", is_nullable => 0 },
  "frommail",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "requesttype",
  { data_type => "integer", is_nullable => 1 },
  "osid",
  { data_type => "integer", is_nullable => 1 },
  "browserid",
  { data_type => "integer", is_nullable => 1 },
  "attachment",
  { data_type => "integer[]", is_nullable => 1 },
  "createdepoch",
  { data_type => "integer", is_nullable => 1 },
  "updatedepoch",
  { data_type => "integer", is_nullable => 1 },
  "status",
  { data_type => "integer", is_nullable => 1 },
  "criticality",
  { data_type => "integer", is_nullable => 1 },
  "youtrackid",
  { data_type => "varchar", is_nullable => 1, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 directories

Type: has_many

Related object: L<Test::Schema::Result::Directory>

=cut

__PACKAGE__->has_many(
  "directories",
  "Test::Schema::Result::Directory",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-05-06 12:02:21
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nE58L0zdmflsJ6OLbAKXjg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
