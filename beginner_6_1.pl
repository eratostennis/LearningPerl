use strict;
use warnings;
use utf8;

my %last_name = qw{
    fred flintstone
    barney rubble
    wilma flintstone
};
print "Please entera frist name: ";
chomp (my $name = <STDIN>);
print "That's $name $last_name{$name}.\n";
