.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$7;
.super Landroid/view/ViewOutlineProvider;
.source "ActiveViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setRoundCorner(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

.field final synthetic val$radius:F


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;F)V
    .locals 0

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$7;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    iput p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$7;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v1, 0x0

    .line 1490
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 1493
    :goto_0
    return-void

    .line 1491
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$7;->val$radius:F

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0
.end method
