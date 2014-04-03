chomp(my ($column, $row) = split / /, <STDIN>);
chomp(my @lines = <STDIN>);
my $count = 0;
$lines[$row] =~ s/o.*//;
$count = ($lines[$row] =~ s/\s/\s/g);
$count /= 2;
for(my $i = $row-1; $i >= 0; $i--){
    my @tmp = split //, $lines[$i];
    if( ($count > 0) && ($tmp[2*$count-1] =~ "-") ){
	$count--;
    }elsif( ($count < $column-1) && ($tmp[2*$count+1] =~ "-") ){
	$count++;
    }
}
$count++;
print "$count\n";
