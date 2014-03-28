# It renames the files of the folder.


# USAGE
# <this_script> <directory> <new_name>
dir=$1;
new_name=$2;
suff_len=4; #".jpg" ".pdf"

num_of_files=`ls ${dir} | wc -l`;
insertion="by${num_of_files}";
counter=1;
for file in ${dir}/*;
do
 suffix=${file:${#file}-${suff_len}};
 full_name=${new_name}${counter}${insertion}${suffix};
 mv "${file}" "${dir}/${full_name}";
 counter=$(($counter+1));
done;
