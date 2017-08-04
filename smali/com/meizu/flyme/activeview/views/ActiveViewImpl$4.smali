.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$4;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->clearCacheFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$4;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$4;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$600(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/CacheUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/CacheUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$4;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$700(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/utils/CacheUtils;->clearCacheFolder(Ljava/lang/String;)I

    .line 712
    return-void
.end method
