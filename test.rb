def peak_picks(arr)
temp={"pos"=>[],"peaks"=>[]}
  for i in (1..(arr.length-2)).to_a
    if arr[i]>arr[i-1]  and arr[i]>arr[i+1]
      temp["peaks"]<<arr[i];temp["pos"]<<i
    end
    if arr[i]>arr[i-1] and arr[i]==arr[i+1] and arr[i]>(arr[i+1..-1].uniq.length>1 ? arr[i+1..-1].uniq[1] : arr[0])
      temp["peaks"]<<arr[i]
      temp["pos"]<<i 
    end
  end 
  return temp
end 
  
peak_picks([3,2,3,6,4,1,2,3,2,1,2,2,2,1])