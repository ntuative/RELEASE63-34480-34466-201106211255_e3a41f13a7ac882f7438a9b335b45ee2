package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1877:IID;
      
      private var var_1125:Boolean;
      
      private var var_1238:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1877 = param1;
         this.var_1238 = new Array();
         this.var_1125 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1877;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1125;
      }
      
      public function get receivers() : Array
      {
         return this.var_1238;
      }
      
      public function dispose() : void
      {
         if(!this.var_1125)
         {
            this.var_1125 = true;
            this.var_1877 = null;
            while(this.var_1238.length > 0)
            {
               this.var_1238.pop();
            }
            this.var_1238 = null;
         }
      }
   }
}
