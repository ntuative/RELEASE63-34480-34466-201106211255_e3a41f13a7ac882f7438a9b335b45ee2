package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2439:int;
      
      private var var_1489:String;
      
      private var var_2878:int;
      
      private var var_2882:int;
      
      private var _category:int;
      
      private var var_2220:String;
      
      private var var_1667:int;
      
      private var var_2879:int;
      
      private var var_2877:int;
      
      private var var_2881:int;
      
      private var var_2876:int;
      
      private var var_2880:Boolean;
      
      private var var_3085:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2439 = param1;
         this.var_1489 = param2;
         this.var_2878 = param3;
         this.var_2882 = param4;
         this._category = param5;
         this.var_2220 = param6;
         this.var_1667 = param7;
         this.var_2879 = param8;
         this.var_2877 = param9;
         this.var_2881 = param10;
         this.var_2876 = param11;
         this.var_2880 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2439;
      }
      
      public function get itemType() : String
      {
         return this.var_1489;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2878;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2882;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2220;
      }
      
      public function get extra() : int
      {
         return this.var_1667;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2879;
      }
      
      public function get creationDay() : int
      {
         return this.var_2877;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2881;
      }
      
      public function get creationYear() : int
      {
         return this.var_2876;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2880;
      }
      
      public function get songID() : int
      {
         return this.var_1667;
      }
   }
}
