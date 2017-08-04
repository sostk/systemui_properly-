.class Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "PowerSaveControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 37
    const-string/jumbo v2, "mz_current_power_mode"

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 36
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;I)I

    .line 38
    const-string/jumbo v0, "PowerSaveControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "power save mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)V

    .line 35
    return-void
.end method
