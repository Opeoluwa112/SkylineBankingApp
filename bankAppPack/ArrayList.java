/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bankAppPack;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Eweje Opeoluwa
 */
public class ArrayList {
    
    
    public static void main(String args[]){
       List l = new java.util.ArrayList<>();
       l.add(3);
       l.add("go");
      
       
      l.remove(1);
      
      Map<String,String> m = new LinkedHashMap();
      m.put("name", "boy");
      m.put("place", "home");
      m.put("age", "12");
      m.put("class", "ss2");
      m.put("father", "joseph");
      m.put("church", "glt");
      
      System.out.println(m);
      
      
    }
}
