#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;
use POSIX;
print " ::::::   =============================================================  :::::\n";
print " ::::::   CALCULATING SCORES OF ALIGNED SEQUENCES WITH GENERATED chPSSM  :::::\n";
print " ::::::   =============================================================  :::::\n\n";
print " ::::::           Shuvam Banerjee             Arnav Garai                :::::\n\n";
print " ::::::               Dr. Gautam Garai's lab                             :::::\n\n";
print " ::::::             Computational Sciences Division,SINP                 :::::\n\n";
print " :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n";
print"\n  ENTER THE QUERY FILE '.query' FILENAME                 : ";
chomp(my $file1=<STDIN>);
open(R,"$file1")||die "\n\t*** FILE IS NOT FOUND.TRY AGAIN";

print"\n  ENTER THE ALIGNED SEQUENCES FILE '.align' FILENAME     : ";
chomp(my $file2=<STDIN>);
open(S,"$file2")|| die "\n\t*** FILE IS NOT FOUND.TRY AGAIN";

print"\n  ENTER The INPUT '.pssm' FILENAME                       : ";
chomp(my $file3=<STDIN>);
open(T,"$file3")||die "\n\t*** FILE IS NOT FOUND.TRY AGAIN";

print"\n  ENTER The OUTPUT '.out' FILENAME                       : ";
chomp(my $file4=<STDIN>);
open(Q,"+>$file4");

print"\n\n  --------- ENTER THE GAP COSTS DETAILS ---------------";
print"\n\n  ENTER GAP EXISTANCE VALUE	[default:11]             : ";
chomp(my $gap_existance=<STDIN>);
print"\n  ENTER GAP EXTENSION VALUE     [default:1]              : ";
chomp(my $gap_extension=<STDIN>);



print "\n  ---------------------------------------------------------------------------\n";
print "\n\n\n  READING FROM FILES '$file1', '$file2', '$file3' ..\n\n\n  CALCULATING SCORES......................\n\n";
my (@query,@query_defn,@querylength_arr,$query_len);
my (@aligned,@aligned_defn,@alignedlength_arr,$aligned_len);
my (@aminoacid,@pssmscore);
push @aminoacid,"A","G","I","L","V","M","F","W","P","C","S","T","Y","N","Q","H","K","R","D","E";

#------------------------------------ OPERATION ON PSSM FILE  -----------------------
my $count1=0;
while(my $line=<T>){
		chomp($line);
		push @{$pssmscore[$count1]},split("\t",$line);
		$count1++;
	}
close (T);
#print "$count1\n";
#print "${$pssmscore[0]}[1]\n";
#print "${$pssmscore[98]}[0]\n";

#------------------------------ OPERATION ON QUERY SEQUENCE FILE -------------------------------

my $query_count=0;
$/= ">" ;
my $junk1 = <R>;
while(my $line=<R>){
	chomp($line);
	my ($defLine, @seqLines) = split /\n/,$line;
	chomp @seqLines;
	my $seq = join('',@seqLines);
	$seq=~s/[\r\n]+//g;
	#print Q "$defLine\n";
	my @query_gi_number =split /\|/, $defLine;
	#print "$query_gi_number[0],$query_gi_number[1],$query_gi_number[2],$query_gi_number[3]\n";
	push @query_defn, $query_gi_number[1];
	chomp ($seq); 
	$query_len=length($seq);
	push @querylength_arr,$query_len;
	for(my $i=0;$i<$query_len;$i++){
		$query[$query_count][$i]=substr($seq,$i,1);
	}
	$query_count++;
}
close(R);
=head
	print Q @querylength_arr;
	#----- Printing of sequences and accession number -----
	for(my $g=0;$g<$query_count;$g++){
		#print Q "$query_defn[$g]\n";
		for(my $i=0;$i<$querylength_arr[$g];$i++){
			print Q "${$query[$g]}[$i]";
		}
		print Q "\n";
	}

=cut
#--------------------------------- OPERATION ON ALIGNED SEQUENCE FILE -------------------------------

my $aligned_count=0;
$/= ">" ;
my $junk2 = <S>;
while(my $line1=<S>){
	chomp($line1);
	my ($defLine, @seqLines) = split /\n/,$line1;
	chomp @seqLines;
	my $seq1 = join('',@seqLines);
	$seq1=~s/[\r\n]+//g;
	#print Q "$defLine\n";
	my @aligned_gi_number =split /\|/, $defLine;
	#print "$gi_number[0],$gi_number[1],$gi_number[2],$gi_number[3]\n";
	push @aligned_defn, $aligned_gi_number[1];
	chomp ($seq1); 
	$aligned_len=length($seq1);
	push @alignedlength_arr,$aligned_len;
	for(my $i=0;$i<$aligned_len;$i++){
		$aligned[$aligned_count][$i]=substr($seq1,$i,1);
	}
	$aligned_count++;
				
}
close(S);
=head
	#print Q @alignedlength_arr;
	#----- Printing of sequences and accession number -----
	for(my $g=0;$g<$aligned_count;$g++){
		print Q "$aligned_defn[$g]\n";
		for(my $i=0;$i<$alignedlength_arr[$g];$i++){
			print Q "${$aligned[$g]}[$i]";
		}
		print Q "\n";
	}
=cut
#------------------------------------- SCORE CALCULATION -------------------------------------
print Q "|=======================================================================================|\n";
print Q "| ALIGNMENT |  ALIGNED SEQ. ACCN. ID |    SCORE | IDENTITY(%) | MATCH | MISMATCH | GAPS |\n";
print Q "|===========|========================|==========|=============|=======|==========|======|\n";
for(my $k=0;$k<$aligned_count;$k++){
	my ($score,$match,$mismatch,$identity,$gaps)=0;
	my $g=0;my $space=0;
	$gaps=0;$mismatch=0;$match=0;
	for(my $i=0;$i<$querylength_arr[$k];$i++){
		for(my $j=0;$j<20;$j++){
			if(${$query[$k]}[$i] eq " " || ${$aligned[$k]}[$i] eq " "){$g=$i+1;}
			if(${$aligned[$k]}[$i] eq $aminoacid[$j] && ${$query[$k]}[$i] ne "-"){
				#print Q "${$pssmscore[$g+1]}[$j+1] $g ${$query[$k]}[$i] $i $aminoacid[$j] $j\n";     # To verify the correctness of gap aligment uncomment this line "$g"
				#print Q "${$pssmscore[$i+1]}[$j+1] $g ${$query[$k]}[$i] $i $aminoacid[$j] $j\n";     # To verify the correctness of no gap aligment uncomment this line "$i"
				$score+=${$pssmscore[$g+1]}[$j+1];						# Score calculation with consideration of gap in query 
				#$score+=${$pssmscore[$i+1]}[$j+1];						# Score calculation without consideration of gap in query
				$g++;
			}		
			
		}
		if($aligned[$k][$i] eq "-" && $aligned[$k][$i-1] ne "-"){
			$score=$score - $gap_existance;
		}
		if($aligned[$k][$i] eq "-" && $aligned[$k][$i-1] eq "-"){
			$score=$score - $gap_extension;
		}
		if($query[$k][$i] eq "-" && $query[$k][$i-1] ne "-"){
			$score=$score - $gap_existance;
		}
		if($query[$k][$i] eq "-" && $query[$k][$i-1] eq "-"){
			$score=$score - $gap_extension;
		}

		if($aligned[$k][$i] eq " " || $query[$k][$i] eq " "){
			$score=$score + 0;$space++;
		}
		if(${$aligned[$k]}[$i] eq ${$query[$k]}[$i]){$match++;} elsif (${$aligned[$k]}[$i] eq "-" || ${$query[$k]}[$i] eq "-"){$gaps++;}elsif(${$query[$k]}[$i] ne " " && ${$aligned[$k]}[$i] ne " "){$mismatch++;}
	}
	#print Q "$querylength_arr[$k]-$space\n";
	$identity=($match/($querylength_arr[$k]-$space))*100;
	
	$score=sprintf("%8.2f",$score);$match=sprintf("%5d",$match);$mismatch=sprintf("%8d",$mismatch);$identity=sprintf("%11.2f",$identity);$gaps=sprintf("%4d",$gaps); my $seq_num = sprintf("%9d",$k+1);
	#my $query_accession_no=$query_defn[$k];$query_accession_no=sprintf("%16s",$query_accession_no);
	my $aligned_accession_no=$aligned_defn[$k];$aligned_accession_no=sprintf("%18s",$aligned_accession_no);
    print Q "| $seq_num | $aligned_accession_no     | $score | $identity | $match | $mismatch | $gaps |\n";
	print Q "|-----------|------------------------|----------|-------------|-------|----------|------|\n";
	#print Q "SEQUENCE = $seq_num    QUERY = $query_accession_no    ALIGNED SEQUENCE = $aligned_accession_no    SCORE = $score   IDENTITY(%) = $identity    MATCH = $match    MISMATCH = $mismatch    GAPS = $gaps\n";
}
print Q "|=======================================================================================|\n";
close(Q);
print "\n\n  SCORES FILE '$file4' GENERATED SUCCESSFULLY...............\n\n";
system("pause");