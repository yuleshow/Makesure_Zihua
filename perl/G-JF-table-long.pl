#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column

use Encode;
use Encode qw(encode decode);

# use UTF-16;
use utf8;
# use utf16;
#  use open ":encoding(gbk)", ":std";
use open ":std", ":encoding(UTF-8)";

# my $input_file = $ARGV[0];
my $input_file = "G-JF-table.txt";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s/\r|\n//g;

    $fullline = $temp;
    ($g_number, $g_rest) = split(/:/, $temp);

#    print "$g_number => $fullline\n";

    if ($g_number eq $lastnumber) {
        $lastline ="$lastline:$fullline";
    } else {
        print "$lastline\n";
            $lastline=$fullline;
    }

    $lastnumber = $g_number;


}
        print "$lastline\n";

close (INPUT_FILE);

# print $temp;

# @output_chars=split(undef, $temp);



# $i=1;
# foreach (@output_chars) {
#     print "B0";


#     if ($i<1000) {
#         print "0";
#     }

#     if ($i<100) {
#         print "0";
#     }
#     if ($i<10) {
#        print "0";
#     }
        
#     print $i.":".$_;
#     print "\n";
#     $i++;
# }

