.class public Lcom/flyme/systemui/statusbar/ConnectionRateView;
.super Landroid/widget/LinearLayout;
.source "ConnectionRateView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;


# instance fields
.field private mRateView:Landroid/widget/TextView;

.field private mUnitView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private updateConnectionRate(D)V
    .locals 7
    .param p1, "rate"    # D

    .prologue
    .line 51
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 52
    .local v0, "formatter":Ljava/text/DecimalFormat;
    const-string/jumbo v1, ""

    .line 53
    .local v1, "style":Ljava/lang/String;
    const/4 v2, 0x0

    .line 55
    .local v2, "unitIconId":I
    const-wide/16 v4, 0x0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_2

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_2

    .line 56
    const v2, 0x7f02062f

    .line 66
    :goto_0
    const-wide/16 v4, 0x0

    cmpl-double v3, p1, v4

    if-nez v3, :cond_4

    .line 67
    const-string/jumbo v1, "0"

    .line 76
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :cond_1
    return-void

    .line 57
    :cond_2
    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_3

    const-wide v4, 0x412f400000000000L    # 1024000.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_3

    .line 58
    const v2, 0x7f020630

    .line 59
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v4

    .line 57
    goto :goto_0

    .line 62
    :cond_3
    const v2, 0x7f02062f

    .line 63
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 68
    :cond_4
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_5

    .line 69
    const-string/jumbo v1, "0.00"

    goto :goto_1

    .line 70
    :cond_5
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_6

    .line 71
    const-string/jumbo v1, "00.0"

    goto :goto_1

    .line 72
    :cond_6
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_0

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_0

    .line 73
    const-string/jumbo v1, "000"

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 38
    const v0, 0x7f0f0056

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    .line 36
    return-void
.end method

.method public onConnectionRateChange(ZD)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "rate"    # D

    .prologue
    .line 86
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->setVisibility(I)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->updateConnectionRate(D)V

    .line 85
    :cond_0
    return-void

    .line 86
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 43
    return-void
.end method
