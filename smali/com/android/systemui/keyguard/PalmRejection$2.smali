.class Lcom/android/systemui/keyguard/PalmRejection$2;
.super Ljava/lang/Object;
.source "PalmRejection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/PalmRejection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/PalmRejection;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/PalmRejection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/PalmRejection;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/keyguard/PalmRejection$2;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection$2;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-static {v0}, Lcom/android/systemui/keyguard/PalmRejection;->-get3(Lcom/android/systemui/keyguard/PalmRejection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "PalmRejection"

    const-string/jumbo v1, "mShowDisableProximityRunnable.run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection$2;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-static {v0}, Lcom/android/systemui/keyguard/PalmRejection;->-wrap0(Lcom/android/systemui/keyguard/PalmRejection;)V

    .line 78
    :cond_0
    return-void
.end method
