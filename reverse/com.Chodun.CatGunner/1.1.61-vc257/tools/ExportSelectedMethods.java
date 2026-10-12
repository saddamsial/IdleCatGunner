import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.address.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.symbol.SourceType;
import java.nio.file.*;
import java.util.*;

public class ExportSelectedMethods extends GhidraScript {
 public void run() throws Exception {
  String[] args=getScriptArgs(); Path out=Paths.get(args[1]); Files.createDirectories(out);
  long delta=currentProgram.getImageBase().getOffset();
  List<String[]> rows=new ArrayList<>();
  for(String line:Files.readAllLines(Paths.get(args[0]))) {
   String[] r=line.split("\t"); Address a=toAddr(Long.decode(r[0])+delta);
   StringBuilder bytes=new StringBuilder();
   for(byte v:getBytes(a,16)) bytes.append(String.format("%02x",v&255));
   if(!bytes.toString().equals(r[2])) throw new IllegalStateException("Input byte mismatch: "+r[1]);
   rows.add(r);
  }
  if(args.length>3) {
   for(String line:Files.readAllLines(Paths.get(args[3]))) {
    String[] r=line.split("\\t"); Address a=toAddr(Long.decode(r[0])+delta);
    Function referenced=currentProgram.getFunctionManager().getFunctionAt(a);
    if(referenced==null)
     referenced=currentProgram.getFunctionManager().createFunction(r[1],a,new AddressSet(a),SourceType.USER_DEFINED);
    referenced.setName(r[1],SourceType.USER_DEFINED);
    referenced.setBody(new AddressSet(a));
    referenced.setInline(false);
   }
  }
  for(String[] r:rows) {
   Address a=toAddr(Long.decode(r[0])+delta),end=toAddr(Long.decode(r[3])+delta-1);
   Function f=currentProgram.getFunctionManager().getFunctionAt(a);
   if(f==null) f=currentProgram.getFunctionManager().createFunction(r[1],a,new AddressSet(a),SourceType.USER_DEFINED);
   f.setName(r[1],SourceType.USER_DEFINED);
   AddressSet body=new AddressSet(a,end);
   new ghidra.app.cmd.disassemble.DisassembleCommand(a,body,true).applyTo(currentProgram,monitor);
   f.setBody(body);
   InstructionIterator tailInstructions=currentProgram.getListing().getInstructions(body,true);
   while(tailInstructions.hasNext()) {
    Instruction instruction=tailInstructions.next();
    Address[] flows=instruction.getFlows();
    // AArch64 B to an independently mapped managed method is a tail call.
    // Treating it as an ordinary jump lets the decompiler absorb unrelated bodies.
    if(instruction.getMnemonicString().equalsIgnoreCase("b") && flows.length==1 && !body.contains(flows[0]) &&
       currentProgram.getFunctionManager().getFunctionAt(flows[0])!=null)
     instruction.setFlowOverride(FlowOverride.CALL_RETURN);
   }
  }
  if(args.length>2) {
   for(String line:Files.readAllLines(Paths.get(args[2]))) {
    long va=Long.decode(line); boolean verified=false;
    for(String[] r:rows) if(Long.decode(r[0])==va) verified=true;
    if(!verified) throw new IllegalStateException("No byte-verified query for noreturn address");
    currentProgram.getFunctionManager().getFunctionAt(toAddr(va+delta)).setNoReturn(true);
   }
  }
  DecompInterface dec=new DecompInterface(); dec.openProgram(currentProgram);
  List<String> status=new ArrayList<>(); status.add("preferred_va\tghidra_va\tname\tcompleted\terror");
  for(String[] r:rows) {
   Address a=toAddr(Long.decode(r[0])+delta); Function f=currentProgram.getFunctionManager().getFunctionAt(a);
   DecompileResults res=dec.decompileFunction(f,30,monitor);
   boolean ok=res.decompileCompleted() && res.getDecompiledFunction()!=null;
   status.add(r[0]+"\t"+a+"\t"+r[1]+"\t"+ok+"\t"+res.getErrorMessage().replace('\n',' '));
   if(ok) Files.writeString(out.resolve(r[1]+".c"),"/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA "+r[0]+", Ghidra VA "+a+". */\n"+res.getDecompiledFunction().getC());
   List<String> listing=new ArrayList<>(); InstructionIterator it=currentProgram.getListing().getInstructions(f.getBody(),true);
   while(it.hasNext()) { Instruction ins=it.next(); listing.add(ins.getAddress()+"  "+ins); }
   Files.write(out.resolve(r[1]+".asm"),listing);
  }
  Files.write(out.resolve("status.tsv"),status); dec.dispose();
 }
}
