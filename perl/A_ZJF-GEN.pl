#!/usr/bin/perl

# Input file:    ../TXT/ORIGIN-A_ZJF.txt
# Output file:   ../TXT/A_ZJF-unidexed.csv

use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";

my $input_file = "../TXT/ORIGIN-A_ZJF.txt";
my $output_file = "../TXT/A_ZJF-unidexed.csv";

open (INPUT_FILE, '<', $input_file);
open (OUTPUT_FILE, '>', $output_file);

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
    $temp =~ s/蘋\(\)\[蘋\]/蘋(苹)[蘋]/g;
    $temp =~ s/轂\(\)\[轂\]/轂(♧)[轂]/g;
    $temp =~ s/彝\(彝\)/彞(彝)/g;   ##由於在複製粘貼中，「彞」字會自動變成「彝」字，因此强制改回來
    $temp =~ s/剎\(剎\)/剎(刹)/g;
    $temp =~ s/疋\(疋\)/疋(匹)/g;

$temp =~ s/吶\(吶\)/吶(呐)/g;
$temp =~ s/諮\(谘\)/諮(咨)/g;
$temp =~ s/拚\(拚\)/拚(拼)/g;
$temp =~ s/弒\(弒\)/弒(弑)/g;
$temp =~ s/捱\(捱\)/捱(挨)/g;
$temp =~ s/朮\(朮\)/朮(术)/g;
$temp =~ s/珊\(珊\)/珊(珊󠄁)/g;

$temp =~ s/痲\(痲\)/痲(痳)/g;
$temp =~ s/醣\(醣\)/醣(糖)/g;
    $temp =~ s/冑\(冑\)/冑(胄)/g;
    $temp =~ s/牠\(牠\)/牠(它)/g;

    $temp =~ s/\)\*\[/:一簡對多:/g;
    $temp =~ s/\(/:/g;
    $temp =~ s/]//g;
    $temp =~ s/\)\[/:一簡對一:/g;
    $temp =~ s/\)\*/:一簡對多:佔格/g;
    $temp =~ s/\)/:一簡對一:佔格/g;
    if ($temp ne '') {
        print OUTPUT_FILE $temp."\n";
    }
}


close (INPUT_FILE);
close (OUTPUT_FILE);

