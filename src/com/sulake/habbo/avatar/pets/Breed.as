package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2615:String = "";
      
      private var var_1112:String;
      
      private var var_1455:Boolean;
      
      private var var_2402:Boolean = true;
      
      private var var_2614:int;
      
      private var var_2613:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2614 = parseInt(param1.@pattern);
         this.var_1112 = String(param1.@gender);
         this.var_1455 = Boolean(parseInt(param1.@colorable));
         this.var_2615 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2402 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_1112;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1455;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2402;
      }
      
      public function get patternId() : int
      {
         return this.var_2614;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2613;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2613 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2615;
      }
   }
}
