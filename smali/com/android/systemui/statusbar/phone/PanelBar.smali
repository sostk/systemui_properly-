.class public Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIsLandscapeMode:Z

.field private mIsTransiting:Z

.field mPanelExpandedFractionSum:F

.field mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

.field mPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 60
    return-void
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 69
    return-void
.end method

.method public collapseAllPanels(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "waiting":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 200
    .local v0, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantCollapse()V

    goto :goto_0

    .line 202
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsLandscapeMode:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(Z)V

    .line 204
    const/4 v2, 0x1

    .line 200
    goto :goto_0

    :cond_2
    move v3, v4

    .line 202
    goto :goto_1

    .line 216
    .end local v0    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_3
    if-nez v2, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v3, :cond_4

    .line 219
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 197
    :cond_4
    return-void
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public go(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 55
    return-void
.end method

.method public onAllPanelsCollapsed()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 65
    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "openPanel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 232
    return-void
.end method

.method public onPanelPeeked()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 108
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v5, v10, [Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 108
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return v7

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v1

    .line 117
    .local v1, "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_2

    .line 119
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: no panel for touch at (%d,%d)"

    new-array v5, v10, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 119
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 122
    return v8

    .line 124
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 127
    .local v0, "enabled":Z
    if-nez v0, :cond_3

    .line 129
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 130
    const-string/jumbo v4, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 129
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 131
    aput-object v1, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 129
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 133
    return v8

    .line 135
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 137
    .end local v0    # "enabled":Z
    .end local v1    # "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_5

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 140
    :goto_0
    return v2

    .line 139
    :cond_5
    const/4 v2, 0x1

    .local v2, "result":Z
    goto :goto_0
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 3
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    const/4 v2, 0x1

    .line 237
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 242
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTrackingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsTransiting:Z

    .line 236
    return-void
.end method

.method public onTrackingStopped()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 250
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 0
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "expand"    # Z

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped()V

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTransitingStoped()V

    .line 246
    return-void
.end method

.method public onTransitingStoped()V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransitingStoped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsTransiting:Z

    .line 253
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .locals 10
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "frac"    # F
    .param p3, "expanded"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 162
    const/4 v0, 0x1

    .line 163
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 165
    .local v1, "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 166
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    .local v3, "pv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 167
    .local v2, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getBarState()I

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v5, 0x1

    .line 168
    .local v5, "visible":Z
    :goto_1
    if-eqz v5, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 170
    if-eqz p3, :cond_0

    .line 171
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v6, :cond_2

    .line 172
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 175
    :cond_2
    const/4 v0, 0x0

    .line 176
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 177
    .local v4, "thisFrac":F
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v5, :cond_5

    move v6, v4

    :goto_3
    add-float/2addr v6, v9

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 179
    if-ne p1, v2, :cond_0

    .line 180
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-nez v6, :cond_0

    move-object v1, p1

    .local v1, "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    goto :goto_0

    .line 167
    .end local v1    # "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v4    # "thisFrac":F
    .end local v5    # "visible":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "visible":Z
    goto :goto_1

    .line 168
    :cond_4
    const/16 v6, 0x8

    goto :goto_2

    .restart local v4    # "thisFrac":F
    :cond_5
    move v6, v8

    .line 177
    goto :goto_3

    .line 184
    .end local v2    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v4    # "thisFrac":F
    .end local v5    # "visible":Z
    :cond_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 185
    if-eqz v1, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v6, :cond_9

    .line 188
    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v6, :cond_a

    .line 161
    :cond_8
    :goto_4
    return-void

    .line 185
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsTransiting:Z

    if-nez v6, :cond_7

    .line 186
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    goto :goto_4

    .line 188
    :cond_a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsTransiting:Z

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v6, :cond_8

    .line 189
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    goto :goto_4
.end method

.method public panelExpansionChangedInKeyguardShade(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .locals 11
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "frac"    # F
    .param p3, "expanded"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 267
    const/4 v0, 0x1

    .line 268
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 270
    .local v1, "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 271
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    .local v3, "pv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 272
    .local v2, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsTransiting:Z

    .line 273
    :goto_1
    if-eqz v5, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 274
    if-nez v5, :cond_1

    .line 275
    invoke-virtual {v2, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->setFullyCollapsedOnKeyguardShade(Z)V

    .line 276
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 279
    :cond_1
    if-eqz p3, :cond_0

    .line 280
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v6, :cond_2

    .line 281
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 284
    :cond_2
    const/4 v0, 0x0

    .line 285
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 286
    .local v4, "thisFrac":F
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v5, :cond_5

    move v6, v4

    :goto_3
    add-float/2addr v6, v9

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 288
    if-ne p1, v2, :cond_0

    .line 289
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-nez v6, :cond_0

    move-object v1, p1

    .local v1, "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    goto :goto_0

    .line 272
    .end local v1    # "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v4    # "thisFrac":F
    :cond_3
    const/4 v5, 0x1

    .local v5, "visible":Z
    goto :goto_1

    .line 273
    .end local v5    # "visible":Z
    :cond_4
    const/16 v6, 0x8

    goto :goto_2

    .restart local v4    # "thisFrac":F
    :cond_5
    move v6, v8

    .line 286
    goto :goto_3

    .line 293
    .end local v2    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v4    # "thisFrac":F
    :cond_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 294
    if-eqz v1, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v6, :cond_9

    .line 297
    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v6, :cond_a

    .line 266
    :cond_8
    :goto_4
    return-void

    .line 294
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsTransiting:Z

    if-nez v6, :cond_7

    .line 295
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    goto :goto_4

    .line 297
    :cond_a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsTransiting:Z

    if-nez v6, :cond_8

    .line 298
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    goto :goto_4
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 4
    .param p1, "touch"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 96
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    return-object v1
.end method

.method public setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V
    .locals 6
    .param p1, "ph"    # Lcom/android/systemui/statusbar/phone/PanelHolder;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setPanelHolder: null PanelHolder"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildCount()I

    move-result v0

    .line 82
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 83
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_1

    .line 85
    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    return-void
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 4
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setSelectedPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 149
    .local v0, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eq v0, p1, :cond_0

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(Z)V

    goto :goto_0

    .line 144
    .end local v0    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mIsLandscapeMode:Z

    .line 308
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
