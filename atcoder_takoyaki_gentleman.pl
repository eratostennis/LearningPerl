chomp(my ($N, $M) = split / /, <STDIN>);
chomp(my $name = <STDIN>);
chomp(my @kit = split //, <STDIN>);
my %kit_storage;
pop @kit;
foreach (@kit) {
    $kit_storage{$_} += 1;
}
my $necessary_kit_num;
while ( my ($key, $value) = each(%kit_storage) ) {
    my $tmp_kit_num = 0;
    $tmp_kit_num = ($name =~ s/$key//g);
    $tmp_kit_num = ($tmp_kit_num % $value == 0) ? (int ($tmp_kit_num / $value)) : (int ($tmp_kit_num / $value)) + 1;
    $necessary_kit_num = $tmp_kit_num if($necessary_kit_num < $tmp_kit_num);
}
$necessary_kit_num = -1 if(length $name > 0);
print "$necessary_kit_num\n";
