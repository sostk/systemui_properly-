.class Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "EnterAnimateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/EnterAnimateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimateViewBounds"
.end annotation


# instance fields
.field mAlpha:F

.field mCornerRadius:I

.field final mV:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cornerRadius"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;->mAlpha:F

    .line 57
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;->mV:Landroid/view/View;

    .line 58
    iput p2, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;->mCornerRadius:I

    .line 56
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v1, 0x0

    .line 63
    iget v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 65
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;->mV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;->mV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 67
    iget v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;->mCornerRadius:I

    int-to-float v5, v0

    move-object v0, p2

    move v2, v1

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 62
    return-void
.end method
