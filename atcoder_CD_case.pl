chomp(my ($N, $M) = split / /, <STDIN>);
chomp(my @listened_disk = <STDIN>);
my @stored_disk;
foreach (1..$N){
    $stored_disk[$_-1] = $_;
}
my $prev_disk = 0;
foreach (@listened_disk) {
    $prev_disk = shift @listened_disk;
    last if($prev_disk != 0);
}
$stored_disk[$prev_disk-1] = 0 if($prev_disk > 0);
foreach my $now_disk(@listened_disk) {
    next if($now_disk == $prev_disk);
    my $tmp_position = 0;
    foreach (@stored_disk) {
	last if($now_disk == $_);
	$tmp_position++;
    }
    $stored_disk[$tmp_position] = $prev_disk;
    $prev_disk = $now_disk;
}
print "$_\n" foreach (@stored_disk);

