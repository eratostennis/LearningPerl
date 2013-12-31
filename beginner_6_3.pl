use strict;
use warnings;
use utf8;

foreach my $key (keys %ENV){
    my $value = $ENV{$key};
    print "$key: $value\n";
}
