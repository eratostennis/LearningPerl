use strict;
use warnings;

my $radious = <STDIN>;
my $loop;
# if($radious < 0){
#     $loop=0;
# }else{
#     $loop=2*3.141592654*$radious;
# }
$loop = ($radious < 0)? 0 : 2*3.141592654*$radious;
print "$loop\n";
