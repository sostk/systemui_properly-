.class Lcom/meizu/common/widget/DatePicker$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V
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
    .line 765
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 768
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    .line 817
    :goto_0
    return-void

    .line 768
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 769
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    goto :goto_0
.end method
