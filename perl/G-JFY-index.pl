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
my $input_file = "G-index.txt";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    ($g_number, $g_character)  = split (/:/, $temp);
#    print "$g_number => $g_character\n";
    $g_index{$g_number}= $g_character;
}

close (INPUT_FILE);

my $input_file = "G-JF-table-long.txt";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $fullline= $temp;
    ($gg_number, $rest) = split (/:/, $temp);
    $g_table{$gg_number} = $fullline;
#    print "$gg_number => $fullline\n";

}

close (INPUT_FILE);


foreach my $key (sort keys %g_index) {
    if ($g_table{$key} eq '') {
        print "$key:$g_index{$key}:無繁體:無異體\n";
    } else {
        print "$g_table{$key}\n";
    }

}



    
#    print "$key:$a_index{$key}:$AJ_table{$key}\n";
    # print "$key => $value\n";
    


