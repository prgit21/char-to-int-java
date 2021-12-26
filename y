import java.util.*;

class y {
    public static void main(String args[]) {
        Scanner sc=new Scanner(System.in);
        Dictionary tab = new Hashtable();
        for (int i = 97, j = 1; i < 123; i++, j++) {
            char x = (char) i;
            String formatedString = String.format("%02d", j);
            tab.put(x, formatedString);
        }
        String inp = sc.nextLine();
        inp = inp.toLowerCase();
        char inpp[] = inp.toCharArray();
        String out = "";
        for (char x : inpp) {
            if(tab.get(x)!=null)
                out += tab.get(x);
            else 
                out += " ";
        }
        System.out.println(out);
    }
}
