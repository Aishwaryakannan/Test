package Test::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Test::Schema',
    
    connect_info => {
        dsn => 'dbi:Pg:dbname=aishwaryatest;host=dev01.blr.exceleron.in;port=5432',
        user => 'aishwarya',
        password => 'test',
    }
);

=head1 NAME

Test::Model::DB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<Test>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Test::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.65

=head1 AUTHOR

Aishwarya

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;