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
my $input_file = "A-index.txt";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    ($tmp1, $a_number, $tmp2, $a_character) = split (/:/, $temp);
#    print "$a_number => $a_character\n";
    $a_index{$a_character}= $a_number;
}

close (INPUT_FILE);

my $input_file = "A-ZJ.txt";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $fullline= $temp;
    ($a_character, $rest) = split (/:/, $temp);
    $AJ_table{$a_character} = $fullline;
#    print "$a_character => $fullline\n";

}

close (INPUT_FILE);


while ( ($key, $value) = each %a_index ) {
    print "$key:$a_index{$key}:$AJ_table{$key}\n";
    # print "$key => $value\n";
    
}

