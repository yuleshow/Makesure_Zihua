#!/usr/bin/perl

# Input file:           ../TXT/ORIGIN-G_JFY.txt
# Output file:          ../TXT/G_JFY-table.csv

use Encode;
use Encode qw(encode decode);


use utf8;

use open ":std", ":encoding(UTF-8)";


my $input_file = "../TXT/ORIGIN-G_JFY.txt";

open (INPUT_FILE, '<', $input_file);

my $output_file = "../TXT/G_JFY-table.csv";
open (OUTPUT_FILE, '>', $output_file); 

while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s/\r|\n//g;
    $temp =~ s/规范字与繁体字、异体字对照表//g;
    $temp =~ s/规范字	繁体字	异体字//g;
    $temp =~ s/d[0-9]+//g;
        $temp =~ s/a[0-9]+//g;
    $temp =~ s/\t\t/\t(無繁體)\t/g;
    $temp =~ s/\)\t\[/:/g;
    $temp =~ s/\t\(/:/g;
    $temp =~ s/\)/:無異體/g;
    $temp =~ s/\]//g;
    $temp =~ s/\t/:/g;
    $temp =~ s/無異體:/無異體/g;
    $temp =~ s/～:/～:無異體/g;

    if ($temp eq '') {
    } else {

        ($g_number, $g_jian, $g_fan, $g_yi) = split (/:/, $temp);

    if ($g_fan eq '～') {
        $g_fan = "$g_jian";

    }
    

    if ($g_number eq "〃") {

        $g_number = $last_number;
        $g_jian = $last_jian;

    }
    

    if ($g_number <=3500) {
        $g_modifier = "G1-0";
    } elsif (($g_number > 3500) and ($g_number <=6500)) {
        $g_modifier = "G2-0";
    } elsif ($g_number > 6500) {
        $g_modifier = "G3-0";
    }

    
        print OUTPUT_FILE "$g_modifier$g_number:$g_jian:$g_fan:$g_yi\n";

    

    $last_number= $g_number;
    $last_jian = $g_jian;

    }
}


close (INPUT_FILE);
close (OUTPUT_FILE);
