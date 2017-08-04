.class public Lcom/meizu/common/widget/ProgressTextButtonView;
.super Landroid/widget/FrameLayout;
.source "ProgressTextButtonView.java"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mButton:Lcom/meizu/common/widget/CircularProgressButton;

.field private mIsShowText:Z

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mIsShowText:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mIsShowText:Z

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ProgressTextButtonView;)Lcom/meizu/common/widget/CircularProgressButton;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ProgressTextButtonView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ProgressTextButtonView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ProgressTextButtonView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public cancelAllAnimation()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    if-nez v0, :cond_1

    .line 229
    :goto_1
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton;->cancelAllAnimation()V

    goto :goto_1
.end method

.method public getButton()Lcom/meizu/common/widget/CircularProgressButton;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 138
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressTextButtonView;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 142
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressTextButtonView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 149
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mIsShowText:Z

    invoke-virtual {p0, v1, v3}, Lcom/meizu/common/widget/ProgressTextButtonView;->showText(ZZ)V

    .line 150
    return-void

    .line 139
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ProgressTextButtonView must has two children"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/meizu/common/widget/CircularProgressButton;

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 142
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/CircularProgressButton;

    iput-object v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ProgressTextButtonView;

    .line 250
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method public showText(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "useAnim"    # Z

    .prologue
    const/16 v1, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 158
    if-eqz p2, :cond_1

    .line 169
    if-nez p1, :cond_3

    :cond_0
    if-eqz p1, :cond_5

    :goto_0
    const/4 v0, 0x2

    .line 172
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 173
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/ProgressTextButtonView$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/common/widget/ProgressTextButtonView$1;-><init>(Lcom/meizu/common/widget/ProgressTextButtonView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/ProgressTextButtonView$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/common/widget/ProgressTextButtonView$2;-><init>(Lcom/meizu/common/widget/ProgressTextButtonView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    :goto_1
    return-void

    .line 159
    :cond_1
    if-nez p1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :cond_4
    return-void

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0
.end method
