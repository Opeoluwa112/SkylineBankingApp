/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bankAppPack;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author Eweje Opeoluwa
 */
public class ArrayLists {
    
    public static void main(String [] args){
      String[] colors = {"Magenta","Red","Blue","Pink"};
      List<String> list = new ArrayList<String>();
      
      for(String color: colors)
      list.add(color);
      System.out.println(list);
      
      String[] removeColors = {"Red","Blue"};
      List<String>removeList =new ArrayList<String>();
      
      for(String color: removeColors){
      removeList.remove(removeList);
      System.out.println(removeList);
      }
        
         
    }
}
