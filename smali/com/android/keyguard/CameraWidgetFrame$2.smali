.class Lcom/android/keyguard/CameraWidgetFrame$2;
.super Ljava/lang/Object;
.source "CameraWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->-get4(Lcom/android/keyguard/CameraWidgetFrame;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v1}, Lcom/android/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v1}, Lcom/android/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 84
    .local v0, "worker":Landroid/os/Handler;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/CameraWidgetFrame;->-set0(Lcom/android/keyguard/CameraWidgetFrame;J)J

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->-get0(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v2}, Lcom/android/keyguard/CameraWidgetFrame;->-get2(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 80
    return-void

    .line 83
    .end local v0    # "worker":Landroid/os/Handler;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->-get1(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;

    move-result-object v0

    .restart local v0    # "worker":Landroid/os/Handler;
    goto :goto_0
.end method
