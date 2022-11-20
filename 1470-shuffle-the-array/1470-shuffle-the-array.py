# n 
# n.... len(n)
# n = 
class Solution(object):
    def shuffle(self, nums, n):
        """
        :type nums: List[int]
        :type n: int
        :rtype: List[int]
        """
        nums_shuffled = []
        for i in range(0, len(nums)- n):
            
            nums_shuffled.append(nums[i])
            nums_shuffled.append(nums[i+n])
        return nums_shuffled