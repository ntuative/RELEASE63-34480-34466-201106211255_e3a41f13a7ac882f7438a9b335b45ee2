package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_77:EffectsModel;
      
      private var var_152:int;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         this.var_77 = param1;
         this.var_152 = param2;
      }
      
      public function dispose() : void
      {
         this.var_77 = null;
      }
      
      public function getDrawableList() : Array
      {
         return this.var_77.getEffects(this.var_152);
      }
   }
}
