chomp(my $N = <STDIN>);
chomp(my @list = <STDIN>);
my $cost = 0;
foreach (@list){
    my ($num, $price) = split / /, $_;
    $cost += $num*$price;
}
$cost *= 1.05;
$cost = int $cost;
print "$cost\n";
