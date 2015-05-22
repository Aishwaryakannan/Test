use utf8;
package Test::Schema::Result::Directory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Test::Schema::Result::Directory

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

=head1 TABLE: C<directory>

=cut

__PACKAGE__->table("directory");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 department

  data_type: 'varchar'
  is_nullable: 1
  size: 24

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 sms

  data_type: 'integer'
  is_nullable: 1

=head2 phone

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "department",
  { data_type => "varchar", is_nullable => 1, size => 24 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "sms",
  { data_type => "integer", is_nullable => 1 },
  "phone",
  { data_type => "integer", is_nullable => 1 },
);

=head1 RELATIONS

=head2 id

Type: belongs_to

Related object: L<Test::Schema::Result::Support>

=cut

__PACKAGE__->belongs_to(
  "id",
  "Test::Schema::Result::Support",
  { id => "id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-05-06 12:02:21
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8fHlFbwB+hOxaooUqE/dvA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
