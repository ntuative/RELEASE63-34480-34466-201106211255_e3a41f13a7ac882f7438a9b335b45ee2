package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1774:String;
      
      private var var_1769:int;
      
      private var var_1771:int;
      
      private var var_2167:int;
      
      private var _id:int;
      
      private var var_1770:Boolean;
      
      private var _type:String;
      
      private var var_2415:String;
      
      private var var_2417:int;
      
      private var var_1772:String;
      
      private var var_2416:int;
      
      private var var_2414:int;
      
      private var var_1452:int;
      
      private var var_1773:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_1773 = new Date();
         super();
         this.var_1774 = param1.readString();
         this.var_1769 = param1.readInteger();
         this.var_1771 = param1.readInteger();
         this.var_2167 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1770 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2415 = param1.readString();
         this.var_2417 = param1.readInteger();
         this.var_1772 = param1.readString();
         this.var_2416 = param1.readInteger();
         this.var_2414 = param1.readInteger();
         this.var_1452 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_1774;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1772;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1769;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1771;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2167;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1770;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2415;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2417;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2416;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2414;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1452 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_1773.getTime();
         return int(Math.max(0,this.var_1452 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1774;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1772;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1770 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1769 >= this.var_1771;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_1773;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1452 = param1;
      }
   }
}
