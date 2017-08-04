.class abstract Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;
.super Ljava/lang/Thread;
.source "MzKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private mSubId:I

.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPinView;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 211
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    .line 213
    iput p3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->mSubId:I

    .line 211
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(II)V
.end method

.method public run()V
    .locals 6

    .prologue
    .line 222
    :try_start_0
    const-string/jumbo v2, "MzKeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call supplyPinReportResultForSubscriber(subid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string/jumbo v2, "phone"

    .line 224
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 225
    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->mSubId:I

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    .line 224
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1

    .line 227
    .local v1, "result":[I
    const-string/jumbo v2, "MzKeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supplyPinReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v2, 0x0

    aget v2, v1, v2

    if-nez v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get2(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v3}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get1(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1770

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin$1;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;[I)V

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "result":[I
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MzKeyguardSimPinView"

    const-string/jumbo v3, "RemoteException for supplyPinReportResult:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin$2;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
