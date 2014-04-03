use strict;
use warnings;
use utf8;
use 5.014_002;

sub main {
    chomp( my $date = <> );
    while ( !isDivisible( $date ) ) {
	$date = forwardDate($date);
    }
    print "$date\n";
}
    
sub isDivisible {
    my ( $date ) = @_;
    my ( $Y, $M, $D ) = split ( /\//, $date );
    return ( $Y % ( $M * $D )  == 0 ) ? 1 : 0;
}

sub isLeapYear {
    my ( $Y ) = @_;
    return ( $Y % 400 == 0 ) ? 1 : 
    ( $Y % 100 == 0 ) ? 0 :
    ( $Y % 4 == 0 ) ? 1 : 0;
}

sub forwardDate {
    my ( $date ) = @_;
    my ( $Y, $M, $D ) = split /\//, $date;
    if( $M == 2 ) {
	if( (isLeapYear($Y) && $D == 29) || (!isLeapYear($Y) && $D == 28) ) {
	    $D = 1;
	    $M++;
	} else {
	    $D++;
	}
    } elsif ($M == 4 || $M == 6 || $M == 9 || $M == 11 ) {
	if( $D == 30) {
	    $D = 1;
	    $M++;
	} else {
	    $D++;
	}
    } elsif ( $M == 12 && $D == 31) {
	$Y++;
	$M = 1;
	$D = 1;
    } else {
	if( $D == 31) {
	    $D = 1;
	    $M++;
	} else {
	    $D++;
	}
    }
    return sprintf( "%04d/%02d/%02d", $Y, $M, $D );
}

main();
1;
