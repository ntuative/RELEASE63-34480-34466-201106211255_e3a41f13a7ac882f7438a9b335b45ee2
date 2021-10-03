package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1415:IHabboTracking;
      
      private var var_1727:Boolean = false;
      
      private var var_2903:int = 0;
      
      private var var_2106:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1415 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1415 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1727 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2903 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1727)
         {
            return;
         }
         ++this.var_2106;
         if(this.var_2106 <= this.var_2903)
         {
            this.var_1415.trackGoogle("toolbar",param1);
         }
      }
   }
}
