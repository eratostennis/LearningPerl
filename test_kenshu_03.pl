use strict;
use warnings;

{
    package Hoge;

    sub new{
	my ($class, $n) = @_;
	print 'class ='.$class."\n";
	print '$n ='.$n."\n";
	bless +{
	    n => $n,
	    m => +[]
	},$class;
    }

    sub n {shift -> {n}}

    sub m {
	my ($self, @m) = @_;
	if(@m) {
	    push @{$self -> {m}},@m;
	}
	@{$self -> {m}};
    }

    sub c {
	my ($self) = @_;
	my $t = 0;
	$t += $_ for($self->m);
	$self -> n * $t;
    }
}

my $hoge = Hoge -> new(4);

$hoge -> m(3);
$hoge -> m(6);
print 'ans1 ='.$hoge -> c. "\n";

$hoge -> m(5,8);
print 'ans2 ='.$hoge -> c."\n";
