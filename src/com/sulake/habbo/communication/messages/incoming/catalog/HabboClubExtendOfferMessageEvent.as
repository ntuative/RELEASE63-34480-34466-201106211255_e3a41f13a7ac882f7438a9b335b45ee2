package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.HabboExtendClubOfferMessageParser;
   
   public class HabboClubExtendOfferMessageEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function HabboClubExtendOfferMessageEvent(param1:Function)
      {
         super(param1,HabboExtendClubOfferMessageParser);
      }
      
      public function getParser() : HabboExtendClubOfferMessageParser
      {
         return this.var_10 as HabboExtendClubOfferMessageParser;
      }
   }
}
