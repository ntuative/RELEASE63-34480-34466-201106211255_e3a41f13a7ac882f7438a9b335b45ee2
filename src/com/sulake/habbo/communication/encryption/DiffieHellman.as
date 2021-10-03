package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_962:BigInteger;
      
      private var var_2549:BigInteger;
      
      private var var_1863:BigInteger;
      
      private var var_2548:BigInteger;
      
      private var var_1515:BigInteger;
      
      private var var_1862:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1515 = param1;
         this.var_1862 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1515.toString() + ",generator: " + this.var_1862.toString() + ",secret: " + param1);
         this.var_962 = new BigInteger();
         this.var_962.fromRadix(param1,param2);
         this.var_2549 = this.var_1862.modPow(this.var_962,this.var_1515);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1863 = new BigInteger();
         this.var_1863.fromRadix(param1,param2);
         this.var_2548 = this.var_1863.modPow(this.var_962,this.var_1515);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2549.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2548.toRadix(param1);
      }
   }
}
