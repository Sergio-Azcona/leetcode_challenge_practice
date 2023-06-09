# 1. Two Sum
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.
# https://leetcode.com/problems/two-sum/

class TwoSum
  # def self.two_sum(nums, target)
    # return [0,1] if nums.count == 2

    # collect = []
    # indexes = []

    # # rev_nums = nums.reverse
    # # rev_nums.pop
    # # sorted = nums.sort
    # #take first element and add it to the other elements in the array (cycle)
    # #take the second element and add it to the remaining elements (not the first)., then thrid

    # # sorted.map do |num|
    # #   until num + sorted[num.next] == target
    # #     require 'pry';binding.pry
    # #     collect.push(num)
    # #     collect.push(sorted[num.next])

    #   # elsif
        
    #   # require 'pry';binding.pry
    #   # end
    # # end



    # #what nums added together == target
    #   #num[0] + iterate
    #   #num[1] 
    # # nums.each do |num, i|
    # #   require 'pry';binding.pry
    # #   # unless  nums[i.next] == nil
    # #     #numbers are consequitive
    # #     if num + nums[num.next] == target 
    # #       # rev_nums.map do |rn|
    # #       indexes.push(i)
    # #       indexes.push(nums[i.next])
    # #     end
    # #   # end
    # # end

    # nums.combination(2).find do |a, b| #find to return FIRST two that eq target and stop calculating 
    #   if a + b == target
    #     collect.push(a)
    #     collect.push(b)
    #   end
    # end
    # # require 'pry';binding.pry
    #       #numbers are not consequtive 
    #       # if nums.include?(target/num)
    #       #   x = target/num


    #       # nums.each do |n|
    #       #   require 'pry';binding.pry
    #       #     num + n == target
    #       #     # collect << n
    #       #     # collect  
    #       #   end
    #         # require 'pry';binding.pry
    #       #   num + rev_nums[i] == target 
    #       #   indexes.push(i)
    #       #   collect.push(rev_nums)

    #       # unless indexes.include?(i) 
    #         # if num + nums[i.next] == target && indexes.include?(i)
    #           # collect.push(num)
    #           # collect.push(rn)
    #           # indexes.push(i)
    #         # end
    #         # require 'pry';binding.pry
    #       # end
    #   #   end
    #   # end
      
    #   # end
    #   # if collect.uniq == true
    #   collect.uniq!
    #   indexes << nums.find_index(collect.first)
    #     # require 'pry';binding.pry
    #   unless collect.count == 1
    #     indexes << nums.index(collect.last) 
    #   else
    #     nums.each_with_index do |n, i|
    #     # require 'pry';binding.pry
    #       unless indexes.include?(i)
    #         indexes << i if collect.include?(n)
    #       end
    #     end
    #   end

    
  
    #   # else 
    #   # require 'pry';binding.pry
    #   #     require 'pry';binding.pry

    #     # nums.index(collect.first)

    #     # indexes.include?(nums.index(collect.first))
      
    #   # end 
    # indexes
      
    #   # require 'pry';binding.pry      

    #   # end
    #   # indexes
  # end

  def self.two_sum(nums, target)
    # Runtime 92 ms Beats 56.35%
    # Memory 212.5 MB Beats 10.70%
    
    #if there are only two elements in nums, return the index position
    #only 1 solution in nums (don't care about dublicates)

    #hash with number => indiex
    ## hash power is ability to quickly look up info
    #if key_1 + key_2 = target, return value_1 and value_2

    #do math calculation first; look for a specific goal by subtracting the target from an instance

    nums_hash = Hash.new 
  
    #create hash with any number (k) and index(v)
    nums.each_with_index do |n, i|
      # if target >= n #gotta store neg numbers in case we're looking for a neg number
        nums_hash[n] = i
      # end
    end

    nums.each_with_index do |n, i| 
      # if target >= n 
      goal = target - n
      # require 'pry';binding.pry
        if nums_hash.key?(goal)  && nums_hash[goal] != i
          stored_num = nums_hash[goal] 
          return [i, stored_num]
        end
      end
    # end
  
  end
end


test1 = TwoSum.two_sum([55,3,2,4,5,7,11], 6) # [2,3]
test2 = TwoSum.two_sum([2,7,11,15],9) # [0,1]
test3 = TwoSum.two_sum([3,3], 6) # [0,1]
test4 = TwoSum.two_sum([0,3,5,3,9,11,5,4], 10) # [2,6]
test5 = TwoSum.two_sum([3,2,3], 6) # [0,2]
test6 = TwoSum.two_sum([8,3,2,2,4,0,5],7) # [1,4]
test7 = TwoSum.two_sum([8,11,2,2,4,50,5],61) # [1,5]
test8 = TwoSum.two_sum([8,-11,12,2,4,50,5],12) # [0,4]
test9 = TwoSum.two_sum([-3,4,3,90], 0) #[0,2] 
test10 = TwoSum.two_sum([-3,-4,-3,-9],-7) #[0,1]

require 'pry';binding.pry

# Abdul's answer 
# def two_sum(nums, target)
#   answers = Hash.new

#   nums.each_with_index do |num, idx|
#     answers[num] = idx
#   end

#   nums.each_with_index do |num, idx|
#     second_num = target - num

#     if answers[second_num] && answers[second_num] != idx
#       return [idx, answers[second_num]]
#     end
#   end
# end