use utf8;
package Test::Schema::Result::EmployeeDetail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Test::Schema::Result::EmployeeDetail

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

=head1 TABLE: C<employee_details>

=cut

__PACKAGE__->table("employee_details");

=head1 ACCESSORS

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 date_of_birth

  data_type: 'text'
  is_nullable: 0

=head2 contact_number

  data_type: 'integer'
  is_nullable: 1

=head2 username

  data_type: 'text'
  is_nullable: 0

=head2 password

  data_type: 'text'
  is_nullable: 1

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'seq_id'

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "text", is_nullable => 0 },
  "date_of_birth",
  { data_type => "text", is_nullable => 0 },
  "contact_number",
  { data_type => "integer", is_nullable => 1 },
  "username",
  { data_type => "text", is_nullable => 0 },
  "password",
  { data_type => "text", is_nullable => 1 },
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "seq_id",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</username>

=back

=cut

__PACKAGE__->set_primary_key("username");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-05-06 11:09:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:c/jBFUxELxnqwHaGrITR+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
