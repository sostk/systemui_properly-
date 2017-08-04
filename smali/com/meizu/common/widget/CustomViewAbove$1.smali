.class Lcom/meizu/common/widget/CustomViewAbove$1;
.super Lcom/meizu/common/widget/CustomViewAbove$SimpleOnPageChangeListener;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomViewAbove;->initCustomViewAbove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomViewAbove;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewAbove$1;->this$0:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove$1;->this$0:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomViewAbove;->access$000(Lcom/meizu/common/widget/CustomViewAbove;)Lcom/meizu/common/widget/CustomViewBehind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 168
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove$1;->this$0:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomViewAbove;->access$000(Lcom/meizu/common/widget/CustomViewAbove;)Lcom/meizu/common/widget/CustomViewBehind;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove$1;->this$0:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomViewAbove;->access$000(Lcom/meizu/common/widget/CustomViewAbove;)Lcom/meizu/common/widget/CustomViewBehind;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
