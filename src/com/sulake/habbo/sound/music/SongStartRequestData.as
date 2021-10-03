package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_2053:int;
      
      private var var_2128:Number;
      
      private var var_2938:Number;
      
      private var var_2939:int;
      
      private var var_2941:Number;
      
      private var var_2940:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_2053 = param1;
         this.var_2128 = param2;
         this.var_2938 = param3;
         this.var_2941 = param4;
         this.var_2940 = param5;
         this.var_2939 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_2053;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2128 < 0)
         {
            return 0;
         }
         return this.var_2128 + (getTimer() - this.var_2939) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2938;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2941;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2940;
      }
   }
}
