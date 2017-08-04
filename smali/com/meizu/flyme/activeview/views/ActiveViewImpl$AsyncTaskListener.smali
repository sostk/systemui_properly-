.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskListener"
.end annotation


# instance fields
.field private mActiveView:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V
    .locals 0
    .param p2, "bv"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 2286
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2287
    iput-object p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;->mActiveView:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .line 2288
    return-void
.end method


# virtual methods
.method public onLoadFinished(Landroid/os/AsyncTask;)V
    .locals 1
    .param p1, "asyncTask"    # Landroid/os/AsyncTask;

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;->mActiveView:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    if-nez v0, :cond_0

    .line 2295
    :goto_0
    return-void

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;->mActiveView:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$1600(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
