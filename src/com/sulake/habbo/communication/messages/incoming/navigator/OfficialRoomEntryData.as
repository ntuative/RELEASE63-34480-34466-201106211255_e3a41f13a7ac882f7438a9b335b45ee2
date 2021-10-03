package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1169:int = 1;
      
      public static const const_855:int = 2;
      
      public static const const_972:int = 3;
      
      public static const const_1743:int = 4;
       
      
      private var _index:int;
      
      private var var_2856:String;
      
      private var var_2857:String;
      
      private var var_2855:Boolean;
      
      private var var_2854:String;
      
      private var var_953:String;
      
      private var var_2853:int;
      
      private var var_2858:int;
      
      private var _type:int;
      
      private var var_2605:String;
      
      private var var_1080:GuestRoomData;
      
      private var var_1079:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2856 = param1.readString();
         this.var_2857 = param1.readString();
         this.var_2855 = param1.readInteger() == 1;
         this.var_2854 = param1.readString();
         this.var_953 = param1.readString();
         this.var_2853 = param1.readInteger();
         this.var_2858 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1169)
         {
            this.var_2605 = param1.readString();
         }
         else if(this._type == const_972)
         {
            this.var_1079 = new PublicRoomData(param1);
         }
         else if(this._type == const_855)
         {
            this.var_1080 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1080 != null)
         {
            this.var_1080.dispose();
            this.var_1080 = null;
         }
         if(this.var_1079 != null)
         {
            this.var_1079.dispose();
            this.var_1079 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2856;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2857;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2855;
      }
      
      public function get picText() : String
      {
         return this.var_2854;
      }
      
      public function get picRef() : String
      {
         return this.var_953;
      }
      
      public function get folderId() : int
      {
         return this.var_2853;
      }
      
      public function get tag() : String
      {
         return this.var_2605;
      }
      
      public function get userCount() : int
      {
         return this.var_2858;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1080;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1079;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1169)
         {
            return 0;
         }
         if(this.type == const_855)
         {
            return this.var_1080.maxUserCount;
         }
         if(this.type == const_972)
         {
            return this.var_1079.maxUsers;
         }
         return 0;
      }
   }
}
