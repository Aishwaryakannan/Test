#! /usr/bin/perl

use warnings;
use strict;
use SOAP::Lite;
use Data::Dumper;
use LWP::UserAgent;

my $client = SOAP::Lite->new(proxy=>'http://localhost:3000/soap');

#my $som = $client->call('Hi');
$client->outputxml('true');
print Dumper $client->result;

