use strict;
use warnings;

my $strings=<STDIN>;
my $number=<STDIN>;
for(1..$number){
    print "$strings";
}

print $strings x $number;
