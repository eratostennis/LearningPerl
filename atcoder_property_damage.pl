chomp(my $X = <STDIN>);
chomp(my $s = <STDIN>);
$s =~ s/$X//g;
print $s."\n";
