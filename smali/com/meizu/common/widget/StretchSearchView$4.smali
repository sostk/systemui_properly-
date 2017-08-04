.class Lcom/meizu/common/widget/StretchSearchView$4;
.super Ljava/lang/Object;
.source "StretchSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/StretchSearchView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/StretchSearchView;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$4;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$4;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StretchSearchView;->startStretch()V

    .line 692
    return-void
.end method
