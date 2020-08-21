#!/usr/bin/perl
#Input file:           ../TXT/G_JFY-table.csv
#Output file:          G_JFY-long-table.csv


use Encode;
use Encode qw(encode decode);

# use UTF-16;
use utf8;
# use utf16;
#  use open ":encoding(gbk)", ":std";
use open ":std", ":encoding(UTF-8)";

# my $input_file = $ARGV[0];
my $input_file = "../TXT/G_JFY-table.csv";
open (INPUT_FILE, '<', $input_file);

my $output_file = "../TXT/G_JFY-long-table.csv";
open (OUTPUT_FILE, '>', $output_file);

while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s/\r|\n//g;

    $fullline = $temp;
    ($g_number, $g_rest) = split(/:/, $temp);

#    print "$g_number => $fullline\n";

    if ($g_number eq $lastnumber) {
        $lastline ="$lastline:$fullline";
    } else {
        if ($lastline ne '') {
            print OUTPUT_FILE  "$lastline\n";
        }
            $lastline=$fullline;
    }

    $lastnumber = $g_number;


}
        print OUTPUT_FILE "$lastline\n";

close (INPUT_FILE);

