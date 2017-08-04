.class Lcom/meizu/keyguard/MzGestureHelper$1;
.super Ljava/lang/Object;
.source "MzGestureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzGestureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzGestureHelper;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzGestureHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzGestureHelper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/keyguard/MzGestureHelper$1;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "MzGestureHelper"

    const-string/jumbo v1, "mResetLaunchAppUnlocked run ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/meizu/keyguard/MzGestureHelper;->-set0(I)I

    .line 65
    return-void
.end method
