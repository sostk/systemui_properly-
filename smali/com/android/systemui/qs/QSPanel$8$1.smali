.class Lcom/android/systemui/qs/QSPanel$8$1;
.super Landroid/view/View$DragShadowBuilder;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel$8;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSPanel$8;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel$8;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/QSPanel$8;
    .param p2, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$8$1;->this$1:Lcom/android/systemui/qs/QSPanel$8;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel$8$1;->getView()Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 520
    iget v1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/flyme/systemui/statusbar/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 516
    :cond_0
    return-void
.end method
