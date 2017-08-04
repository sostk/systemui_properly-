.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 4146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4148
    sget-boolean v23, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v23, :cond_0

    const-string/jumbo v23, "PhoneStatusBar"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onReceive: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 4150
    .local v5, "action":Ljava/lang/String;
    const-string/jumbo v23, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 4151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->getSendingUserId()I

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap4(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 4152
    const/4 v14, 0x0

    .line 4153
    .local v14, "flags":I
    const-string/jumbo v23, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4154
    .local v20, "reason":Ljava/lang/String;
    if-eqz v20, :cond_1

    const-string/jumbo v23, "recentapps"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 4155
    const/4 v14, 0x2

    .line 4157
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4147
    .end local v14    # "flags":I
    .end local v20    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 4160
    :cond_3
    const-string/jumbo v23, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 4161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get16(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setScreenOn(Z)V

    .line 4168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 4169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    goto :goto_0

    .line 4173
    :cond_4
    const-string/jumbo v23, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 4174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get16(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setScreenOn(Z)V

    goto/16 :goto_0

    .line 4180
    :cond_5
    const-string/jumbo v23, "com.android.systemui.demo"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 4181
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 4182
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_2

    .line 4183
    const-string/jumbo v23, "command"

    const-string/jumbo v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 4184
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2

    .line 4186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4187
    :catch_0
    move-exception v21

    .line 4188
    .local v21, "t":Ljava/lang/Throwable;
    const-string/jumbo v23, "PhoneStatusBar"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error running demo command, intent="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4192
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "command":Ljava/lang/String;
    .end local v21    # "t":Ljava/lang/Throwable;
    :cond_6
    const-string/jumbo v23, "fake_artwork"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 4196
    const-string/jumbo v23, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 4197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    .line 4198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 4197
    invoke-static/range {v24 .. v24}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lmeizu/wallpaper/FlymeWallpaperManager;->getLockWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set8(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4200
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get34(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError; {:try_start_1 .. :try_end_1} :catch_1

    .line 4204
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v23 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZZ)V

    goto/16 :goto_0

    .line 4207
    :cond_7
    const-string/jumbo v23, "android.intent.action.ACCESS_CONTROL_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 4208
    const-string/jumbo v23, "PhoneStatusBar"

    const-string/jumbo v24, "ACCESS_CONTROL_CHANGED!!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    invoke-static {}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->clearAppEncrptedCache()V

    .line 4213
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentExt;->getAccessPackageName()Ljava/lang/String;

    move-result-object v19

    .line 4215
    .local v19, "pkg":Ljava/lang/String;
    const-string/jumbo v23, "fromNotification"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 4217
    .local v15, "fromNotification":Z
    const-string/jumbo v23, "PhoneStatusBar"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "changed pkg = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    if-nez v19, :cond_13

    .line 4224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsAppLockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 4228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    .line 4230
    .local v4, "N":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v4, :cond_c

    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 4232
    .local v9, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4234
    .local v8, "curPkg":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4235
    .local v17, "isFakeExist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_8

    .line 4236
    const/16 v17, 0x1

    .line 4239
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_9

    if-eqz v17, :cond_a

    .line 4230
    :cond_9
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 4241
    :cond_a
    new-instance v13, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4242
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 4241
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 4243
    .local v13, "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    .line 4245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get43(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap3(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 4249
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/NotificationData;->addFake(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 4250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSortFakeEntries()V

    .line 4251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v23, v0

    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4254
    .end local v8    # "curPkg":Ljava/lang/String;
    .end local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v13    # "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v17    # "isFakeExist":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap31(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 4328
    .end local v4    # "N":I
    .end local v16    # "i":I
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClickedFakeNotiPackageName:Ljava/lang/String;

    goto/16 :goto_0

    .line 4260
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    .line 4262
    .restart local v4    # "N":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 4264
    .local v22, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v4, :cond_10

    .line 4265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 4266
    .restart local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4268
    .restart local v8    # "curPkg":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4269
    .restart local v17    # "isFakeExist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_f

    .line 4270
    const/16 v17, 0x1

    .line 4275
    if-eqz v17, :cond_f

    .line 4276
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4264
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 4280
    .end local v8    # "curPkg":Ljava/lang/String;
    .end local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v17    # "isFakeExist":Z
    :cond_10
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "fake$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4281
    .local v11, "fake":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4282
    const-string/jumbo v23, "com.android.dialer"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 4283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const-string/jumbo v24, "com.android.phone"

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const-string/jumbo v24, "com.android.server.telecom"

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    goto :goto_6

    .line 4288
    .end local v11    # "fake":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap31(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto/16 :goto_4

    .line 4297
    .end local v4    # "N":I
    .end local v12    # "fake$iterator":Ljava/util/Iterator;
    .end local v16    # "i":I
    .end local v22    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 4298
    const-string/jumbo v23, "PhoneStatusBar"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "wrong password or exit password input activity..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4300
    :cond_14
    const-string/jumbo v23, "PhoneStatusBar"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "correct password!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4302
    const-string/jumbo v23, "com.android.dialer"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 4303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const-string/jumbo v24, "com.android.phone"

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const-string/jumbo v24, "com.android.server.telecom"

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4306
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap31(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 4312
    if-eqz v15, :cond_d

    .line 4313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getOnlyOneNotiForPkg(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v18

    .line 4314
    .local v18, "only":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v18, :cond_16

    .line 4318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->simulateNotiOnClick(Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_4

    .line 4323
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto/16 :goto_4

    .line 4332
    .end local v15    # "fromNotification":Z
    .end local v18    # "only":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_17
    const-string/jumbo v23, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotificationsAndNoAnimation(Z)V

    .line 4334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotificationsAndNoAnimation(Z)V

    .line 4335
    const-string/jumbo v23, "PhoneStatusBar"

    const-string/jumbo v24, "demoMode receive DELAYED_PLAYVIDEO_ACTION and clearAllNotifications"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4338
    :cond_18
    const-string/jumbo v23, "android.intent.action.PROXIMITY_SCREEN_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get23(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get23(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v24

    const-wide/16 v26, 0x1e

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4201
    :catch_1
    move-exception v10

    .local v10, "e":Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;
    goto/16 :goto_1
.end method
