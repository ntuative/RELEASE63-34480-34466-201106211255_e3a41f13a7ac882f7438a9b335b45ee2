package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2205:int = 0;
      
      public static const const_1885:int = 1;
      
      public static const const_1888:int = 2;
      
      public static const const_2294:int = 3;
      
      public static const const_2144:int = 4;
      
      public static const const_2237:int = 5;
      
      public static const const_1972:int = 10;
      
      public static const const_2206:int = 11;
      
      public static const const_2256:int = 12;
      
      public static const const_2150:int = 13;
      
      public static const const_2129:int = 16;
      
      public static const const_2110:int = 17;
      
      public static const const_2225:int = 18;
      
      public static const const_2100:int = 19;
      
      public static const const_2244:int = 20;
      
      public static const const_2239:int = 22;
      
      public static const const_2288:int = 23;
      
      public static const const_2098:int = 24;
      
      public static const const_2287:int = 25;
      
      public static const const_2156:int = 26;
      
      public static const const_2246:int = 27;
      
      public static const const_2191:int = 28;
      
      public static const const_2174:int = 29;
      
      public static const const_2276:int = 100;
      
      public static const const_2155:int = 101;
      
      public static const const_2290:int = 102;
      
      public static const const_2259:int = 103;
      
      public static const const_2186:int = 104;
      
      public static const const_2249:int = 105;
      
      public static const const_2133:int = 106;
      
      public static const const_2303:int = 107;
      
      public static const const_2119:int = 108;
      
      public static const const_2304:int = 109;
      
      public static const const_2141:int = 110;
      
      public static const const_2182:int = 111;
      
      public static const const_2090:int = 112;
      
      public static const const_2106:int = 113;
      
      public static const const_2283:int = 114;
      
      public static const const_2130:int = 115;
      
      public static const const_2101:int = 116;
      
      public static const const_2166:int = 117;
      
      public static const const_2275:int = 118;
      
      public static const const_2262:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1885:
            case const_1972:
               return "banned";
            case const_1888:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
