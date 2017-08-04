.class Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "RingerModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 42
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 43
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 44
    const/4 v4, -0x2

    .line 42
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-set1(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V

    .line 40
    return-void
.end method
