.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;
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
    .line 121
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-set2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 128
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "firsthelp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_smart_touch_switch"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 130
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-wrap1(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    .line 123
    :cond_0
    return-void
.end method
