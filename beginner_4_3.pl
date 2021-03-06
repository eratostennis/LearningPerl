use strict;
use warnings;

my @numbers = <STDIN>;
print above_average(@numbers);
     

sub total{
    my $sum = 0;
    foreach(@_){
	$sum += $_;
    }
    return $sum;
}

sub average{
    my $total_number = total(@_);
    my $entries_number = @_;
    $total_number/$entries_number;
}

sub above_average{
    my $average = average(@_);
    my @list;
    foreach(@_){
	push @list, $_ if($_ > $average);
    }
    @list;
}
