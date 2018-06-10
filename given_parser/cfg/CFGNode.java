package cfg;

import ast.*;
import java.util.List;
import java.util.ArrayList;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;
import java.util.Iterator;

import llvm.*;
import java.util.Set;
import java.util.HashSet;

import java.util.Arrays;

import java.util.HashMap;
import java.util.Map;
import java.io.File;

import arm.*;

public class CFGNode
{  
   public String name;
   public List<CFGNode> parents;
   public List<CFGNode> children;
   public List<Statement> statements;
   public Expression guard;
   public int count;        // ?????
   public int blockNum;     // THIS WILL STAY THE SAME ALWAYS
   public int regNum;
   public int labelCount;   // WILL INCREMENT ONLY IN EXIT NODE, to keep track of the last use label number

   public List<LLVM> llvm;

   public boolean printed;
   public boolean returnOrNah;

   public Set<String> genSet;
   public Set<String> killSet;
   public Set<String> liveOutSet;
   public Set<String> oldLiveOutSet;

   public Map< String, Set<String> > interGraph;
   public Map<String, Integer> coloredRegisters;

   public CFGNode(String name, int blockNum, int labelCount, int returnOrNah, int regNumCurrent) {
      this.name = name;
      this.count = returnOrNah;
      this.parents = new ArrayList<CFGNode>();
      this.children = new ArrayList<CFGNode>();
      this.statements = new ArrayList<Statement>();
      this.guard = null;
      this.blockNum = blockNum;
      this.regNum = regNumCurrent;
      this.llvm = new ArrayList<LLVM>();
      this.labelCount = labelCount;
      this.printed = false;
      this.returnOrNah = (returnOrNah == -1) ? true : false;

      this.genSet = new HashSet<String>();
      this.killSet = new HashSet<String>();
      this.liveOutSet = new HashSet<String>();
      this.oldLiveOutSet = new HashSet<String>();

      this.interGraph = new HashMap<>();
      this.coloredRegisters = new HashMap<>();
   }
 /*
   public CFGNode(CFGNode newNode) {
      this.name = newNode.name;
      this.count = newNode.returnOrNah;
      this.parents = new ArrayList<CFGNode>(newNode.getParents());
      this.children = new ArrayList<CFGNode>(newNode.getChildren());
      this.statements = new ArrayList<Statement>(newNode.getStatements);
      this.guard = newNode.getGuard();
      this.blockNum = newNode.blockNum;
      this.regNum = newNode.regNumCurrent;
      this.llvm = new ArrayList<LLVM>(newNode.getLLVM());
      this.labelCount = newNode.labelCount;
      this.printed = false;
      this.returnOrNah = (returnOrNah == -1) ? true : false;

      this.genSet = new HashSet<String>();
      this.killSet = new HashSet<String>();
      this.liveOutSet = new HashSet<String>();
      this.oldLiveOutSet = new HashSet<String>();

      this.interGraph = new HashMap<>();
      this.coloredRegisters = new HashMap<>();
   }
*/
   public boolean checkIfPrinted() {
      return printed;
   }

   public void markNotPrinted() {
      printed = false;
   }

   public void setToPrinted() {
      printed = true;
   }

   public List<LLVM> getLLVM() {
       return llvm;
   }

   public int getLabelCount() {
       return labelCount;
   }

   public int labelCountAndIncrement() {
       this.labelCount++;
       return this.labelCount - 1;
   }

   public void incrementLabelNum() {
      this.labelCount++;
   }

   public void addLLVM( LLVM l ) {
       llvm.add(l);
   }

   public void addLLVMList(List<LLVM> l) {
       llvm.addAll(l);
   }

   public void incrementReg() {
      this.regNum+=1;
   }

   public int getGlobalRegNum() {
      return this.regNum;
   }

   public void addParent(CFGNode parent) {
      parents.add(parent);
   }

   public void addChild(CFGNode child) {
      children.add(child);
   }
   
   public void addStatement(Statement s) {
      statements.add(s);
   }

   public void addGuard(Expression guard) {
       this.guard = guard;
   }  

   public String getLabel() {
       return name + Integer.toString(blockNum) + ":";
   }

   public List<CFGNode> getChildren() {
      return children;
   }

   public Queue<CFGNode> getChildrenForPrint() {
      Queue<CFGNode> q = new LinkedList<CFGNode>();
      Queue<CFGNode> gen2 = new LinkedList<CFGNode>();
      CFGNode temp = null;

      q.add(this);
      this.setToPrinted();
      for (int i = 0; i < children.size(); i++) {
           if (children.get(i).returnOrNah) {
            // do nothing
           } else if ((children.get(i).blockNum >= this.blockNum && children.get(i).returnOrNah == false) && !children.get(i).checkIfPrinted()) {
 		//temp = new CFGNode(children.get(i));

                q.add(children.get(i));

                 children.get(i).setToPrinted();

                for(int j = 0; j < children.get(i).getChildren().size(); j++) {
                   if (children.get(i).getChildren().get(j).returnOrNah) {
                        // do nothing
                    } else if ((children.get(i).getChildren().get(j).blockNum >= this.blockNum && children.get(i).getChildren().get(j).returnOrNah == false) && !children.get(i).getChildren().get(j).checkIfPrinted()) {
                      gen2.addAll(children.get(i).getChildren().get(j).getChildrenForPrint());
                    }
                }
           } 
      }

      q.addAll(gen2);
      return q;
   }

   public void printOut() {
      Queue<CFGNode> q = getChildrenForPrint();
//System.out.println("in printout: " + q.size());
      CFGNode current = null;
      while (q.size() > 0) {
          current = q.remove();
          if ( !(current.getLabel().contains("globals")) && !(current.getLabel().contains("end")) &&  ((current.getLLVM().size() > 0) && !((current.getLLVM().get(0) instanceof DefineFuncLLVM) || (current.getLLVM().get(0) instanceof TargetLLVM) || current.getLLVM().get(0) instanceof DeclareFuncLLVM))) {
              System.out.println(current.getLabel());
          }
	  if (current.getLLVM().size() == 0) {
              System.out.println(current.getLabel());
	  }

          for (int i = 0; i < current.getLLVM().size(); i++) {
               current.getLLVM().get(i).printOut();
               if (current.getLLVM().get(i) instanceof DefineFuncLLVM) {
                    System.out.println("{");
               }
	       current.generateHelper();
          }
	  //current.markNotPrinted();
      }
   }

   public Integer getLastMin(Map<String, Integer> map) {
      Map.Entry<String, Integer> minEntry = null;
      for (Map.Entry<String, Integer> entry: map.entrySet() ) {
	  if (minEntry == null || entry.getValue().compareTo(minEntry.getValue()) < 0) {
		minEntry = entry;
	  }
      }
      if (minEntry == null) {
         return 0;
      }
      return minEntry.getValue();
   }

   public Map<String, Integer> getIdMapHelper(Integer lastMin) {
	 Set<String> str = new HashSet<String>();
	 str.addAll(this.getGenSet());
         Map<String, Integer> ids = new HashMap<String, Integer> ();

	 int i = 0;
	 for (String s: str) {
  // System.out.println("id map! 				" + s);
		ids.put(s, lastMin - i-1 );
		i++;
	 }

	 return ids;
   }
   public Map<String, Integer> registerAllocation() {
      //resetChildrenFromPrint();
      Queue<CFGNode> q = getChildrenForPrint();
//System.out.println("Register Allocation size of children:" + q.size());
      CFGNode current = null;
 


      Map<String, Integer> largeIdMap = new HashMap<String, Integer>();
      largeIdMap.putAll(this.getIdMapHelper(0));
      //Map<String, Integer> currGraph = null;
	Set<String> hardCoded = new HashSet<String>();
	hardCoded.add("fp");
	hardCoded.add("pc");
	hardCoded.add("sp");
	hardCoded.add("lr");
  hardCoded.add("%r0");
  hardCoded.add("%r1");
  hardCoded.add("%r2");
  hardCoded.add("%r3");
      largeIdMap.keySet().removeAll(hardCoded);



      Map<String, Integer> largeColorGraph = new HashMap<String, Integer>();
      Map<String, Integer> currGraph = null;
      while (q.size() > 0) {
          current = q.remove();

	  currGraph = new HashMap<String, Integer>(current.getColorGraph());
	  largeColorGraph.putAll(currGraph);

	  currGraph = new HashMap<String, Integer>(current.getIdMapHelper(  this.getLastMin( largeIdMap)   ));
          // check for duplicates, pick the lowest value
          
	  Set<String> keysToRemove = new HashSet<String>();
          for (Map.Entry<String, Integer> entry : currGraph.entrySet() ) {
		if(largeIdMap.get(entry.getKey()) != null) {
			keysToRemove.add(entry.getKey());
		}
	  }
	  currGraph.keySet().removeAll(keysToRemove);
	  currGraph.keySet().removeAll(hardCoded);

	  largeIdMap.putAll(currGraph);
      }

largeColorGraph.putAll(largeIdMap);
      return largeColorGraph;
   }

   public Map<String, Integer> getIdMap() {
      Queue<CFGNode> q = getChildrenForPrint();
// System.out.println("size of children:" + q.size());
 
     CFGNode current = null;

      Map<String, Integer> largeIdMap = new HashMap<String, Integer>();
      largeIdMap.putAll(this.getIdMapHelper(0));

      Map<String, Integer> currGraph = null;
      Set<String> hardCoded = new HashSet<String>();
      hardCoded.add("fp");
      hardCoded.add("pc");
      hardCoded.add("sp");
      hardCoded.add("lr");
      hardCoded.add("%r0");
      hardCoded.add("%r1");
      hardCoded.add("%r2");
      hardCoded.add("%r3");
      largeIdMap.keySet().removeAll(hardCoded);
      while (q.size() > 0) {
          current = q.remove();
  // System.out.println("id map! " + current.name + current.blockNum);
    //  System.out.println();
      //System.out.println();
	  currGraph = new HashMap<String, Integer>(current.getIdMapHelper(  this.getLastMin( largeIdMap)   ));
          // check for duplicates, pick the lowest value
          
	  Set<String> keysToRemove = new HashSet<String>();
          for (Map.Entry<String, Integer> entry : currGraph.entrySet() ) {
		if(largeIdMap.get(entry.getKey()) != null) {
			keysToRemove.add(entry.getKey());
		}
	  }
	  currGraph.keySet().removeAll(keysToRemove);
	  currGraph.keySet().removeAll(hardCoded);

	  largeIdMap.putAll(currGraph);
      }
      return largeIdMap;
   }

   public List<ARM> printOutARM(List<ARM> cleanUp) {
      Queue<CFGNode> q = getChildrenForPrint();
//System.out.println("in printout: " + q.size());

      Queue<CFGNode> done = new LinkedList<CFGNode>();
      Queue<CFGNode> reallyDone = new LinkedList<CFGNode>();
      Queue<CFGNode> toMakeGraph = new LinkedList<CFGNode>();
      CFGNode current = null;

      this.generateGenAndKill();
      this.generateLiveOutSet();
      boolean continuePlz = false;
      while(!continuePlz) {
          this.generateLiveOutSet();
          while (q.size() > 0) {
              current = q.remove();
	      current.generateGenAndKill();
              toMakeGraph.add(current);
	      continuePlz = current.checkLiveOutToContinue();
	      if (continuePlz == false) {
                  break;
              }
          }
      }



      this.makeInterGraph();
      while (toMakeGraph.size() > 0) {
        current = toMakeGraph.remove();
        current.makeInterGraph();
        current.markNotPrinted();
        reallyDone.add(current);
      }

//this.printAllSets();
      this.colorGraph();
      while (reallyDone.size() > 0) {
        current = reallyDone.remove();
        // need to add edges bi-directionally
        //current.completeInterGraph();
 current.printAllSets();

        current.colorGraph();

        done.add(current);
      }
      //Map<String, Integer> idMap = this.getIdMap();
      //System.out.println("									ids: ");
      //System.out.println(Arrays.toString(idMap.entrySet().toArray()));	

      Map<String, Integer> map = this.registerAllocation();
      //System.out.println("All coloring map size: " + map.size());
     // map.putAll(idMap);



      // change the map to start from 0
      for (Map.Entry<String, Integer> entry: map.entrySet() ) {
        if (entry.getValue() < 0 ) {
          entry.setValue((-1 * entry.getValue()) + 4);
        } else if ( entry.getValue() > 4 ) {
          entry.setValue( entry.getValue() + 3);
        } else {
          // do nothing 
        }
      }


      Map<Integer, Boolean> complete = new HashMap<Integer, Boolean>();
      for (int i = 0; i < 30; i++) {
        for (Map.Entry<String, Integer> entry: map.entrySet() ) {
          if (entry.getValue() == i ) {
            complete.put(i, true);
          }
        } 
        if (complete.get(i) == null) {
          complete.put(i, false);
        }       
      }
      
      // find the first 
      for (int i = 0; i < 30; i++) {
        if (complete.get(i) == false) {
          for (int j = i; j < 30; j++) {
            if (complete.get(j) == true) {

              for (Map.Entry<String, Integer> entry: map.entrySet() ) {
                if (entry.getValue() == j ) {
                  map.put(entry.getKey(), i);
                  complete.put(i, true);
                }
              }
              if (complete.get(i) == true) {
                complete.put(j, false);
                break;
              }

            }
          }

          // find the next true key
          // set all values in "map" to be this number
          // then set this number to be true and the other to be false

        }
      }

      // fill in spaces


      Map.Entry<String, Integer> maxEntry = null;
      for (Map.Entry<String, Integer> entry: map.entrySet() ) {
    	  if (maxEntry == null || entry.getValue().compareTo(maxEntry.getValue()) > 0) {
    		  maxEntry = entry;
    	  }
      }
      // Map.Entry<String, Integer> minEntry = null;
      // for (Map.Entry<String, Integer> entry: map.entrySet() ) {
    	 //  if (minEntry == null || entry.getValue().compareTo(minEntry.getValue()) < 0) {
    		//   minEntry = entry;
    	 //  }
      // }





      //System.out.println("                  map1: ");
      //System.out.println(Arrays.toString(map.entrySet().toArray()));  

      List<ARM> clean = new ArrayList<ARM>();
      List<ARM> regAllocation = new ArrayList<ARM>();
      int totalRoom = 0;
      if (maxEntry != null) {
        totalRoom = maxEntry.getValue();


          List<String> regs = new ArrayList<String>();
          if (totalRoom > 4) {
            for (int i = 0; i < 5; i++) {
               regs.add("r" + (i + 4));
            }
          } else {
            for (int i = 0; i < totalRoom; i++) {
               regs.add("r" + (i + 4));
            }
          }

          if (regs.size() > 0) {
              regAllocation.add( new PushPopARM("PUSH", regs));
          }

        regAllocation.add(new BinaryARM("SUB", "sp", "sp", Integer.toString((maxEntry.getValue() * 4)) ) );
        clean.add(new BinaryARM("ADD", "sp", "sp", Integer.toString((maxEntry.getValue() * 4)  )));
	 
	 /* if (totalRoom > 4) {
		int temp = totalRoom - 4;
        	regAllocation.add(new BinaryARM("SUB", "fp", "sp", Integer.toString((temp * 4)) ) );
        	clean.add(new BinaryARM("ADD", "fp", "sp", Integer.toString((temp * 4)  )));
	  }
*/
          if (regs.size() > 0) {
              clean.add(new PushPopARM("POP", regs));
          }


      }






     System.out.println("                  map2: ");
     System.out.println(Arrays.toString(map.entrySet().toArray()));  


      while (done.size() > 0) {
        current = done.remove();
        if (!(current.getLabel().contains("globals")) && !(current.getLabel().contains("end")) && (current.getLLVM().size() > 0 && !((current.getLLVM().get(0) instanceof DefineFuncLLVM) || (current.getLLVM().get(0) instanceof TargetLLVM) || current.getLLVM().get(0) instanceof DeclareFuncLLVM))) {
            System.out.println("." + current.getLabel());
        }
        for (int i = 0; i < current.getLLVM().size(); i++) {
        	if (cleanUp != null && (current.getLLVM().get(i) instanceof NOPLLVM) && (current.getLLVM().get(i).getARMS().size() > 0) && (current.getLLVM().get(i).getARMS().get(0) instanceof PushPopARM)) {
            for (ARM each : cleanUp) {
              each.printOut(map);
            }
        	}

          current.getLLVM().get(i).printOutARM(map);
          current.generateHelper();
        }
        if (current.getLLVM().size() > 0 && (current.getLLVM().get(0) instanceof DefineFuncLLVM)) {
          for (ARM each : regAllocation) {
            each.printOut(map);
          }
        }
      }

      if (clean.size() > 0) {
      	  return clean;
      } else {
		    return null;
      }
   }


   public Map<String, Integer> getColorGraph() {
	return coloredRegisters;
   }




   public void completeInterGraph() {
	Map<String, Set<String>> tempGraph = new HashMap<String, Set<String>>();
	Set<String> edges = null;
	String k = "";
	for (Map.Entry<String, Set<String>> entry : interGraph.entrySet()) {
		for ( String element : entry.getValue()) {
			edges = interGraph.get(element);
		
			// if edges does not contain entry.getKey then add it
			k = entry.getKey();
			if (edges == null) {
				if (tempGraph.get(element) == null) {
					tempGraph.put(element, new HashSet<String>());
				}
				tempGraph.get(element).add(k);
			} else if (!edges.contains(k)) {
				interGraph.get(element).add(k);
			}
		}
	}
	interGraph.putAll(tempGraph);
   }

   public void colorGraph() {
	Map<String, Set<String>> tempGraph = new HashMap<String, Set<String>>();
	Queue<String> q = new LinkedList<String>();
	int key = 0;
	List<String> keys = new ArrayList<String>();
	List<Set<String>> values = new ArrayList<Set<String>>();
	for(Map.Entry<String, Set<String>> map : interGraph.entrySet()) {
		keys.add(new String (map.getKey()));
		values.add(new HashSet<String>(map.getValue()));
	}
	Set<String> old = null;
	String s = "";
	int indexToRemove = 0;
	int idx = 0;
	while (!keys.isEmpty()) {
	   for(int i = 0; i < keys.size(); i++) {
		if(values.get(i).size() == 0) {
			q.add(keys.get(i));
			indexToRemove = i;


			i = -1;
		} else {
			key = findLowestNumberOfEdges(values);
			q.add(keys.get(key));
			indexToRemove = key;

			//keys.remove(key);
			//old = values.remove(key);
			i = -1;
		}
		s = keys.remove(indexToRemove);
		old = values.remove(indexToRemove);
		for (String value : old ) {
			idx = keys.indexOf(value);
			if (idx >= 0) {
				values.get(idx).remove(s);
			}
		}
		
	   }
	}

	Set<String> edges = null;
	int color = 0 ;
	String cur = "";
	while (!q.isEmpty()) {
	   cur = q.remove();

	   edges = interGraph.get(cur);
	   boolean repeat = true;
	   while(repeat) {
		repeat = false;
	   	// check all edges in the tempGraph, if there are registers, make sure cur does not get that color
	   	for (String edge : edges) {
//System.out.println("looking at the edge: " + edge + "color : " + color);
   			if (tempGraph.get(edge) != null && ((coloredRegisters.get(edge)) == color) ) { // if this register is already in the graph
				// check the color that it is
//System.out.println("Increased!");
			color = coloredRegisters.get(edge) + 1;
			// need to go back around and increase again
			repeat = true;
		}
	   }
	   
	   }
//System.out.println("Coloring " + cur + " as " + color);
	   coloredRegisters.put(cur, color);

	   tempGraph.put(cur, edges); 
           color = 0;
	}
	// now queue is filled with correct order of nodes to look at
	// for each node we add it to the graph and color it (separate list)
	// while looking at the old graph with the old edges to color
   }

   public int findHighestNumberOfEdges( List<Set<String>> values ) {
	//Map.Entry<String, Set<String>> lowest = graph.entrySet().iterator().next();
	int index = 0;
	for (int i = 0; i < values.size(); i++) {
		if (values.get(i).size() > values.get(index).size()) {
			index = i;
		}
	}
	return index;
   }

   public int findLowestNumberOfEdges( List<Set<String>> values ) {
	//Map.Entry<String, Set<String>> lowest = graph.entrySet().iterator().next();
	int index = 0;
	for (int i = 0; i < values.size(); i++) {
		if (values.get(i).size() < values.get(index).size()) {
			index = i;
		}
	}
	return index;
   }

   public void makeInterGraph() {
//System.out.println("												In interfereGraph");
        Set<String> temp = null;
        Set<String> temp2 = null;
	//Set<String> ids = null;
	Set<String> hardCoded = new HashSet<String>();
	hardCoded.add("fp");
	hardCoded.add("pc");
	hardCoded.add("sp");
	hardCoded.add("%r0");
	hardCoded.add("%r1");
  hardCoded.add("%r2");
  hardCoded.add("%r3");
	hardCoded.add("lr");
	for (int i = llvm.size() - 1; i >= 0; i--) {
		for(int j = llvm.get(i).getARMS().size() - 1; j >= 0; j--) {
                        temp = new HashSet<String>();
                        temp.addAll(llvm.get(i).getARMS().get(j).getTargets());
//System.out.println(temp);
//System.out.println(Arrays.toString(temp.toArray()));
			temp.removeAll(hardCoded);
			temp2 = new HashSet<String>() ;
			temp2.addAll(liveOutSet);
                        temp2.removeAll(temp);
			temp2.removeAll(hardCoded);
			for (String s : temp) {
				interGraph.put(s, temp2);
			}
			liveOutSet.addAll(temp);
		 }
        }
   }

   public boolean checkLiveOutToContinue() {
	return liveOutSet.equals(oldLiveOutSet);       
   }

   public void printAllSets() {
      System.out.println("Gen set: ");
      System.out.println(Arrays.toString(genSet.toArray()));
      System.out.println("Kill set: ");
      System.out.println(Arrays.toString(killSet.toArray()));
      System.out.println("LiveOut set: ");
      System.out.println(Arrays.toString(liveOutSet.toArray()));
      System.out.println("OldLiveOut set: ");
      System.out.println(Arrays.toString(oldLiveOutSet.toArray()));

      System.out.println("Interference Graph: ");
      System.out.println(Arrays.asList(interGraph));

   }

   public void generateHelper() {
//System.out.println("making the thing");
         Set<String> temp = new HashSet<String>();
	 for(int i = 0; i < llvm.size(); i++) {
		for(int j = 0; j < llvm.get(i).getARMS().size(); j++) {
			temp = llvm.get(i).getARMS().get(j).getSources();
//System.out.println("in generate helper source list: " + Arrays.toString(temp.toArray()));
			temp.removeAll(this.killSet);
			this.genSet.addAll(temp);
//System.out.println("in generate helper genSet list: " + Arrays.toString(this.genSet.toArray()));

			this.killSet.addAll(llvm.get(i).getARMS().get(j).getTargets());
//System.out.println("in generate helper KillSet list: " + Arrays.toString(this.killSet.toArray()));
	        }
	 }
   }

   public void generateGenAndKill() {
        Queue<CFGNode> q = getChildrenForPrint();
//System.out.println("number of totalchildren: " + q.size());

        CFGNode current = null;
        while (q.size() > 0) {
        	current = q.remove();
		current.generateHelper();
//System.out.println("generating: " + current.name + current.blockNum );
		// current.printAllSets();
        }
   }

   public Queue<CFGNode> reverseQueue(Queue<CFGNode> q) {
      Stack<CFGNode> s = new Stack<CFGNode>();
      while(!q.isEmpty()) {
         s.push(q.remove());
      }
      while(!s.isEmpty()) {
         q.add(s.pop());
      }
      return q;
   }

   public Set<String> getGenSet() {  return genSet;  }
   public Set<String> getLiveOutSet() { return liveOutSet; }
   public Set<String> getKillSet() { return killSet; }

   public void generateLiveOutSetHelper() {
       oldLiveOutSet = new HashSet<String>(liveOutSet);
       liveOutSet.addAll(new HashSet<String>(genSet));
       Set<String> temp = null;
       Set<String> temp2 = null;
       for (int i = 0; i < children.size(); i++) {
             temp = new HashSet<String>(children.get(i).getLiveOutSet());
	     temp.remove(children.get(i).getKillSet());
             temp2 = new HashSet<String>(children.get(i).getGenSet());
 	     temp2.addAll(temp);
             liveOutSet.addAll(temp2);
       }
   }

   public void generateLiveOutSet() {
      
       Queue<CFGNode> q = getChildrenForPrint();
       q = reverseQueue(q);

       CFGNode current = null;
       while (q.size() > 0) {
          current = q.remove();
          current.generateLiveOutSetHelper();
       }

   }

   public boolean checkLiveOutContinueHelper() {
       return true;
   }

   public boolean checkLiveOutContinue() {
        Queue<CFGNode> q = getChildrenForPrint();
        q = reverseQueue(q);

        CFGNode current = null;
        while (q.size() > 0) {
           current = q.remove();
           if (!current.checkLiveOutContinue()) {
              return false;
           }
        }

	return liveOutSet.equals(oldLiveOutSet);       
   }
}
