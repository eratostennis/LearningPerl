use strict;
use warnings;
use utf8;

my ( $ward, @wards, %count);
chomp(@wards = <STDIN>);
foreach $ward (@wards){
    $count{$ward} ++;
}
for $ward (keys %count) {
    print "$ward : $count{$ward} times\n";
}
