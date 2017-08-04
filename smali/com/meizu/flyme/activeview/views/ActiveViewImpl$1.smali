.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->downloadImage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
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
    .line 468
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadError(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "errStr"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 471
    if-eq p1, v4, :cond_0

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$200(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 483
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    if-nez v0, :cond_3

    .line 486
    :goto_2
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$000(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    :goto_3
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$000(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$100(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    .line 474
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$000(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$200(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;->onLoadFinished(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load image success, url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v3}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$400(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_2
.end method
