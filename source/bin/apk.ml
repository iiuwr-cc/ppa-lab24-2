(*-----------------------------------------------------------------------------
 * Principles of Program Analysis - Laboratory
 *    University of Wroclaw, Institute of Computer Science
 *---------------------------------------------------------------------------*)

(* The entry point for whole application. 
 *)

open Common.Command_hierarchy

(* Top-level `command-table` *)
let commands = make_switch [ ("while", Apk_while.command) ]

(* The main code *)
let _ = run commands
