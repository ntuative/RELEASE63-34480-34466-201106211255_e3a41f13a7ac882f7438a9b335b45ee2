package com.sulake.habbo.communication.messages.outgoing.room.action
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class RemoveRightsMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_35:Array;
      
      public function RemoveRightsMessageComposer(param1:Array)
      {
         this.var_35 = new Array();
         super();
         this.var_35.push(param1.length);
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.var_35.push(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function getMessageArray() : Array
      {
         return this.var_35;
      }
      
      public function dispose() : void
      {
         this.var_35 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
