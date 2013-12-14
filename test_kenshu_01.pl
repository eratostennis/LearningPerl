use strict;
use warnings;

my $odd_sum = 0;
for(my $i=1; $i<=100; $i++){
    $odd_sum += $i if($i % 2 == 1);
}
print $odd_sum."\n";
