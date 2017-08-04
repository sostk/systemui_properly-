.class Lcom/meizu/keyguard/MzKeyguardSimPinView$2;
.super Ljava/lang/Object;
.source "MzKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPinView;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get4(Lcom/meizu/keyguard/MzKeyguardSimPinView;)I

    move-result v1

    .line 417
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 416
    return-void
.end method
