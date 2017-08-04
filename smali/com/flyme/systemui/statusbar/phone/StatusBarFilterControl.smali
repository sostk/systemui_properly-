.class public Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;
.super Ljava/lang/Object;
.source "StatusBarFilterControl.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private colorAnimator:Landroid/animation/ValueAnimator;

.field private currentColor:I

.field private mParentView:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "StatusBarFilterControl"

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->mParentView:Landroid/view/ViewGroup;

    .line 35
    return-void
.end method

.method private setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->mParentView:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;I)V

    .line 65
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    .line 63
    return-void
.end method

.method public static setColorFilter(Landroid/view/ViewGroup;I)V
    .locals 4
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "color"    # I

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 47
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 48
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;

    if-eqz v3, :cond_1

    .line 50
    check-cast v0, Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;->setColorFilter(I)V

    .line 47
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 52
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 54
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 56
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 45
    :cond_4
    return-void
.end method


# virtual methods
.method public setFilterColor(IZ)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "withAnim"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const v1, -0xb8b8b9

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    iput-object v3, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    .line 77
    :cond_0
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    if-ne v0, v2, :cond_3

    :cond_1
    const/4 p2, 0x1

    .line 78
    .local p2, "withAnim":Z
    :goto_0
    if-eqz p2, :cond_4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_4

    :cond_2
    const/4 p2, 0x1

    .line 79
    :goto_1
    if-eqz p2, :cond_5

    .line 80
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/utils/ColorAnimUtils;->ofColor(II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;-><init>(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    :goto_2
    return-void

    .line 77
    .local p2, "withAnim":Z
    :cond_3
    const/4 p2, 0x0

    .local p2, "withAnim":Z
    goto :goto_0

    .line 78
    :cond_4
    const/4 p2, 0x0

    goto :goto_1

    .line 91
    :cond_5
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(I)V

    goto :goto_2
.end method
