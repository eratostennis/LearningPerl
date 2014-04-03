use strict;
use warnings;
use utf8;
use 5.014_002;

my $year = <STDIN>;

if( $year % 400 == 0 ) {
    print "YES\n";
} else {
    if( $year % 100 == 0 ) {
	print "NO\n";
    } else {
	if( $year % 4 == 0 ) {
	    print "YES\n";
	} else {
	    print "NO\n";
	}
    }
}
