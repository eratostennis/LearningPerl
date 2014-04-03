chomp(my @E = split / /, <STDIN>);
chomp(my $B = <STDIN>);
chomp(my @L = split / /, <STDIN>);
my $result=0;
foreach (@L){
    $result++ if($_ ~~ @E);
}
$result-- if($result < 6);
$result++ if($result == 4 && $B ~~ @L);
print $result > 1 ? 7-$result : 0;
print "\n";
