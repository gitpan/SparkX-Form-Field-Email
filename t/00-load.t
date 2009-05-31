#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'SparkX::Form::Field::Email' );
}

diag( "Testing SparkX::Form::Field::Email $SparkX::Form::Field::Email::VERSION, Perl $], $^X" );
