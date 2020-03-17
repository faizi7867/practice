def pick_peaks(arr)
  temp = {"pos"=>[],"peaks" => []}

  arr1 = arr.join.squeeze.split(//).map{ |arr| arr.to_i }
  for i in (1...arr1.length-1)
        if arr1[i] > arr1[i-1] && arr1[i] > arr1[i+1]
            temp["pos"]<< i
            temp["peaks"] << arr[i]
        end 
  end
  print temp



end
pick_peaks([1,2,3,6,4,1,2,3,2,1])
# pick_peaks([1, 2, 2, 2, 1])