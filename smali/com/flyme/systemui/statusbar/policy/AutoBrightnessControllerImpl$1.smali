.class Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "AutoBrightnessControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 34
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 35
    const-string/jumbo v3, "screen_brightness_mode"

    .line 36
    const/4 v4, -0x2

    .line 34
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Z)Z

    .line 37
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)V

    .line 32
    return-void
.end method
