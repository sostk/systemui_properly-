.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;
.super Landroid/database/ContentObserver;
.source "MzKeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get8(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get8(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1$1;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_0
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessagerObserver, onChange, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get16(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 171
    return-void
.end method
