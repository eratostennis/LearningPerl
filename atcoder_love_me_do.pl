chomp(my $N = <STDIN>);
chomp(my $wards = <STDIN>);
my $count = ($wards =~ s/\b(TAKAHASHIKUN|(T|t)akahashikun)\b//g);
print $count>0 ? "$count\n" : "0\n";
