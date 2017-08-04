.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$13;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$13;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$13;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap6(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 444
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    const-string/jumbo v1, "MzKeyguardFindPhoneView, pickWifiNetwork"

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 442
    return-void
.end method
