package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_582:String = "RSVFS_STATUS";
      
      public static const const_605:String = "RSVFS_RECEIVED";
       
      
      private var var_207:String;
      
      private var var_234:int;
      
      private var var_422:int = -1;
      
      private var _shareId:String;
      
      private var var_2248:String;
      
      private var var_2247:Boolean;
      
      private var var_1653:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_422 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_234;
      }
      
      public function get status() : int
      {
         return this.var_422;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2248;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2247;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1653;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_234 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_422 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2248 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2247 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1653 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_207;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_207 = param1;
      }
   }
}
