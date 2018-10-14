#! /usr/bin/awk -f

BEGIN{
  FS=" "
}
{
  for(i=1;i<=NR;i++){
    array[NR,i]=$i
  }
}
END{
  for(i=NR-1;i>0;i--){
    for(j=1;j<=NR;j++){
      if(array[i+1,j]>array[i+1,j+1]){
        array[i,j]=array[i,j]+array[i+1,j]
      }
      else{
        array[i,j]=array[i,j]+array[i+1,j+1]
      }
    }
  }
  print array[1,1]
}
