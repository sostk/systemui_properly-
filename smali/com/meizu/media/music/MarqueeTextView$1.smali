.class Lcom/meizu/media/music/MarqueeTextView$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/MarqueeTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/MarqueeTextView;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0}, Lcom/meizu/media/music/MarqueeTextView;->-get6(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0}, Lcom/meizu/media/music/MarqueeTextView;->-get5(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0}, Lcom/meizu/media/music/MarqueeTextView;->-wrap0(Lcom/meizu/media/music/MarqueeTextView;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0}, Lcom/meizu/media/music/MarqueeTextView;->-get6(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v1}, Lcom/meizu/media/music/MarqueeTextView;->-get5(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0, v2}, Lcom/meizu/media/music/MarqueeTextView;->-set1(Lcom/meizu/media/music/MarqueeTextView;Z)Z

    .line 109
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0}, Lcom/meizu/media/music/MarqueeTextView;->-get1(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v1}, Lcom/meizu/media/music/MarqueeTextView;->-get2(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 116
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0, v2}, Lcom/meizu/media/music/MarqueeTextView;->-set1(Lcom/meizu/media/music/MarqueeTextView;Z)Z

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0}, Lcom/meizu/media/music/MarqueeTextView;->-get3(Lcom/meizu/media/music/MarqueeTextView;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    return-void

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v0}, Lcom/meizu/media/music/MarqueeTextView;->-get1(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/media/music/MarqueeTextView;->-set0(Lcom/meizu/media/music/MarqueeTextView;I)I

    .line 128
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    iget-object v1, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v1}, Lcom/meizu/media/music/MarqueeTextView;->-get1(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/music/MarqueeTextView;->scrollTo(II)V

    .line 130
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    iget-object v1, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v1}, Lcom/meizu/media/music/MarqueeTextView;->-get4(Lcom/meizu/media/music/MarqueeTextView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/music/MarqueeTextView$1;->this$0:Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v2}, Lcom/meizu/media/music/MarqueeTextView;->-get0(Lcom/meizu/media/music/MarqueeTextView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/media/music/MarqueeTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method
