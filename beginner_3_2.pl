use strict;
use warnings;

my @index = <STDIN>;
my @names = qw<fred betty barney dino wilma pebbles bamm-bamm>;
foreach(@index){
    print @names[$_];
}
