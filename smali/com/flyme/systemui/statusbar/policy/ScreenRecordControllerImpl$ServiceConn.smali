.class Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;
.super Ljava/lang/Object;
.source "ScreenRecordControllerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 128
    const-string/jumbo v1, "ScreenRecordController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-set2(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)Z

    .line 130
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {p2}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-set1(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;)V

    invoke-interface {v1, v2}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;->setOnRecordChangeListener(Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;)V

    .line 133
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    move-result-object v1

    invoke-interface {v1}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    move-result-object v1

    invoke-interface {v1}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    .line 127
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-set2(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)Z

    .line 138
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 145
    const-string/jumbo v0, "ScreenRecordController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-set2(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)Z

    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-set1(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    .line 148
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    .line 144
    return-void
.end method
