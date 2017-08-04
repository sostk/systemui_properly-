.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$2;
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
    .line 184
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 188
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessagerObserver, onChange, numder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get12(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 186
    return-void
.end method
