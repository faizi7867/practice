
def nexus users
  minimum = (users.first[0] - users.first[1]).abs
  key = users.first[0]
  
  users.each do |user|
    diff = (user[0] - user[1]).abs
    if ( diff == minimum )
      if( user[0] <= key )
        key = user[0]
      end
    elsif ( diff < minimum )
      key = user[0]
      minimum = diff
    end
  end
  
  print key
end
users = {1 => 4, 4 => 3, 5 => 1}
nexus(users)