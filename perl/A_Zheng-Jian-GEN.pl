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
my $input_file = "A_Zheng-Jian.txt";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $temp =~ s/【[0-9]+ 畫】//g;
    $temp =~ s/[0-9]+ 畫～ [0-9]+ 畫//g;
    $temp =~ s/- [0-9]+ -//g;
    $temp =~ s/標準字對照簡化字表//g;
    $temp =~ s/[0-9]+ 畫//g;
    $temp =~ s/\ //g;
    $temp =~ s/\(锺\)\[鍾\]//g;
    $temp =~ s/\(苹\)\[蘋\]//g;
    $temp =~ s/\)\*\[/:一簡對多:/g;
    $temp =~ s/\(/:/g;
    $temp =~ s/]//g;
    $temp =~ s/\)\[/:一簡對一:/g;
    $temp =~ s/\)\*/:一簡對多:佔格/g;
    $temp =~ s/\)/:一簡對一:佔格/g;
    if ($temp eq '') {
    } else {
        print $temp;
        print "\n";
    }
}


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

