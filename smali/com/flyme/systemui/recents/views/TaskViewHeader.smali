.class public Lcom/flyme/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/RelativeLayout;
.source "TaskViewHeader.java"


# static fields
.field static sHighlightPaint:Landroid/graphics/Paint;


# instance fields
.field mActivityDescription:Landroid/widget/TextView;

.field mActivityLock:Landroid/widget/ImageView;

.field mApplicationIcon:Landroid/widget/ImageView;

.field mApplicationIcon2:Landroid/widget/ImageView;

.field mBackground:Landroid/graphics/drawable/RippleDrawable;

.field mBackgroundColor:I

.field mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mCurrentPrimaryColor:I

.field mCurrentPrimaryColorIsDark:Z

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mDismissContentDescription:Ljava/lang/String;

.field mFocusAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 93
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 94
    invoke-virtual {p0, v3}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0901d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mDismissContentDescription:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/flyme/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/flyme/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    .line 105
    sget-object v1, Lcom/flyme/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    sget-object v1, Lcom/flyme/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    sget-object v1, Lcom/flyme/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    sget-object v1, Lcom/flyme/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 109
    sget-object v1, Lcom/flyme/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method private static setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 1
    .param p0, "mApplicationIcon"    # Landroid/widget/ImageView;
    .param p1, "mActivityDescription"    # Landroid/widget/TextView;
    .param p2, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 265
    iget-object v0, p2, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p2, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    if-eqz p1, :cond_1

    iget-object v0, p2, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_1
    return-void

    .line 267
    :cond_2
    iget-object v0, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method getSecondaryColor(IZ)I
    .locals 2
    .param p1, "primaryColor"    # I
    .param p2, "useLightOverlayColor"    # Z

    .prologue
    .line 176
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .line 177
    .local v0, "overlayColor":I
    :goto_0
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/flyme/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    .line 176
    .end local v0    # "overlayColor":I
    :cond_0
    const/high16 v0, -0x1000000

    .restart local v0    # "overlayColor":I
    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1
    .param p1, "extraSpace"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    const v0, 0x7f0f0209

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0f020a

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0f020c

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0f020b

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02052d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 141
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02052c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 142
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 143
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 144
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getId(I)I

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 145
    invoke-virtual {p0, v3}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method onTaskViewFocusChanged(ZZ)V
    .locals 13
    .param p1, "focused"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    .line 342
    if-nez p2, :cond_0

    return-void

    .line 344
    :cond_0
    const/4 v3, 0x0

    .line 345
    .local v3, "isRunning":Z
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_1

    .line 346
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    .line 347
    .local v3, "isRunning":Z
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v9}, Lcom/flyme/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 350
    .end local v3    # "isRunning":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 351
    iget v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v6

    .line 352
    .local v6, "secondaryColor":I
    const/4 v9, 0x2

    new-array v7, v9, [[I

    .line 353
    const/4 v9, 0x1

    new-array v9, v9, [I

    const v10, 0x101009e

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 354
    const/4 v9, 0x1

    new-array v9, v9, [I

    const v10, 0x10100a7

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 357
    .local v7, "states":[[I
    const v9, 0x101009e

    .line 358
    const v10, 0x10100a7

    .line 356
    filled-new-array {v9, v10}, [I

    move-result-object v5

    .line 360
    .local v5, "newStates":[I
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 361
    const/4 v9, 0x0

    aput v6, v1, v9

    .line 362
    const/4 v9, 0x1

    aput v6, v1, v9

    .line 364
    .local v1, "colors":[I
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 365
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 367
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 368
    .local v2, "currentColor":I
    iget v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v4

    .line 369
    .local v4, "lightPrimaryColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 369
    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 371
    .local v0, "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/flyme/systemui/recents/views/TaskViewHeader$1;

    invoke-direct {v9, p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/flyme/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    new-instance v9, Lcom/flyme/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v9, p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/flyme/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 386
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 388
    const-string/jumbo v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 389
    .local v8, "translation":Landroid/animation/ObjectAnimator;
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 390
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 392
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 393
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 394
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 395
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 396
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 340
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v1    # "colors":[I
    .end local v2    # "currentColor":I
    .end local v4    # "lightPrimaryColor":I
    .end local v5    # "newStates":[I
    .end local v6    # "secondaryColor":I
    .end local v7    # "states":[[I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 398
    :cond_2
    if-eqz v3, :cond_3

    .line 400
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 401
    .restart local v2    # "currentColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget v11, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 401
    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 403
    .restart local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/flyme/systemui/recents/views/TaskViewHeader$3;

    invoke-direct {v9, p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader$3;-><init>(Lcom/flyme/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    const-string/jumbo v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 414
    .restart local v8    # "translation":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 415
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 416
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 417
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 419
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v2    # "currentColor":I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 420
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setTranslationZ(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public rebindToTask(Lcom/flyme/systemui/recents/model/Task;)V
    .locals 9
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 182
    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 184
    invoke-virtual {p0, v6}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setVisibility(I)V

    .line 185
    return-void

    .line 188
    :cond_0
    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    .line 189
    .local v0, "child":Lcom/flyme/systemui/recents/model/Task;
    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 190
    :cond_1
    invoke-virtual {p0, v6}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setVisibility(I)V

    .line 191
    return-void

    .line 189
    :cond_2
    iget-object v2, v0, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 195
    .end local v0    # "child":Lcom/flyme/systemui/recents/model/Task;
    :cond_3
    iget-boolean v2, p1, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/SpecialConditions;->isHideTaskviewHead(Lcom/flyme/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    :cond_4
    invoke-virtual {p0, v6}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setVisibility(I)V

    .line 181
    :goto_0
    return-void

    .line 198
    :cond_5
    invoke-virtual {p0, v4}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setVisibility(I)V

    .line 199
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 200
    iget v2, p1, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 202
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v2

    iget-object v3, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/model/LockTaskManager;->isPackageLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :goto_1
    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-nez v2, :cond_8

    .line 218
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V

    .line 253
    :goto_2
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v2

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 254
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v3

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 253
    invoke-virtual {p0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 255
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    goto :goto_0

    .line 210
    :cond_6
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 213
    :cond_7
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 224
    :cond_8
    iget-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/model/Task;

    .line 225
    .local v1, "splitTask":Lcom/flyme/systemui/recents/model/Task;
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isMutilStack(Lcom/flyme/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 226
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-static {v2, v3, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V

    goto :goto_2

    .line 231
    :cond_9
    invoke-static {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isMutilStack(Lcom/flyme/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 232
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V

    goto :goto_2

    .line 238
    :cond_a
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget v2, p1, Lcom/flyme/systemui/recents/model/Task;->splitMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 243
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V

    .line 244
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-static {v2, v5, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V

    goto/16 :goto_2

    .line 246
    :cond_b
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-static {v2, v5, p1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V

    .line 247
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-static {v2, v3, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAndText(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/model/Task;)V

    goto/16 :goto_2
.end method

.method resetNoUserInteractionState()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method setIconAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 432
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 431
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method setTextAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 426
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 427
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 428
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 425
    return-void
.end method

.method startLaunchTaskDismissAnimation(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;J)V
    .locals 4
    .param p1, "trigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    .param p2, "dura"    # J

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 283
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 284
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 285
    const-wide/16 v2, 0x0

    .line 284
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 281
    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method unbindFromTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mApplicationIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    return-void
.end method
