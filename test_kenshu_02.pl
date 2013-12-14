use strict;
use warnings;

my $a = +[ 1, 2, 3];

my @x = @$a;
my $y = $a;
my @z = @$a;

print $a."\n";
print @x."\n";
print $y."\n";
print @z."\n";

func1($a);
func2(@z);

print 'x = '.join(',', @x)."\n";
print 'y = '.join(',', @$y)."\n";
print 'z = '.join(',', @z)."\n";

sub func1{
    my ($data) = @_;
    shift @$data;
}

sub func2{
    my (@data) = @_;
    shift @data;
}
