The file provides instructions for succesful run of AlignedSeqExtract.pl
program. This program can be utilized to generate .query and .align files
which are required for the score calculation process using chPSSM matrix
data.
Input file required:

		1.  '.txt' file downloaded from BLASTp results page.
	
Syntax to run 'AlignedSeqExtract.pl' :
		
		               perl AlignedSeqExtract.pl

Detailed instructions to download the required input file from BLASTp results
page is provided below:

		
	1.  Select the query in Fasta format.(eg: Human Albumin[AGI02589.1]
        protein sequence from NCBI protein database)

	2.  Run Blastp between the query sequence and a database of your choice.
	    We encourage to use non-redundant protein sequence database (nrDatabase).

	3.  In the Blastp result page, select the no of hits (hits referred
	    to as the number of ungapped aligned sequences). Then Click on
		"Text"  button under "download" option on the top left corner of
		"Description" window. An alignment file (unique_id-alignment.txt)
		will be generated containing the alignment between the subject and
		the query. This file is the required "INPUT FILE" for generation of
		.query and .align files.

Note: 
Check before selection of the hits that whether the alignment between the query
and the aligned sequence is over a single segment or the aligned sequence has
multiple aligned segments at different regions with the same query.
The current scope of the  'AlignedSeqExtract.pl' program does not take into
account this type of cases thereby generating erroneous results in the output
files(.query and .align).So, user has to manually check the alignments (whether
more than one alignment is provide for same aligned sequence id or not) and
should not select those type of sequences.


xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
For any suggestions and queries contact here : shuvam.banerjee89@gmail.com

The users are requested to give proper citation if this tool is found to be
useful for their research purposes. 