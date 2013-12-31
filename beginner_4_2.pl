use strict;
use warnings;

my @numbers;
for(1..1000){
    push @numbers, $_;
}
print total(@numbers);

sub total{
    my $sum = 0;
    foreach(@_){
	$sum += $_;
    }
    return $sum;
}
