use strict;
use warnings;

print "How many people do you guess come here?";
my $numbers = <STDIN>;
for(my $i=1; $i <= $numbers; $i++){
    my $name = <STDIN>;
    greet($name);
}

sub greet{
    state @names;
    my $strings;
    $strings = "Hi $_[0], You are the first one here!" if(@names==());
    $strings = "Hi $_[0], $names[0] is also here!" if(@names!=());
    push @names, $_[0];
    print $strings;
}
