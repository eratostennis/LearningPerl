use strict;
use warnings;
use utf8;

# my $dir_to_process = '/etc';
# opendir my $dh, $dir_to_process or die "Cannot open $dir_to_process: $!";
# foreach my $file (readdir $dh) {
#     print "one file in $dir_to_process is $file\n";
# }
# closedir $dh;

# my $successful = unlink glob '#*';
# print "I deleted $successful file(s) just now\n";

foreach my $file (glob "begginer*"){
    my $newfile = $file;
    $newfile =~ s/\Abegginer/beginner/;
    if (-e $newfile) {
	warn "can't rename $file to $newfile: $newfile exists\n";
    } elsif (rename $file => $newfile){
	print "success!\n";
    } else {
	warn "rename $file to $newfile failed: $!\n";
    }
}
