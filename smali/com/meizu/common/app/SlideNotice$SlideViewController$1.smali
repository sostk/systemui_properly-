.class Lcom/meizu/common/app/SlideNotice$SlideViewController$1;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 615
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 620
    :goto_0
    if-nez v0, :cond_1

    .line 623
    :goto_1
    return-void

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    goto :goto_0

    .line 621
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
