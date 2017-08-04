.class Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;
.super Ljava/lang/Object;
.source "UnblockUiChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->startCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;->this$0:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 20
    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;->this$0:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->access$002(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;Z)Z

    .line 21
    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;->this$0:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->access$100(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;)Lcom/meizu/flyme/activeview/version/BaseChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/version/BaseChecker;->invoke()Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    move-result-object v0

    .line 22
    .local v0, "info":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    if-nez v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;->this$0:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->access$100(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;)Lcom/meizu/flyme/activeview/version/BaseChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/version/BaseChecker;->endError()V

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;->this$0:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->access$002(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;Z)Z

    .line 28
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;->this$0:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->access$100(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;)Lcom/meizu/flyme/activeview/version/BaseChecker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/activeview/version/BaseChecker;->endSuccess(Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V

    goto :goto_0
.end method
