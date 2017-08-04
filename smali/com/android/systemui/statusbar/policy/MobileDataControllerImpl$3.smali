.class Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;
.super Ljava/lang/Object;
.source "MobileDataControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setPreferredMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

.field final synthetic val$newMode:I

.field final synthetic val$oldMode:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;
    .param p2, "val$newMode"    # I
    .param p3, "val$oldMode"    # I

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->val$newMode:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->val$oldMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 354
    const-string/jumbo v4, "phone_ext"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;

    move-result-object v1

    .line 357
    .local v1, "iPhoneEx":Landroid/telephony/ITelephonyExt;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)I

    move-result v2

    .line 358
    .local v2, "phoneSubId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->val$newMode:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->val$newMode:I

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/telephony/ITelephonyExt;->setPreferredNetworkType(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    const-string/jumbo v4, "MobileDataController"

    const-string/jumbo v5, "set preferred mode failed. try to use default mode."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-interface {v1}, Landroid/telephony/ITelephonyExt;->getPreferredNetworkType()I

    move-result v3

    .line 364
    .local v3, "value":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 365
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    .end local v2    # "phoneSubId":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v2    # "phoneSubId":I
    .restart local v3    # "value":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;->val$oldMode:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    .end local v2    # "phoneSubId":I
    .end local v3    # "value":I
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
