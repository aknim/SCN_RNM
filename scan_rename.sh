# It renames the scaned files, by inserting total count in the file name.
# eg: page1.jpg -> page1by7.jpg
# Having the number of files at end is important, as then only one can be sure, if all files are present

# USAGE
# <this_script> <directory>
dir=$1;
suff_len=4; #".jpg" ".pdf"
#echo a${dir}b;

num_of_files=`ls ${dir} | wc -l`;
insertion="by${num_of_files}";
for i in ${dir}/*;
do 
echo ${i};
prefix=${i:0:-${suff_len}};
suffix=${i:${#i}-${suff_len}};
echo ${prefix};
new_name=${prefix}${insertion}${suffix};
echo ${new_name};
done;
