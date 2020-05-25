pragma Spark_Mode (On);

with SPARK.Text_IO;
use Spark.Text_Io;
with Ada.Command_Line;

procedure Hello is

   function Greetee return String is
   begin
      if Ada.Command_Line.Argument_Count >= 1 then
         return Ada.Command_Line.Argument(1);
      else
         return "stranger";
      end if;
   end Greetee;

begin
   if Status (Standard_Output) = Success then
      Put ("Hello ");
      if Status (Standard_Output) = Success then
         Put_Line (Greetee);
      end if;
   end if;
end Hello;
