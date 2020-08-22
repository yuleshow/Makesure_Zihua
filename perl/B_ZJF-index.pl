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

my $input_file = "../TXT/B-index.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    ($b_number, $b_Z) = split (/:/, $temp);
#    print "$a_number => $a_character\n";
    $b_index{$b_number}= $b_Z;
}

close (INPUT_FILE);

my $input_file = "../TXT/B_J.csv";

open (INPUT_FILE, '<', $input_file);
my $i=1;

while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;

$temp =~ s /噚/㖊/g;
$temp =~ s /撝/㧑/g;
$temp =~ s /殰/㱩/g;
$temp =~ s /鸂/㶉/g;
$temp =~ s /絅/䌹/g;
$temp =~ s /繸/䍁/g;
$temp =~ s /薳/䓕/g;
$temp =~ s /螮/䗖/g;
$temp =~ s /貙/䝙/g;
$temp =~ s /鷈/䴘/g;
$temp =~ s /鷿/䴙/g;
$temp =~ s /嚲/亸/g;
$temp =~ s /俔/伣/g;
$temp =~ s /徊/佪/g;
$temp =~ s /羅/偻/g;
$temp =~ s /厤/历/g;
$temp =~ s /蔘/参/g;
$temp =~ s /衕/同/g;
$temp =~ s /唚/吣/g;
$temp =~ s /嗊/唝/g;
$temp =~ s /垵/埯/g;
$temp =~ s /壼/壸/g;
$temp =~ s /奼/姹/g;
$temp =~ s /嶮/崄/g;
$temp =~ s /襆/幞/g;
$temp =~ s /开/幵/g;
$temp =~ s /钺/戉/g;
$temp =~ s /鏚/戚/g;
$temp =~ s /捍/扞/g;
$temp =~ s /插/扱/g;
$temp =~ s /抵/扺/g;
$temp =~ s /拚/抃/g;
$temp =~ s /抱/抔/g;
$temp =~ s /背/揹/g;
$temp =~ s /搵/揾/g;
$temp =~ s /阳/旸/g;
$temp =~ s /曦/晞/g;
$temp =~ s /晰/晢/g;
$temp =~ s /檮/梼/g;
$temp =~ s /棶/梾/g;
$temp =~ s /槤/梿/g;
$temp =~ s /梲/棁/g;
$temp =~ s /毋/毌/g;
$temp =~ s /舄/潟/g;
$temp =~ s /氂/牦/g;
$temp =~ s /瑒/玚/g;
$temp =~ s /璫/珰/g;
$temp =~ s /角/甪/g;
$temp =~ s /瘲/疭/g;
$temp =~ s /瞶/瞆/g;
$temp =~ s /炮/砲/g;
$temp =~ s /硜/硁/g;
$temp =~ s /禡/祃/g;
$temp =~ s /禰/祢/g;
$temp =~ s /穠/秾/g;
$temp =~ s /繐/穗/g;
$temp =~ s /簹/筜/g;
$temp =~ s /篔/筼/g;
$temp =~ s /箅/箄/g;
$temp =~ s /紵/纻/g;
$temp =~ s /綌/绤/g;
$temp =~ s /綯/绹/g;
$temp =~ s /藉/耤/g;
$temp =~ s /操/肏/g;
$temp =~ s /䏝/膞/g;
$temp =~ s /艹/艸/g;
$temp =~ s /蕓/芸/g;
$temp =~ s /薴/苧/g;
$temp =~ s /答/荅/g;
$temp =~ s /虆/蔂/g;
$temp =~ s /薀/蕰/g;
$temp =~ s /薯/藷/g;
$temp =~ s /櫱/蘖/g;
$temp =~ s /螿/螀/g;
$temp =~ s /褘/袆/g;
$temp =~ s /襏/袯/g;
$temp =~ s /褌/裈/g;
$temp =~ s /西/襾/g;
$temp =~ s /誾/訚/g;
$temp =~ s /詖/诐/g;
$temp =~ s /譸/诪/g;
$temp =~ s /贔/赑/g;
$temp =~ s /贇/赟/g;
$temp =~ s /赬/赪/g;
$temp =~ s /跖/蹠/g;
$temp =~ s /軑/轪/g;
$temp =~ s /輈/辀/g;
$temp =~ s /輬/辌/g;
$temp =~ s /轀/辒/g;
$temp =~ s /酇/酂/g;
$temp =~ s /寀/采/g;
$temp =~ s /鈒/钑/g;
$temp =~ s /錏/铔/g;
$temp =~ s /銍/铚/g;
$temp =~ s /銛/铦/g;
$temp =~ s /鋙/铻/g;
$temp =~ s /錡/锜/g;
$temp =~ s /杴/锨/g;
$temp =~ s /鍠/锽/g;
$temp =~ s /鎛/镈/g;
$temp =~ s /鏐/镠/g;
$temp =~ s /䦆/镢/g;
$temp =~ s /鑱/镵/g;
$temp =~ s /閈/闬/g;
$temp =~ s /闍/阇/g;
$temp =~ s /闠/阓/g;
$temp =~ s /闒/阘/g;
$temp =~ s /闤/阛/g;
$temp =~ s /隋/陏/g;
$temp =~ s /霢/霡/g;
$temp =~ s /韝/鞲/g;
$temp =~ s /熲/颎/g;
$temp =~ s /颭/飐/g;
$temp =~ s /颻/飖/g;
$temp =~ s /飣/饤/g;
$temp =~ s /餖/饾/g;
$temp =~ s /餕/馂/g;
$temp =~ s /饁/馌/g;
$temp =~ s /馹/驲/g;
$temp =~ s /駰/骃/g;
$temp =~ s /驫/骉/g;
$temp =~ s /騂/骍/g;
$temp =~ s /驌/骕/g;
$temp =~ s /驦/骦/g;
$temp =~ s /鯷/鳀/g;
$temp =~ s /鳲/鸤/g;
$temp =~ s /鷽/鸴/g;
$temp =~ s /鵷/鹓/g;
$temp =~ s /鷫/鹔/g;
$temp =~ s /鷊/鹝/g;
$temp =~ s /鶹/鹠/g;
$temp =~ s /鷁/鹢/g;
$temp =~ s /鸏/鹲/g;
$temp =~ s /鞀/鼗/g;
$temp =~ s /齕/龁/g;
$temp =~ s /齗/龂/g;

    
    
    $b_J= $temp;
    if ($i<=9) {
        $head="B0000";
    } elsif (($i>=10) and ($i<=99)) {
        $head="B000";
    } elsif (($i>=100) and ($i<=999)) {
        $head="B00";
    } elsif ($i>=1000) {
        $head="B0";
    }

    $key="$head$i";

    $bJ_index{$key}=$b_J;
    # print $key." =>> ".$bJ_index{$key}."\n";

    # print "\$i=$i     \$head=$head   combination:$head$i\n";
    
    $i++;

}

close (INPUT_FILE);


my $output_file = "../TXT/B_ZJF-index.csv";
open (OUTPUT_FILE, '>', $output_file);


foreach my $number (sort keys %b_index) {
    #        print $number." => ".$bJ_index{$number}."\n";
    if ($b_index{$number} ne $b_index{$number} ) {
        print OUTPUT_FILE "$number:$b_index{$number}:$bJ_index{$number}:$b_index{$number}:一對未知\n";
    } else {
        print OUTPUT_FILE "$number:$b_index{$number}:$bJ_index{$number}:無相關對應:一對未知\n";
#    print OUTPUT_FILE $ZJF{$number}."\n";
}

close (OUTPUT_FILE);
