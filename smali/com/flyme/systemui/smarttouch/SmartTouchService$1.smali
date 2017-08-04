.class Lcom/flyme/systemui/smarttouch/SmartTouchService$1;
.super Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;
.source "SmartTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchService;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouchService;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchService;

    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public forceHideSmartTouch(Z)V
    .locals 4
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchService;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "callingApp":Ljava/lang/String;
    const-string/jumbo v1, "SmartTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceHideSmartTouch == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onForceHide(Z)V

    .line 13
    return-void
.end method
