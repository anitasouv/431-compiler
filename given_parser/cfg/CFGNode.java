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

   public boolean checkIfPrinted() {
      return printed;
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

      q.add(this);
      this.setToPrinted();
      for (int i = 0; i < children.size(); i++) {
           if (children.get(i).returnOrNah) {
            // do nothing
           } else if ((children.get(i).blockNum >= this.blockNum && children.get(i).returnOrNah == false) && !children.get(i).checkIfPrinted()) {
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
          if ((current.getLLVM().size() > 0) && !((current.getLLVM().get(0) instanceof DefineFuncLLVM) || (current.getLLVM().get(0) instanceof TargetLLVM) || current.getLLVM().get(0) instanceof DeclareFuncLLVM)) {
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
      }
   }

   public void printOutARM() {
      Queue<CFGNode> q = getChildrenForPrint();
//System.out.println("in printout: " + q.size());

      Queue<CFGNode> done = new LinkedList<CFGNode>();
      Queue<CFGNode> reallyDone = new LinkedList<CFGNode>();
      Queue<CFGNode> toMakeGraph = new LinkedList<CFGNode>();


      CFGNode current = null;
      while (q.size() > 0) {
          current = q.remove();
          if (current.getLLVM().size() > 0 && !((current.getLLVM().get(0) instanceof DefineFuncLLVM) || (current.getLLVM().get(0) instanceof TargetLLVM) || current.getLLVM().get(0) instanceof DeclareFuncLLVM)) {
              System.out.println("." + current.getLabel());
          }
          for (int i = 0; i < current.getLLVM().size(); i++) {
               current.getLLVM().get(i).printOutARM();
	       current.generateHelper();
          }
          //current.printAllSets();

          done.add(current);
      }
      this.generateLiveOutSet();
      boolean continuePlz = false;
   while(!continuePlz) {
      this.generateLiveOutSet();
      while (done.size() > 0) {
          current = done.remove();
          toMakeGraph.add(current);
	  continuePlz = current.checkLiveOutToContinue();
	  if (continuePlz == false) {
              break;
          }
      }
    }

      while (toMakeGraph.size() > 0) {
          current = toMakeGraph.remove();
	  current.makeInterGraph();
	  reallyDone.add(current);
      }

      while (reallyDone.size() > 0) {
          current = reallyDone.remove();
	  // need to add edges bi-directionally
	  current.completeInterGraph();
          current.printAllSets();
	  current.colorGraph();
      }

// at this point all nodes' graphs are made
// now to do the coloring

      

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
	   // check all edges in the tempGraph, if there are registers, make sure cur does not get that color
	   for (String edge : edges) {
		if (tempGraph.get(edge) != null && ((coloredRegisters.get(edge)) == color) ) { // if this register is already in the graph
			// check the color that it is
			color = coloredRegisters.get(edge) + 1;
		}
	   }
System.out.println("Coloring " + cur + " as " + color);
	   coloredRegisters.put(cur, color);

	   tempGraph.put(cur, edges); 
           color = 0;
	}
	// now queue is filled with correct order of nodes to look at
	// for each node we add it to the graph and color it (separate list)
	// while looking at the old graph with the old edges to color
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
	Set<String> ids = null;
	Set<String> hardCoded = new HashSet<String>();
	hardCoded.add("fp");
	hardCoded.add("pc");
	hardCoded.add("sp");
	hardCoded.add("%r0");
	hardCoded.add("%lr");
	for (int i = llvm.size() - 1; i >= 0; i--) {
		for(int j = llvm.get(i).getARMS().size() - 1; j >= 0; j--) {
                        temp = new HashSet<String>();
                        temp.addAll(llvm.get(i).getARMS().get(j).getTargets());
			temp.removeAll(hardCoded);
			temp2 = new HashSet<String>() ;
			temp2.addAll(liveOutSet);
                        temp2.removeAll(temp);
			temp2.removeAll(hardCoded);
			/*boolean flag = true;
			ids = new HashSet<String>();
			for (String s: temp2) {
				for(int a = 2; a < s.length(); a++) {
					if(!Character.isDigit(s.charAt(a))) { flag = false; }
				}
				if(!(s.contains("%u") && flag)) {
					ids.add(s);
				}
				flag = true;
			}
			temp2.removeAll(ids);
			for (String s : temp) {
				for(int a = 2; a < s.length(); a++) {
					if(!Character.isDigit(s.charAt(a))) { flag = false; }
				}
				if(s.contains("%u") && flag) {
					interGraph.put(s, temp2);
				}
			}

			liveOutSet.addAll(temp);
               */
			//interGraph.put(, temp2);
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
       liveOutSet.addAll(genSet);
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
