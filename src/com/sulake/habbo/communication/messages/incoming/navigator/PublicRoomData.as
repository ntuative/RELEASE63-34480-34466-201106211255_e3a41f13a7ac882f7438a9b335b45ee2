package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2433:String;
      
      private var var_2627:int;
      
      private var var_2412:int;
      
      private var var_2626:String;
      
      private var var_2718:int;
      
      private var var_1942:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2433 = param1.readString();
         this.var_2627 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_2626 = param1.readString();
         this.var_2718 = param1.readInteger();
         this.var_1942 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2433;
      }
      
      public function get unitPort() : int
      {
         return this.var_2627;
      }
      
      public function get worldId() : int
      {
         return this.var_2412;
      }
      
      public function get castLibs() : String
      {
         return this.var_2626;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2718;
      }
      
      public function get nodeId() : int
      {
         return this.var_1942;
      }
   }
}
