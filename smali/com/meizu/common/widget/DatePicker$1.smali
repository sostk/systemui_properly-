.class Lcom/meizu/common/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$1;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 1
    .param p1, "view"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 614
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 615
    return-void
.end method

.method public onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0
    .param p1, "view"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 610
    return-void
.end method
