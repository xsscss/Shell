{
split($3,data,"-");
if(data[2]=="01"){
name[$1]+=$5};
if($2=="0")
{role[$1]="manager"}
else{
role[$1]="worker"}
}
END{
for(i in name)
{print i "\t" role[i] "\t" name[i]}
}

