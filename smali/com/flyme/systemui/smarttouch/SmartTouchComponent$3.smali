.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;
.super Ljava/lang/Object;
.source "SmartTouchComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->setSmartTouchOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
    .param p2, "val$preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 109
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-set2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 110
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "firsthelp"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_smart_touch_switch"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 112
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-wrap1(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.meizu.smarttouch_settings"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
