use strict;
use warnings;
use utf8;
use 5.014_002;

my $year = <STDIN>;

if( $year % 4 == 0 ) {
    if( $year % 100 == 0 ) {
	if( $year % 400 == 0 ) {
	    print "YES\n";
	}else{
	    print "NO\n";
	}
    }else{
	print "YES\n";
    }
}else{
    print "NO\n";
}
	
