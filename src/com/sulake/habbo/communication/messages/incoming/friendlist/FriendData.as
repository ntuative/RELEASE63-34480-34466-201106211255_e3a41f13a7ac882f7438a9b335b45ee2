package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1112:int;
      
      private var var_830:Boolean;
      
      private var var_1777:Boolean;
      
      private var _figure:String;
      
      private var var_1635:int;
      
      private var var_1806:String;
      
      private var var_1805:String;
      
      private var var_1804:String;
      
      private var var_2770:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1112 = param1.readInteger();
         this.var_830 = param1.readBoolean();
         this.var_1777 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1635 = param1.readInteger();
         this.var_1806 = param1.readString();
         this.var_1805 = param1.readString();
         this.var_1804 = param1.readString();
         this.var_2770 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1112;
      }
      
      public function get online() : Boolean
      {
         return this.var_830;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1777;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1635;
      }
      
      public function get motto() : String
      {
         return this.var_1806;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1805;
      }
      
      public function get realName() : String
      {
         return this.var_1804;
      }
      
      public function get facebookId() : String
      {
         return this.var_2770;
      }
   }
}
