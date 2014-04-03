chomp(my $N = <STDIN>);
my $sum  = $N % 10 > 6 ? ((int $N/10)+1)* 100 : 15*($N % 10) + (int $N/10) * 100; 
print "$sum\n";
