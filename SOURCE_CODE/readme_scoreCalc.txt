This file shows the steps for calculating the scores for aligned sequences
using chPSSM matrix.

Check the following details while preparing .query and .align files :
		
		*  Provide 'm' number of spaces at the start of the aligned sequence
		   if the aligned sequence starts after 'm' residues of query sequence.
	   
		*  Write 'N' at the start of the query sequence if the query starts
		   after N residues of the aligned sequence.

		*   The query with which the alignment score has to calculated must be
			the same query sequence with which chPSSM matrix has been generated.
			If query sequence in '.query' file and '.pssm' file differs, wrong
			result will be produced.
		
		*	The .query and .align files must contain fasta formatted sequences.
		    The fasta line must be like such that the word after first occurence
			of '|' symbol will be considered by 'ScoreCalc.pl' program as the
			unique id.
			Example: 
					
					>ref|NP_001092.1| actin, cytoplasmic 1 [Homo sapiens]
			
			Here,first occurence of '|' symbol is after the term 'ref'.The first
			term after '|' is 'NP_001092.1'. Thus,the program will consider this
			'NP_001092.1' id as the unique id of the query/aligned sequence.


Syntax for runing this program:

		perl ScoreCalc.pl

Input files required:
		
		a. '.query' file  : A query file (file extension '.query') has to
                    		be provided.
		b. '.align' file  : A file (file extension '.align') containing
                            corresponding aligned sequences has to be
							provided.
		c. '.pssm' file   : The chPSSM matrix file generated for the same
                      		query using above mentioned 'chPSSM.pl' program.

Output file generated:

        a.   '.out' file  : An output file containing the identity percentage,
		                    match,mismatch,gaps and aligned sequence ids is
							generated.
							
							
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
For any suggestions and queries contact here : shuvam.banerjee89@gmail.com

The users are requested to give proper citation if this tool is found to be
useful for their research purposes.