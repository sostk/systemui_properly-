.class Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;
.super Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub;
.source "ScreenRecordControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenRecordCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-direct {p0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    return-void
.end method


# virtual methods
.method public recordRunningChange(Z)V
    .locals 3
    .param p1, "isRunning"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, "ScreenRecordController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordRunningChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->running(Z)V

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    .line 154
    return-void
.end method
