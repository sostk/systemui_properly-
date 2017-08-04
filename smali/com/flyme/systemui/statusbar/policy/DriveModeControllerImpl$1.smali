.class Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "DriveModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mz_drive_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Z)Z

    .line 95
    const-string/jumbo v0, "DriveModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange mUserInitiated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)V

    .line 93
    return-void

    :cond_0
    move v0, v1

    .line 94
    goto :goto_0
.end method
