#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;
use POSIX;
use Cwd qw();
print "\n\n\n :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n\n";
print " ::::::   =============================================================  :::::\n";
print " ::::::       GENERATION OF CODON DEPENDENT AND HITS SPECIFIC PSSM       :::::\n";
print " ::::::   =============================================================  :::::\n\n";
print " ::::::           Shuvam Banerjee             Arnav Garai                :::::\n\n";
print " ::::::               Dr. Gautam Garai's lab                             :::::\n\n";
print " ::::::             Computational Sciences Division,SINP                 :::::\n\n";
print " :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n";
my $dir = 'C:\Strawberry32bit\perl\site\bin\STABILITY_ANAYSIS\actin_testfiles';                     # CHANGE THE PATH OF THE DIRECTORY WHERE THE QUERY FILES(.TXT) ARE PRESENT
opendir(DIR,$dir) or die $!;
my (@files,$input,$output,$file,$column);
while ($file = readdir(DIR)) {
	@files = <*.txt>;
}
closedir(DIR);
my $total =scalar @files;
print "\n TOTAL $total files found\n\n\n";
for $file (@files) {
	print " READING FROM $file FILE .........................\n\n\n";
	my $start_time = time;
	$input=$file;chomp($input);
	$output=$file;
	$output=~s/.txt/.pssm/;
	chomp($output);
	print " CREATING $output FILE .........................\n\n";
	my ($A,$G,$I,$L,$V,$M,$F,$W,$P,$C,$S,$T,$Y,$N,$Q,$H,$K,$R,$D,$E,$U);
	my ($PA,$PG,$PI,$PL,$PV,$PM,$PF,$PW,$PP,$PC,$PS,$PT,$PY,$PN,$PQ,$PH,$PK,$PR,$PD,$PE);
	my ($SA,$SG,$SI,$SL,$SV,$SM,$SF,$SW,$SP,$SC,$SS,$ST,$SY,$SN,$SQ,$SH,$SK,$SR,$SD,$SE);
	my (@arr,@arr0,@arr1,@arr2,@arr3,@arr4,@arr5,@arr6,@arr7,@arr8,@arr9,@arr10,@frequency_codonbias,$mu,$cu,@max_count,@pos);
	#-------------------------------------------OPENING OF INPUT AND OUTPUT FILE---------------------------------------------------------------------
	open(Q,"+>$output");open(R,"$input")||die "\n\t*** FILE IS NOT FOUND.TRY AGAIN";
	
#	print "\n\tREADING FROM FILE ..............\n";
	my $no_of_hits_plus_querry=0;
	my @seq;my $total_residues=0;
	my $seq_len;
	my @seqlength_arr;
	$/= ">" ;
	my $junk = <R>;
	#---------------------------------------READING FROM FILE AND OPERATION ON EACH LINE---------------------------------------------------------------
	while(my $line=<R>){
		chomp($line);
		my ($defLine, @seqLines) = split /\n/,$line;
		chomp @seqLines;
		my $sequence = join('',@seqLines);
		$sequence=~s/[\r\n]+//g;
		#print Q "$defLine\n";
		chomp ($sequence); 
		#print Q "Seq Length: ", length($sequence), "\n";
		#print Q "$sequence\n";
		$no_of_hits_plus_querry++;
		$seq_len=length($sequence);
		push @seqlength_arr,$seq_len;
		my $k= $seqlength_arr[0]-$seq_len;
		while($k>0){
			$sequence.="U";$k--;
		}
		for(my $i=1;$i<=$seqlength_arr[0];$i++){
			$seq[$no_of_hits_plus_querry][$i]=substr($sequence,$i-1,1);
		}		
	}
	#-----------------------------Calculation no.of occurance of each residue in total no.of residues---------------------------------------------------

	$A=0;$G=0;$I=0;$L=0;$V=0;$M=0;$F=0;$W=0;$P=0;$C=0;$S=0;$T=0;$Y=0;$N=0;$Q=0;$H=0;$K=0;$R=0;$D=0;$E=0;
	for(my $g=2;$g<=$no_of_hits_plus_querry;$g++){
		for(my $j=1;$j<=$seqlength_arr[0];$j++){
			if($seq[$g][$j] eq "A" || $seq[$g][$j] eq "a") {$A++;}
			if($seq[$g][$j] eq "G" || $seq[$g][$j] eq "g") {$G++;}
			if($seq[$g][$j] eq "I" || $seq[$g][$j] eq "i") {$I++;}
			if($seq[$g][$j] eq "L" || $seq[$g][$j] eq "l") {$L++;}
			if($seq[$g][$j] eq "V" || $seq[$g][$j] eq "v") {$V++;}
			if($seq[$g][$j] eq "M" || $seq[$g][$j] eq "m") {$M++;}
			if($seq[$g][$j] eq "F" || $seq[$g][$j] eq "f") {$F++;}
			if($seq[$g][$j] eq "W" || $seq[$g][$j] eq "w") {$W++;}
			if($seq[$g][$j] eq "P" || $seq[$g][$j] eq "p") {$P++;}
			if($seq[$g][$j] eq "C" || $seq[$g][$j] eq "c") {$C++;}
			if($seq[$g][$j] eq "S" || $seq[$g][$j] eq "s") {$S++;}
			if($seq[$g][$j] eq "T" || $seq[$g][$j] eq "t") {$T++;}
			if($seq[$g][$j] eq "Y" || $seq[$g][$j] eq "y") {$Y++;}
			if($seq[$g][$j] eq "N" || $seq[$g][$j] eq "n") {$N++;}
			if($seq[$g][$j] eq "Q" || $seq[$g][$j] eq "q") {$Q++;}
			if($seq[$g][$j] eq "H" || $seq[$g][$j] eq "h") {$H++;}
			if($seq[$g][$j] eq "K" || $seq[$g][$j] eq "k") {$K++;}
			if($seq[$g][$j] eq "R" || $seq[$g][$j] eq "r") {$R++;}
			if($seq[$g][$j] eq "D" || $seq[$g][$j] eq "d") {$D++;}
			if($seq[$g][$j] eq "E" || $seq[$g][$j] eq "e") {$E++;}
			if($seq[$g][$j] eq "U" || $seq[$g][$j] eq "u") {$U++;}
		}
		
	}
	push (@arr,"A","G","I","L","V","M","F","W","P","C","S","T","Y","N","Q","H","K","R","D","E");	
	push (@arr1,$A,$G,$I,$L,$V,$M,$F,$W,$P,$C,$S,$T,$Y,$N,$Q,$H,$K,$R,$D,$E);
	push (@arr2,$A,$G,$I,$L,$V,$M,$F,$W,$P,$C,$S,$T,$Y,$N,$Q,$H,$K,$R,$D,$E);

	
	#----------------------------no_of_hits_plus_querrying total no.of residues in hits----------------------------------------------------------------
	for(my $i=0;$i<20;$i++){
		$total_residues+=$arr1[$i];
	}
	print "\n\n\t\tTotal residues present\t---------------------- $total_residues";
	
	for(my $i=0;$i<=19;$i++){
		if($arr1[$i]==0){$arr1[$i]=0.5;$arr2[$i]=0.5;}
	}
	#-------------------------------------- Probability of expected by chance 'Pc' of match and mismatch of 400 residues----------------
	for(my $i=0;$i<=19;$i++){
		for(my $j=0;$j<=19;$j++){
			push @{$arr0[$i]},$arr1[$i]/$total_residues * $arr2[$j]/$total_residues;
		}
		
	}
	#----------------------------------------- SIMILARITY MATRIX for pseudocount calculation(with respect to codon bias) -------------------
		@frequency_codonbias = (
[1.00000000,0.41666666,0.08333333,0.08333333,0.41666666,0.08333333,0.08333333,0.08333333,0.41666666,0.08333333,0.41666666,0.41666666,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.41666666,0.41666666],
[0.41666666,1.00000000,0.08333333,0.08333333,0.41666666,0.08333333,0.08333333,0.41666666,0.08333333,0.41666666,0.19444444,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.41666666,0.41666666,0.41666666],
[0.08333333,0.08333333,1.00000000,0.40740740,0.41666666,0.66666666,0.44444444,0.22222222,0.08333333,0.11111111,0.20370370,0.41666666,0.11111111,0.44444444,0.05555555,0.11111111,0.38888888,0.18511851,0.11111111,0.05555555],
[0.08333333,0.08333333,0.40740740,1.00000000,0.41666666,0.44444444,0.50000000,0.22222222,0.30555555,0.16666666,0.14811481,0.08333333,0.16666666,0.05555555,0.33333333,0.27777777,0.11111111,0.24074074,0.05555555,0.11111111],
[0.41666666,0.41666666,0.41666666,0.41666666,1.00000000,0.41666666,0.41666666,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.08333333,0.41666666,0.41666666],
[0.08333333,0.08333333,0.66666666,0.44444444,0.41666666,1.00000000,0.33333333,0.33333333,0.08333333,0.22222222,0.16666666,0.41666666,0.05555555,0.33333333,0.16666666,0.07407407,0.50000000,0.22222222,0.11111111,0.16666666],
[0.08333333,0.08333333,0.44444444,0.50000000,0.41666666,0.33333333,1.00000000,0.33333333,0.08333333,0.50000000,0.33333333,0.08333333,0.50000000,0.16666666,0.11111111,0.16666666,0.11111111,0.05555555,0.16666666,0.11111111],
[0.08333333,0.41666666,0.22222222,0.22222222,0.08333333,0.33333333,0.33333333,1.00000000,0.08333333,0.66666666,0.38888888,0.08333333,0.33333333,0.11111111,0.16666666,0.11111111,0.16666666,0.44444444,0.11111111,0.16666666],
[0.41666666,0.08333333,0.08333333,0.30555555,0.08333333,0.08333333,0.08333333,0.08333333,1.00000000,0.08333333,0.30555555,0.41666666,0.08333333,0.08333333,0.41666666,0.41666666,0.08333333,0.30555555,0.08333333,0.08333333],
[0.08333333,0.41666666,0.11111111,0.16666666,0.08333333,0.22222222,0.50000000,0.66666666,0.08333333,1.00000000,0.44444444,0.08333333,0.50000000,0.16666666,0.11111111,0.16666666,0.11111111,0.38888888,0.16666666,0.11111111],
[0.41666666,0.19444444,0.20370370,0.14811481,0.08333333,0.16666666,0.33333333,0.38888888,0.30555555,0.44444444,1.00000000,0.41666666,0.33333333,0.22222222,0.05555555,0.05555555,0.05555555,0.22222222,0.11111111,0.05555555],
[0.41666666,0.08333333,0.41666666,0.08333333,0.08333333,0.41666666,0.08333333,0.08333333,0.41666666,0.08333333,0.41666666,1.00000000,0.08333333,0.41666666,0.08333333,0.08333333,0.41666666,0.19444444,0.08333333,0.08333333],
[0.08333333,0.08333333,0.11111111,0.16666666,0.08333333,0.05555555,0.50000000,0.33333333,0.08333333,0.50000000,0.33333333,0.08333333,1.00000000,0.50000000,0.33333333,0.50000000,0.33333333,0.05555555,0.50000000,0.33333333],
[0.08333333,0.08333333,0.44444444,0.05555555,0.08333333,0.33333333,0.16666666,0.11111111,0.08333333,0.16666666,0.22222222,0.41666666,0.50000000,1.00000000,0.33333333,0.50000000,0.66666666,0.16666666,0.50000000,0.33333333],
[0.08333333,0.08333333,0.05555555,0.33333333,0.08333333,0.16666666,0.11111111,0.16666666,0.41666666,0.11111111,0.05555555,0.08333333,0.33333333,0.33333333,1.00000000,0.66666666,0.50000000,0.33333333,0.33333333,0.50000000],
[0.08333333,0.08333333,0.11111111,0.27777777,0.08333333,0.07407407,0.16666666,0.11111111,0.41666666,0.16666666,0.05555555,0.08333333,0.50000000,0.50000000,0.66666666,1.00000000,0.33333333,0.27777777,0.50000000,0.33333333],
[0.08333333,0.08333333,0.38888888,0.11111111,0.08333333,0.50000000,0.11111111,0.16666666,0.08333333,0.11111111,0.05555555,0.41666666,0.33333333,0.66666666,0.50000000,0.33333333,1.00000000,0.22222222,0.33333333,0.50000000],
[0.08333333,0.41666666,0.18511851,0.24074074,0.08333333,0.22222222,0.05555555,0.44444444,0.30555555,0.38888888,0.22222222,0.19444444,0.05555555,0.16666666,0.33333333,0.27777777,0.22222222,1.00000000,0.05555555,0.11111111],
[0.41666666,0.41666666,0.11111111,0.05555555,0.41666666,0.11111111,0.16666666,0.11111111,0.08333333,0.16666666,0.11111111,0.08333333,0.50000000,0.50000000,0.33333333,0.50000000,0.33333333,0.05555555,1.00000000,0.66666666],
[0.41666666,0.41666666,0.05555555,0.11111111,0.41666666,0.16666666,0.11111111,0.16666666,0.08333333,0.11111111,0.05555555,0.08333333,0.33333333,0.33333333,0.50000000,0.33333333,0.50000000,0.11111111,0.66666666,1.00000000]);


	for (my $i=0;$i<20;$i++){		
		for(my $j=0;$j<20;$j++){
			$arr9[$i][$j]=3*(1-$frequency_codonbias[$i][$j]);
		}
	}
	for (my $i=0;$i<20;$i++){		
		for(my $j=0;$j<20;$j++){
			$arr10[$i][$j]=0.03**$arr9[$i][$j];
		}
	}
		

	print "\n\t\tLength of the query sequence\t-------------- $seqlength_arr[0]";
	print "\n\t\tNo.of hits including query sequence ---------- $no_of_hits_plus_querry\n";
	for(my $g=1;$g<=$seqlength_arr[0];$g++){
		$PA=0;$PG=0;$PI=0;$PL=0;$PV=0;$PM=0;$PF=0;$PW=0;$PP=0;$PC=0;$PS=0;$PT=0;$PY=0;$PN=0;$PQ=0;$PH=0;$PK=0;$PR=0;$PD=0;$PE=0;
		for(my $j=2;$j<=$no_of_hits_plus_querry;$j++){
			if($seq[$j][$g] eq "A" || $seq[$j][$g] eq "a") {$PA++;}
			if($seq[$j][$g] eq "G" || $seq[$j][$g] eq "g") {$PG++;} 
			if($seq[$j][$g] eq "I" || $seq[$j][$g] eq "i") {$PI++;} 
			if($seq[$j][$g] eq "L" || $seq[$j][$g] eq "l") {$PL++;} 
			if($seq[$j][$g] eq "V" || $seq[$j][$g] eq "v") {$PV++;} 
			if($seq[$j][$g] eq "M" || $seq[$j][$g] eq "m") {$PM++;}
			if($seq[$j][$g] eq "F" || $seq[$j][$g] eq "f") {$PF++;} 
			if($seq[$j][$g] eq "W" || $seq[$j][$g] eq "w") {$PW++;} 
			if($seq[$j][$g] eq "P" || $seq[$j][$g] eq "p") {$PP++;} 
			if($seq[$j][$g] eq "C" || $seq[$j][$g] eq "c") {$PC++;} 
			if($seq[$j][$g] eq "S" || $seq[$j][$g] eq "s") {$PS++;} 
			if($seq[$j][$g] eq "T" || $seq[$j][$g] eq "t") {$PT++;} 
			if($seq[$j][$g] eq "Y" || $seq[$j][$g] eq "y") {$PY++;} 
			if($seq[$j][$g] eq "N" || $seq[$j][$g] eq "n") {$PN++;} 
			if($seq[$j][$g] eq "Q" || $seq[$j][$g] eq "q") {$PQ++;} 
			if($seq[$j][$g] eq "H" || $seq[$j][$g] eq "h") {$PH++;} 
			if($seq[$j][$g] eq "K" || $seq[$j][$g] eq "k") {$PK++;} 
			if($seq[$j][$g] eq "R" || $seq[$j][$g] eq "r") {$PR++;} 
			if($seq[$j][$g] eq "D" || $seq[$j][$g] eq "d") {$PD++;} 
			if($seq[$j][$g] eq "E" || $seq[$j][$g] eq "e") {$PE++;}
		}
	push @{$arr4[$g]},$PA,$PG,$PI,$PL,$PV,$PM,$PF,$PW,$PP,$PC,$PS,$PT,$PY,$PN,$PQ,$PH,$PK,$PR,$PD,$PE;
	}
	for (my $g=1;$g<=$seqlength_arr[0];$g++){
		my $max=0;my $position=0;
		for (my $i=0;$i<20;$i++){
			if($max<=${$arr4[$g]}[$i]){
				$max=${$arr4[$g]}[$i];
				$position=$i
			}
		
		}
		
		push @max_count,$max;
		push @pos,$position;
	}
	#------------------------ Calculation of Pseudocount Probability 'Pb' expected due to position bias ---------------------------------------------------------
	for (my $g=1;$g<=$seqlength_arr[0];$g++){
		my $h = $pos[$g-1];
		for(my $i=0;$i<20;$i++){
			push @{$arr7[$g]},$arr10[$h][$i] * ($max_count[$g-1]/($no_of_hits_plus_querry-1));
		}
	}
	#------------------------ Calculation of Actual Probability 'Pa' expected due to position bias ---------------------------------------------------------

	for (my $g=1;$g<=$seqlength_arr[0];$g++){
		for (my $h=0;$h<20;$h++){
			push @{$arr5[$g]},${$arr4[$g]}[$h]/($no_of_hits_plus_querry-1);
		}
	}

	#------------------------ Mean of Pseudocount and Actualcount due to position bias --------------------------------------------------------
	for (my $g=1;$g<=$seqlength_arr[0];$g++){
		for (my $h=0;$h<20;$h++){
			push @{$arr8[$g]},(0.2*${$arr7[$g]}[$h]+0.8*${$arr5[$g]}[$h]);		
			
		}
	}
	#-----------------------  Calculation of Scores 'S=2*ln(Pb/Pc)' for both match and  mismatch ---------------------------------------------------------	

	for (my $i=1;$i<=$seqlength_arr[0];$i++){
		for (my $j=0;$j<20;$j++){
			if ($seq[1][$i] eq $arr[$j]){
				for(my $k=0;$k<20;$k++){
					my $temp = 2*(log (${$arr8[$i]}[$k]/${$arr0[$j]}[$k]));
					$temp=sprintf("%5.2f",$temp);
					push @{$arr6[$i]},$temp;
				}
			}
		}
	}
	for(my $i=0;$i<20;$i++){ my $temp = $arr[$i]; $temp = sprintf("%3s",$temp); print Q "\t$temp";}print Q "\n";
	for (my $g=1;$g<=$seqlength_arr[0];$g++){
		print Q "$seq[1][$g]";
		for (my $h=0;$h<20;$h++){
			print Q "\t${$arr6[$g]}[$h]";
		}
		print Q "\n";
	}
	
	my $end_time    = time;
	my $difference  = $end_time - $start_time;
	print "\n\n  OUTPUT PSSM FILE '$output' IS GENERATED SUCCESSFULLY ...\n\n" ;
	my $filesize = (-s "$output")/1024;
	if ($filesize>1024){$filesize=$filesize/1024;print "  File size = $filesize mb ...";}
	else {print "  FILE SIZE = $filesize kb ...";}
	print "  TIME TAKEN = $difference sec\n\n\n";	
	close(R);
	close(Q);
	print"*******************************************************************************************\n\n";
 }
#_END_
system("pause");