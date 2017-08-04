.class Lcom/meizu/keyguard/MzGestureHelper$3;
.super Landroid/database/ContentObserver;
.source "MzGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzGestureHelper;->registerGestureObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzGestureHelper;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzGestureHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzGestureHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/meizu/keyguard/MzGestureHelper$3;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 245
    iget-object v1, p0, Lcom/meizu/keyguard/MzGestureHelper$3;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    .line 246
    iget-object v2, p0, Lcom/meizu/keyguard/MzGestureHelper$3;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-static {v2}, Lcom/meizu/keyguard/MzGestureHelper;->-get0(Lcom/meizu/keyguard/MzGestureHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "keyguard_palm_rejection"

    .line 245
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/keyguard/MzGestureHelper;->-set1(Lcom/meizu/keyguard/MzGestureHelper;Z)Z

    .line 249
    const-string/jumbo v0, "MzGestureHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange mPalmRejectionEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/meizu/keyguard/MzGestureHelper$3;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-static {v2}, Lcom/meizu/keyguard/MzGestureHelper;->-get1(Lcom/meizu/keyguard/MzGestureHelper;)Z

    move-result v2

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
