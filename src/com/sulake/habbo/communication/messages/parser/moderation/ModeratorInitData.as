package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1431:Array;
      
      private var var_1432:Array;
      
      private var _issues:Array;
      
      private var var_1158:Array;
      
      private var var_2327:Boolean;
      
      private var var_2329:Boolean;
      
      private var var_2328:Boolean;
      
      private var var_2330:Boolean;
      
      private var var_2333:Boolean;
      
      private var var_2332:Boolean;
      
      private var var_2331:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1431 = [];
         this.var_1432 = [];
         this.var_1158 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1431.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1158.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_2327 = param1.readBoolean();
         this.var_2329 = param1.readBoolean();
         this.var_2328 = param1.readBoolean();
         this.var_2330 = param1.readBoolean();
         this.var_2333 = param1.readBoolean();
         this.var_2332 = param1.readBoolean();
         this.var_2331 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1432.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1431 = null;
         this.var_1432 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1158)
         {
            _loc1_.dispose();
         }
         this.var_1158 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1431;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1432;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1158;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_2327;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_2329;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_2328;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_2330;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_2333;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_2332;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_2331;
      }
   }
}
