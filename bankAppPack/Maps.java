/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bankAppPack;
import java.util.Map;
import java.util.HashMap;
import java.util.TreeSet;
import java.util.Set;
import java.util.Scanner;

/**
 *
 * @author Eweje Opeoluwa
 */
public class Maps {
    
   public static void main(String [] args){
   
       Map<String, Integer> myMap = new HashMap<>();
   
       createMap(myMap);
       displayMap(myMap);
   
   }
   
   private static void createMap( Map<String, Integer> map){
      Scanner sc = new Scanner(System.in);
      System.out.println("Enter a String");
      String input=sc.nextLine();
      
      String[] tokens= input.split(" ");
      
      for(String token: tokens){
          String word= token.toLowerCase();
            
          if(map.containsKey(word)){
             int count = map.get(word);
             map.put(word, count+1);
          }
          else{
             map.put(word, 1);
          }
        }
   }
    private static void displayMap( Map<String, Integer> map){
         
        Set<String> keys = map.keySet();
                 
        TreeSet<String> sortedKeys= new TreeSet<>(keys);
        System.out.println( "\nMap contains:\nKey\t\tValue" );
        
        for(String key:sortedKeys){
           System.out.printf( "%-10s%10s\n", key, map.get( key ));
        }
           System.out.printf("\nsize: %d\nisEmpty: %b\n", map.size(),map.isEmpty());    
     }
}

