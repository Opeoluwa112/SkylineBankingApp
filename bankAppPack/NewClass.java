/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bankAppPack;
import java.util.*;

/**
 *
 * @author Eweje Opeoluwa
 */
public class NewClass 
{
  
  public static void main(String [] args)
   {
      // Map mapA = new java.util.HashMap();
       Map<String, String> mapA = new HashMap<>();
       mapA.put("key1", "element 1");
       mapA.put("key2", "element 2");
       mapA.put("key3", "element 3");
       //String element1 = (String) mapA.get("key1");
	   //System.out.println(element1);
	  
	   // key iterator
       //Iterator iterator = mapA.keySet().iterator();

       // value iterator
       Iterator iterator = mapA.values().iterator();
	  
	  for(String v : mapA.keySet()) 
	  {
            
		System.out.println(v);
      }
	  
   }
 }

