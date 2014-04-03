use strict;
use warnings;
use utf8;

my $num = <STDIN>;
chomp $num;
my $answers = <STDIN>;
chomp $answers;
my @count = (0,0,0,0);
foreach my $answer (split //, $answers){
    if($answer == 1 || $answer == 2 || $answer == 3 || $answer == 4){
	$count[$answer-1]++; 
    }else{
	print "Input includes wrong number $answer\n";
    }
}
my $max;
my $min;
foreach my $points (@count){
    $max = $points if(!defined($max) || $max <= $points);
    $min = $points if(!defined($min) || $min >= $points);
}
print "$max $min\n";
