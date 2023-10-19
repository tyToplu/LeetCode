class Solution {
       public boolean isAnagram(String s, String t) {
    	HashMap<Character, Integer> s_map = new HashMap<Character, Integer>();
    	HashMap<Character, Integer> t_map = new HashMap<Character, Integer>();

    	char[] s_char = s.toCharArray();
    	char[] t_char = t.toCharArray();
    	
    	for(char i : s_char) {
    		s_map.put(i,s_map.getOrDefault(i,0)+1);
    	}
    	for(char i : t_char) {
    		t_map.put(i,t_map.getOrDefault(i,0)+1);
    	}
    	
    	return s_map.equals(t_map);
    }
}