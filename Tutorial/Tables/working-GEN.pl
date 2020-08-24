#!/usr/bin/perl

#Input file:     waiting.csv
#Output file:    working.csv


use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";


my $input_file = "waiting.csv";


open (INPUT_FILE, '<', $input_file);

my $count=0;
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $temp =~ s /\"//g;
    $temp =~ s /,/:/g;
    $temp =~ s /:+$//g;

    $count++;
    
    ($number[$count], $char_F[$count], $char_J[$count], $char_Y, @rest ) =split (/:/, $temp);

    $oldline[$count]=$temp;

}


close (INPUT_FILE);


my $j=0;

for ($i=1; $i<=$count; $i++) {
    $next=$i+1;

    if ($oldline[$i] ne $oldline[$next]) {
        $j++;
        $newline[$j]=$oldline[$i];
        $table_mark=substr($number[$i], 0, 1);
        
        $key[$j]=$char_J[$i];


        if (($table_mark eq 'G' ) and ($key[$j] ne '無繁體')) {
            $g_index{$key[$j]}=$newline[$j];
            
 
        }
        if ($table_mark ne 'G') {
            $ab_index{$key[$j]}=$newline[$j];

        }
    }
}

$count=$j;

for ($i=1; $i<=$count; $i++) {
#    print "$i--->$key[$i]----->$newline[$i]\n";

    $mark=substr($newline[$i], 0, 1);
#    print "$mark\n";

    if ($mark ne 'G') {
        if ($g_index{$key[$i]} eq ''){
            print "序$i :$newline[$i]\n";
        } else {
            print "序$i :$newline[$i]:$g_index{$key[$i]}\n";
        }
    }

    if ($mark eq 'G') {
        if ($ab_index{$key[$i]} eq '') {
            print "序$i ::::::$newline[$i]\n";
        }
    }
    
}

