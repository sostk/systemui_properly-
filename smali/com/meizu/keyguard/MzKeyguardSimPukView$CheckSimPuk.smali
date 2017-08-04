.class abstract Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "MzKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private final mSubId:I

.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPukView;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .prologue
    .line 257
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 260
    iput p4, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->mSubId:I

    .line 257
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(II)V
.end method

.method public run()V
    .locals 6

    .prologue
    .line 268
    :try_start_0
    const-string/jumbo v2, "MzKeyguardSimPukView"

    const-string/jumbo v3, "call supplyPukReportResult()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string/jumbo v2, "phone"

    .line 269
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 270
    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->mSubId:I

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 269
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 272
    .local v1, "result":[I
    const-string/jumbo v2, "MzKeyguardSimPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supplyPukReportResult returned: "

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

    .line 274
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;[I)V

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "result":[I
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MzKeyguardSimPukView"

    const-string/jumbo v3, "RemoteException for supplyPukReportResult:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$2;

    invoke-direct {v3, p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$2;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;)V

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
