# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

  def find(id)
    # Your code Here
    return @candidates.select {|candidate| candidate[:id] == id}
  end
  
  def experienced?(candidate)
    # Your code Here
    if (candidate[:years_of_experience] >= 2)
      return true
    end
    return false;
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    return candidates.select {|candidate| 
    experienced?(candidate) && 
    candidate[:github_points] >= 100 && 
    candidate[:date_applied] >= 15.day.ago.to_date &&
    candidate[:age] > 17 && 
    ((candidate[:languages].include? "Ruby") || (candidate[:languages].include? "Python")) 
    }
  end
  
  # More methods will go below