This document is comprehensive, and subdivided according to the path in 
which files are found. 
Files are provided in several directories and subdirectories. 

I.     ACTIN   directory
II.    ALBUMIN directory
III.   INSULIN directory

===========================================================================
I.     Files in the ACTIN directory
===========================================================================
This directory contains the experimental output files for stability
analysis experiment(refer manuscript) of the proposed chPSSM algorithm.
All the files are downloaded from BLASTp results page and selecting
different number of hits and "NP_001092.1" human actin sequence as query.

---------------------------------------------------------------------------
1. actin_10.txt
---------------------------------------------------------------------------
This file contains 10 aligned sequences corresponding to human actin as query.
---------------------------------------------------------------------------
2. actin_50.txt
---------------------------------------------------------------------------
This file contains 50 aligned sequences corresponding to human actin as query.
---------------------------------------------------------------------------
3. actin_100.txt
---------------------------------------------------------------------------
This file contains 100 aligned sequences corresponding to human actin as query.
---------------------------------------------------------------------------
4. actin_250.txt
---------------------------------------------------------------------------
This file contains 250 aligned sequences corresponding to human actin as query.
---------------------------------------------------------------------------
5. actin_500.txt
---------------------------------------------------------------------------
This file contains 500 aligned sequences corresponding to human actin as query.
---------------------------------------------------------------------------
6. actin_10.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human actin sequence
(NP_001092.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'actin_10.txt' as the input file.
---------------------------------------------------------------------------
7. actin_50.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human actin sequence
(NP_001092.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'actin_50.txt' as the input file.
---------------------------------------------------------------------------
8. actin_100.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human actin sequence
(NP_001092.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'actin_100.txt' as the input file.
---------------------------------------------------------------------------
9. actin_250.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human actin sequence
(NP_001092.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'actin_250.txt' as the input file.
---------------------------------------------------------------------------
10. actin_500.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human actin sequence
(NP_001092.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'actin_500.txt' as the input file.
---------------------------------------------------------------------------
11. actin.txt
---------------------------------------------------------------------------
This file is download from BLASTp results page taking NP_001092.1 as query
and NP_001126826.1 as aligned sequence.The scores based on different hits
(10,50,100,250,500) are all calculated for this alignment set.
It is the input file for 'AlignedSeqExtract.pl' program.
---------------------------------------------------------------------------
12. actin.query
---------------------------------------------------------------------------
This is the output file of 'AlignedSeqExtract.pl' program and is required
by 'ScoreCalc.pl' to calculate the alignment score. This file contains the
aligned query.
---------------------------------------------------------------------------
13. actin.align
---------------------------------------------------------------------------
This is the output file of 'AlignedSeqExtract.pl' program and is required
by 'ScoreCalc.pl' to calculate the alignment score.This file contains the 
aligned sequences.
---------------------------------------------------------------------------
14. actin_10.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to actin_10.pssm matrix.
---------------------------------------------------------------------------
15. actin_50.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to actin_50.pssm matrix.
---------------------------------------------------------------------------
16. actin_100.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to actin_100.pssm matrix.
---------------------------------------------------------------------------
17. actin_250.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to actin_250.pssm matrix.
---------------------------------------------------------------------------
18. actin_500.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to actin_500.pssm matrix.
===========================================================================
II.     Files in the ALBUMIN directory
===========================================================================
This directory contains the experimental output files for stability
analysis experiment(refer manuscript) of the proposed chPSSM algorithm.
All the files are downloaded from BLASTp results page and selecting
different number of hits and "AAA98797.1" human albumin sequence as query.

---------------------------------------------------------------------------
1. albumin_10.txt
---------------------------------------------------------------------------
This file contains 10 aligned sequences corresponding to human albumin as query.
---------------------------------------------------------------------------
2. albumin_50.txt
---------------------------------------------------------------------------
This file contains 50 aligned sequences corresponding to human albumin as query.
---------------------------------------------------------------------------
3. albumin_100.txt
---------------------------------------------------------------------------
This file contains 100 aligned sequences corresponding to human albumin as query.
---------------------------------------------------------------------------
4. albumin_250.txt
---------------------------------------------------------------------------
This file contains 250 aligned sequences corresponding to human albumin as query.
---------------------------------------------------------------------------
5. albumin_500.txt
---------------------------------------------------------------------------
This file contains 500 aligned sequences corresponding to human albumin as query.
---------------------------------------------------------------------------
6. albumin_10.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human albumin sequence
(AAA98797.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'albumin_10.txt' as the input file.
---------------------------------------------------------------------------
7. albumin_50.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human albumin sequence
(AAA98797.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'albumin_50.txt' as the input file.
---------------------------------------------------------------------------
8. albumin_100.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human albumin sequence
(AAA98797.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'albumin_100.txt' as the input file.
---------------------------------------------------------------------------
9. albumin_250.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human albumin sequence
(AAA98797.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'albumin_250.txt' as the input file.
---------------------------------------------------------------------------
10. albumin_500.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human albumin sequence
(AAA98797.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'albumin_500.txt' as the input file.
---------------------------------------------------------------------------
11. albumin.txt
---------------------------------------------------------------------------
This file is download from BLASTp results page taking AAA98797.1 as query
and  XP_008051122.1 as aligned sequence.The scores based on different hits
(10,50,100,250,500) are all calculated for this alignment set.
It is the input file for 'AlignedSeqExtract.pl' program.
---------------------------------------------------------------------------
12. albumin.query
---------------------------------------------------------------------------
This is the output file of 'AlignedSeqExtract.pl' program and is required
by 'ScoreCalc.pl' to calculate the alignment score. This file contains the
aligned query.
---------------------------------------------------------------------------
13. albumin.align
---------------------------------------------------------------------------
This is the output file of 'AlignedSeqExtract.pl' program and is required
by 'ScoreCalc.pl' to calculate the alignment score.This file contains the 
aligned sequences.
---------------------------------------------------------------------------
14. albumin_10.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to albumin_10.pssm matrix.
---------------------------------------------------------------------------
15. albumin_50.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to albumin_50.pssm matrix.
---------------------------------------------------------------------------
16. albumin_100.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to albumin_100.pssm matrix.
---------------------------------------------------------------------------
17. albumin_250.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to albumin_250.pssm matrix.
---------------------------------------------------------------------------
18. albumin_500.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to albumin_500.pssm matrix.
===========================================================================
III.     Files in the INSULIN directory
===========================================================================
This directory contains the experimental output files for stability
analysis experiment(refer manuscript) of the proposed chPSSM algorithm.
All the files are downloaded from BLASTp results page and selecting
different number of hits and "ABI63346.1" human insulin sequence as query.

---------------------------------------------------------------------------
1. insulin_10.txt
---------------------------------------------------------------------------
This file contains 10 aligned sequences corresponding to human insulin as query.
---------------------------------------------------------------------------
2. insulin_50.txt
---------------------------------------------------------------------------
This file contains 50 aligned sequences corresponding to human insulin as query.
---------------------------------------------------------------------------
3. insulin_100.txt
---------------------------------------------------------------------------
This file contains 100 aligned sequences corresponding to human insulin as query.
---------------------------------------------------------------------------
4. insulin_250.txt
---------------------------------------------------------------------------
This file contains 250 aligned sequences corresponding to human insulin as query.
---------------------------------------------------------------------------
5. insulin_500.txt
---------------------------------------------------------------------------
This file contains 500 aligned sequences corresponding to human insulin as query.
---------------------------------------------------------------------------
6. insulin_10.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human insulin sequence
(ABI63346.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'insulin_10.txt' as the input file.
---------------------------------------------------------------------------
7. insulin_50.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human insulin sequence
(ABI63346.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'insulin_50.txt' as the input file.
---------------------------------------------------------------------------
8. insulin_100.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human insulin sequence
(ABI63346.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'insulin_100.txt' as the input file.
---------------------------------------------------------------------------
9. insulin_250.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human insulin sequence
(ABI63346.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'insulin_250.txt' as the input file.
---------------------------------------------------------------------------
10. insulin_500.pssm
---------------------------------------------------------------------------
This file is a chPSSM matrix file corresponding to human insulin sequence
(ABI63346.1) as the query. This file is genrerated by runing 'chPSSM.pl'
program taking 'insulin_500.txt' as the input file.
---------------------------------------------------------------------------
11. insulin.txt
---------------------------------------------------------------------------
This file is download from BLASTp results page taking ABI63346.1 as query
and XP_008967348.1 as aligned sequence.The scores based on different hits
(10,50,100,250,500) are all calculated for this alignment set.
It is the input file for 'AlignedSeqExtract.pl' program.
---------------------------------------------------------------------------
12. insulin.query
---------------------------------------------------------------------------
This is the output file of 'AlignedSeqExtract.pl' program and is required
by 'ScoreCalc.pl' to calculate the alignment score. This file contains the
aligned query.
---------------------------------------------------------------------------
13. insulin.align
---------------------------------------------------------------------------
This is the output file of 'AlignedSeqExtract.pl' program and is required
by 'ScoreCalc.pl' to calculate the alignment score.This file contains the 
aligned sequences.
---------------------------------------------------------------------------
14. insulin_10.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to insulin_10.pssm matrix.
---------------------------------------------------------------------------
15. insulin_50.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to insulin_50.pssm matrix.
---------------------------------------------------------------------------
16. insulin_100.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to insulin_100.pssm matrix.
---------------------------------------------------------------------------
17. insulin_250.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to insulin_250.pssm matrix.
---------------------------------------------------------------------------
18. insulin_500.out
---------------------------------------------------------------------------
Aligment score (.out) file corresponding to insulin_500.pssm matrix.




xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
For any suggestions and queries contact here : shuvam.banerjee89@gmail.com

The users are requested to give proper citation if this tool is found to be
useful for their research purposes.