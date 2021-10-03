package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1661:IID;
      
      private var var_2144:String;
      
      private var var_117:IUnknown;
      
      private var var_892:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1661 = param1;
         this.var_2144 = getQualifiedClassName(this.var_1661);
         this.var_117 = param2;
         this.var_892 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1661;
      }
      
      public function get iis() : String
      {
         return this.var_2144;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_117;
      }
      
      public function get references() : uint
      {
         return this.var_892;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_117 == null;
      }
      
      public function dispose() : void
      {
         this.var_1661 = null;
         this.var_2144 = null;
         this.var_117 = null;
         this.var_892 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_892;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_892) : uint(0);
      }
   }
}
