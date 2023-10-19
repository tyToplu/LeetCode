class Solution {
       public boolean containsDuplicate(int[] nums) {
    	HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
    	for(int i : nums) {
        	if(map.getOrDefault(i,0)+1 > 1) {
        		return true;
        	}
        	map.put(i,map.getOrDefault(i,0)+1);
    	}
    	return false;
    }
}