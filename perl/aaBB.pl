#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column
# Inputfile:      ../TXT/B-index.csv
#                 ../TXT/B_J.csv
# Output:         ../TXT/B_ZJF-index.csv

use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";

my $input_file = "aa.csv";

open (INPUT_FILE, '<', $input_file);
my $i=1;

while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;

    ($key, $char) = split(/:/, $temp);
    $AA{$key}=$char;
}

close (INPUT_FILE);


my $input_file = "BB.csv";

open (INPUT_FILE, '<', $input_file);
my $i=1;

while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;

    ($char, $key) = split(/:/, $temp);
    $BB{$key}=$char;
}

close (INPUT_FILE);


foreach my $key (sort keys %BB) {
    print "$AA{$key}:$key\n";
}



