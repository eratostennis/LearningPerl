chomp( my $input = <STDIN>);
chomp( my @line_data = <STDIN>);

my ($x, $y, $direction) = split / /, $input;
my $num = 0;
my @coefficient = qw/1000 100 10 1/;
$x--;$y--;
my $x_direction = ($direction =~ /R/) ? 1 : ($direction =~ /L/) ? -1 : 0;
my $y_direction = ($direction =~ /D/) ? 1 : ($direction =~ /U/) ? -1 : 0;
foreach (@coefficient) {
    my @tmp_data = split //, $line_data[ $y ];
    $num += $tmp_data[ $x ]*$_;
    if($x_direction == 1){
	$x_direction = -1 if($x == 8);
	$x = ($x == 8) ? 7 : $x+1;
    }elsif($x_direction == -1){
	$x_direction = 1 if($x == 0);
	$x = ($x == 0) ? 1 : $x-1;
    }
    if($y_direction == 1){
	$y_direction = -1 if($y == 8);
	$y = ($y == 8) ? 7 : $y+1;
    }elsif($y_direction == -1){
	$y_direction = 1 if($y == 0);
	$y = ($y == 0) ? 1 : $y-1;
    }
}
print sprintf("%04d", $num)."\n";
