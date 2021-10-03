package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_361:int;
      
      private var var_2858:int;
      
      private var var_2861:Boolean;
      
      private var var_2465:int;
      
      private var _ownerName:String;
      
      private var var_136:RoomData;
      
      private var var_865:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_361 = param1.readInteger();
         this.var_2858 = param1.readInteger();
         this.var_2861 = param1.readBoolean();
         this.var_2465 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_136 = new RoomData(param1);
         this.var_865 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_136 != null)
         {
            this.var_136.dispose();
            this.var_136 = null;
         }
         if(this.var_865 != null)
         {
            this.var_865.dispose();
            this.var_865 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_361;
      }
      
      public function get userCount() : int
      {
         return this.var_2858;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2861;
      }
      
      public function get ownerId() : int
      {
         return this.var_2465;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_136;
      }
      
      public function get event() : RoomData
      {
         return this.var_865;
      }
   }
}
