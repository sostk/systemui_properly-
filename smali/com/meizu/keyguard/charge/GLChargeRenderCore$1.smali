.class Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;
.super Landroid/database/ContentObserver;
.source "GLChargeRenderCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/charge/GLChargeRenderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/charge/GLChargeRenderCore;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 119
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get1(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_fast_charge"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 120
    .local v0, "fastCharge":Z
    :goto_0
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get3(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v1, v0}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-set0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Z)Z

    .line 122
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    iget-object v2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    iget-object v3, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v3}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get3(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-wrap0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-set1(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    :cond_0
    return-void

    .line 119
    .end local v0    # "fastCharge":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "fastCharge":Z
    goto :goto_0
.end method
