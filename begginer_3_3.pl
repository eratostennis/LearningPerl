use strict;
use warnings;
#改行バージョン
chomp(my @br_names = <STDIN>);
print sort @br_names;
#改行なしバージョン
my @names = <STDIN>;
print sort @names;
