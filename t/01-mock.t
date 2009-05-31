# Tests the email field
use Test::More tests => 4;
use Test::MockObject::Extends;
use SparkX::Form::Field::Email;
my $form = Test::MockObject::Extends->new('Spark::Form');
my $email1 = SparkX::Form::Field::Email->new(
    value => 'fail',
    form => $form,
);
$email1->validate;
my $email2 = SparkX::Form::Field::Email->new(
    value => 'test@example.org',
    form => $form,
);
$email2->validate;
# 2 tests
cmp_ok($email1->valid,'==',0,'Invalid email is invalid');
cmp_ok($email2->valid,'==',1,'Valid email is valid');
is_deeply($email2->errors,[],'Valid email has no errors');
cmp_ok(scalar @{$email1->errors},'==',1,'Invalid email has one error');
# 6 tests
