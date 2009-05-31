package SparkX::Form::Field::Email;

our $VERSION = 0.01;

use Any::Moose;
with 'Spark::Form::Field';
with 'Spark::Form::Field::Role::Regex';

has '+regex' => (
    required => 0,
    default  => sub {qr/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.(?:[A-Z]{2}|com|org|net|gov|mil|biz|info|mobi|name|aero|jobs|museum)$/i}
);

has '+errmsg_regex' => (
    required => 0,
    default  => "You must provide a valid email address.",
);

has '+name' => (
    required => 0,
    default  => 'email',
);

sub validate {
    #Will be overridden by ::Role::Regex if necessary
    shift->valid(1);
}

1;
__END__

=head1 NAME

SparkX::Form::Field::Email - An email field for Spark::Form. Implements Spark::Form::Field::Role::Regex

=head1 METHODS

=head2 validate ($value)

Verifies the email looks vaguely real. Not a perfect regexp.

=head1 OPTIONS

=head2 errmsg_regex => Str

Alternate error message text.

=head1 SEE ALSO

L<Spark::Form::Field::Role::Regex>

=cut
