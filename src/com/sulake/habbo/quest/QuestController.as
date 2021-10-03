package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_593:QuestsList;
      
      private var var_497:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_420:QuestTracker;
      
      private var var_727:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_420 = new QuestTracker(this._questEngine);
         this.var_593 = new QuestsList(this._questEngine);
         this.var_497 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_727 = new NextQuestTimer(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_593.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_593.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_420.onQuest(param1);
         this.var_497.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_727.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_420.onQuestCompleted(param1);
         this.var_497.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_420.onQuestCancelled();
         this.var_497.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_727.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_420.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_593.onRoomExit();
         this.var_420.onRoomExit();
         this.var_497.onRoomExit();
         this.var_727.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_420.update(param1);
         this.var_727.update(param1);
         this.var_593.update(param1);
         this.var_497.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_593)
         {
            this.var_593.dispose();
            this.var_593 = null;
         }
         if(this.var_420)
         {
            this.var_420.dispose();
            this.var_420 = null;
         }
         if(this.var_497)
         {
            this.var_497.dispose();
            this.var_497 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_727)
         {
            this.var_727.dispose();
            this.var_727 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_593;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_497;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_420;
      }
   }
}
