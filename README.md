It renames the scaned files, by inserting total count in the file name.
eg: page1.jpg -> page1by7.jpg [if there are 7 files]

ASSUMPTION:
The directory given as input have all files of the type: <name><pg-num>.<extension> and all belong to the same document. Output: <name><pg-num>'by'<num-pgs>.<extension>

Having the number of files at end is important, as then only one can be sure, if all files are present

 USAGE
<script> <directory>

