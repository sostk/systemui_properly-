.class public Lcom/meizu/common/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final THUMB_ANIMATION_DURATION:I = 0x100

.field private static final THUMB_STATUS_CHANGE:F = 1.0f

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I

.field private static sSwitchStyleableId:[I


# instance fields
.field private isChanged:Z

.field private mIsStyleWhiteMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mSplitTrack:Z

.field private mSwitchAnimator:Landroid/animation/ValueAnimator;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbOffCache:Landroid/graphics/drawable/Drawable;

.field private mThumbOffColorWhenAnimate:I

.field private mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbOnCache:Landroid/graphics/drawable/Drawable;

.field private mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackCache:Landroid/graphics/drawable/Drawable;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private pathInterpolator:Landroid/view/animation/Interpolator;

.field public switchOff:Ljava/lang/CharSequence;

.field public switchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 170
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 195
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_Switch:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v10, 0x101009e

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffCache:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnCache:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackCache:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-boolean v7, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    .line 115
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 167
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 174
    iput-boolean v7, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    const/4 v4, -0x1

    .line 176
    iput v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColorWhenAnimate:I

    .line 211
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 213
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 214
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 217
    sget-object v4, Lcom/meizu/common/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/meizu/common/R$styleable;->Switch_mcThumbOff:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 223
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 226
    :goto_1
    sget v4, Lcom/meizu/common/R$styleable;->Switch_mcThumbOn:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 230
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 233
    :goto_3
    sget v4, Lcom/meizu/common/R$styleable;->Switch_mcTrack:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 237
    :goto_4
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    .line 246
    :cond_0
    :goto_5
    sget v4, Lcom/meizu/common/R$styleable;->Switch_mcWhiteTrack:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 257
    :goto_6
    sget v4, Lcom/meizu/common/R$styleable;->Switch_mcSwitchMinWidth:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 259
    sget v4, Lcom/meizu/common/R$styleable;->Switch_mcSwitchPadding:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 261
    iput-boolean v7, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    .line 270
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    new-array v4, v9, [I

    const v5, 0x1010124

    aput v5, v4, v7

    const v5, 0x1010125

    aput v5, v4, v8

    sput-object v4, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    .line 273
    sget-object v4, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    const v5, 0x101043f

    invoke-virtual {p1, p2, v4, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 274
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 275
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 276
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 279
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    .line 280
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    .line 283
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->refreshDrawableState()V

    .line 284
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 285
    return-void

    .line 221
    .end local v1    # "b":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_1
    sget v4, Lcom/meizu/common/R$drawable;->mc_switch_anim_thumb_off_selector:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 224
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_1

    .line 228
    :cond_3
    sget v4, Lcom/meizu/common/R$drawable;->mc_switch_anim_thumb_on_selector:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 231
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_3

    .line 235
    :cond_5
    sget v4, Lcom/meizu/common/R$drawable;->mc_switch_bg_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 238
    :cond_6
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 239
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    new-array v5, v9, [I

    aput v10, v5, v7

    const v6, 0x10100a0

    aput v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 242
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    new-array v5, v9, [I

    aput v10, v5, v7

    const v6, -0x10100a0

    aput v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_5

    .line 248
    :cond_7
    sget v4, Lcom/meizu/common/R$drawable;->mc_switch_anim_track_color_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/Switch;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 7
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v5, 0x3ea8f5c3    # 0.33f

    .line 991
    if-nez p1, :cond_0

    move v0, v1

    .line 999
    .local v0, "targetPosition":F
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_1

    :goto_1
    const/4 v3, 0x2

    .line 1002
    new-array v3, v3, [F

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    aput v4, v3, v6

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 1003
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_2

    .line 1010
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1011
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1012
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1013
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/common/widget/Switch$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/Switch$1;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1019
    return-void

    .end local v0    # "targetPosition":F
    :cond_0
    move v0, v2

    .line 991
    goto :goto_0

    .line 1000
    .restart local v0    # "targetPosition":F
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_1

    .line 1004
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    .line 1007
    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {v3, v5, v1, v5, v2}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 1005
    :cond_3
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v5, v1, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 956
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    .line 957
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 958
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 959
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 960
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 1028
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 2

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isThumbOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v0

    return v0

    .line 1400
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbOnColorDuringAnimation()I
    .locals 3

    .prologue
    .line 1244
    iget-boolean v1, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    if-nez v1, :cond_0

    .line 1253
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v1

    const/high16 v2, 0x42180000    # 38.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit16 v0, v1, 0xd9

    .local v0, "r":I
    :goto_0
    const/16 v1, 0xff

    .line 1255
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1

    .line 1245
    .end local v0    # "r":I
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColorWhenAnimate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1250
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v1

    const/high16 v2, 0x43590000    # 217.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x26

    .restart local v0    # "r":I
    goto :goto_0

    .line 1247
    .end local v0    # "r":I
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColorWhenAnimate:I

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColorWhenAnimate:I

    add-int v0, v1, v2

    .restart local v0    # "r":I
    goto :goto_0
.end method

.method private getThumbOnScaleAnimation()F
    .locals 2

    .prologue
    .line 1261
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v0

    const v1, 0x3f124925

    mul-float/2addr v0, v1

    const v1, 0x3edb6db7

    add-float/2addr v0, v1

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .prologue
    .line 1442
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1456
    return v2

    .line 1443
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1444
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1447
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1450
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1453
    .local v0, "insets":Lcom/meizu/common/widget/Insets;
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/meizu/common/widget/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/meizu/common/widget/Insets;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 1448
    .end local v0    # "insets":Lcom/meizu/common/widget/Insets;
    :cond_1
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .restart local v0    # "insets":Lcom/meizu/common/widget/Insets;
    goto :goto_0
.end method

.method private getThumbValue()F
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 851
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbOff()Z
    .locals 2

    .prologue
    .line 1438
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbOn()Z
    .locals 2

    .prologue
    .line 1429
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    .line 835
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

    if-nez v0, :cond_0

    move-object v1, p1

    .line 839
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 840
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/text/TextPaint;->density:F

    .line 841
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 835
    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Lcom/meizu/common/widget/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 1037
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    .line 1038
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1039
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 968
    iput v4, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_1

    :cond_0
    move v0, v4

    .line 974
    .local v0, "commitChange":Z
    :goto_0
    if-nez v0, :cond_2

    .line 983
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    .line 986
    .local v1, "newState":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 987
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 988
    return-void

    .line 972
    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    .line 975
    .restart local v0    # "commitChange":Z
    :cond_2
    iget-object v5, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 976
    iget-object v5, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 977
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 978
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v5

    if-nez v5, :cond_4

    cmpl-float v5, v2, v7

    if-lez v5, :cond_5

    :cond_3
    move v1, v3

    .restart local v1    # "newState":Z
    :goto_2
    goto :goto_1

    .end local v1    # "newState":Z
    :cond_4
    cmpg-float v5, v2, v7

    if-ltz v5, :cond_3

    :cond_5
    move v1, v4

    goto :goto_2

    .line 980
    :cond_6
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1133
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1134
    .local v6, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 1135
    .local v9, "switchLeft":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 1136
    .local v11, "switchTop":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 1137
    .local v10, "switchRight":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 1140
    .local v8, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v22

    add-int v13, v9, v22

    .line 1143
    .local v13, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 1146
    sget-object v14, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1150
    .local v14, "thumbInsets":Lcom/meizu/common/widget/Insets;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 1187
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 1214
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    .line 1234
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1235
    return-void

    .line 1144
    .end local v14    # "thumbInsets":Lcom/meizu/common/widget/Insets;
    :cond_2
    sget-object v14, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .restart local v14    # "thumbInsets":Lcom/meizu/common/widget/Insets;
    goto :goto_0

    .line 1151
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1154
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v13, v13, v22

    .line 1157
    move/from16 v19, v9

    .line 1158
    .local v19, "trackLeft":I
    move/from16 v21, v11

    .line 1159
    .local v21, "trackTop":I
    move/from16 v20, v10

    .line 1160
    .local v20, "trackRight":I
    move/from16 v18, v8

    .line 1161
    .local v18, "trackBottom":I
    sget-object v22, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    move-object/from16 v0, v22

    if-ne v14, v0, :cond_5

    .line 1175
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1178
    sub-int v22, v18, v21

    div-int/lit8 v22, v22, 0xc

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v24, v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v5, v0

    .line 1179
    .local v5, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v19, v5

    add-int v24, v21, v5

    sub-int v25, v20, v5

    sub-int v26, v18, v5

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v23

    const/high16 v24, 0x437f0000    # 255.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 1162
    .end local v5    # "offset":I
    :cond_5
    iget v0, v14, Lcom/meizu/common/widget/Insets;->left:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_6

    .line 1165
    :goto_4
    iget v0, v14, Lcom/meizu/common/widget/Insets;->top:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    .line 1168
    :goto_5
    iget v0, v14, Lcom/meizu/common/widget/Insets;->right:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    .line 1171
    :goto_6
    iget v0, v14, Lcom/meizu/common/widget/Insets;->bottom:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 1172
    iget v0, v14, Lcom/meizu/common/widget/Insets;->bottom:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v18, v18, v22

    goto/16 :goto_3

    .line 1163
    :cond_6
    iget v0, v14, Lcom/meizu/common/widget/Insets;->left:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    add-int v19, v19, v22

    goto :goto_4

    .line 1166
    :cond_7
    iget v0, v14, Lcom/meizu/common/widget/Insets;->top:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    add-int v21, v21, v22

    goto :goto_5

    .line 1169
    :cond_8
    iget v0, v14, Lcom/meizu/common/widget/Insets;->right:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v20, v20, v22

    goto :goto_6

    .line 1187
    .end local v18    # "trackBottom":I
    .end local v19    # "trackLeft":I
    .end local v20    # "trackRight":I
    .end local v21    # "trackTop":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isThumbOff()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v22

    if-nez v22, :cond_a

    .line 1200
    move v15, v13

    .line 1201
    .local v15, "thumbLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    add-int v22, v22, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v24, v25, v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v16, v22, v23

    .line 1206
    .local v16, "thumbRight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v15, v11, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 1195
    .end local v15    # "thumbLeft":I
    .end local v16    # "thumbRight":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v22

    sub-int v16, v10, v22

    .line 1196
    .restart local v16    # "thumbRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    sub-int v22, v16, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v24, v25, v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v15, v22, v23

    .restart local v15    # "thumbLeft":I
    goto :goto_7

    .line 1215
    .end local v15    # "thumbLeft":I
    .end local v16    # "thumbRight":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v22

    if-nez v22, :cond_c

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOnScaleAnimation()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v7, v0

    .line 1222
    .local v7, "scaledThumbWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    sub-int v22, v22, v7

    div-int/lit8 v22, v22, 0x2

    add-int v15, v13, v22

    .line 1223
    .restart local v15    # "thumbLeft":I
    add-int v16, v15, v7

    .line 1226
    .restart local v16    # "thumbRight":I
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOnScaleAnimation()F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v22, v23, v22

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v17, v11, v22

    .line 1227
    .local v17, "thumbTop":I
    sub-int v22, v16, v15

    add-int v12, v17, v22

    .line 1228
    .local v12, "thumbBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOnColorDuringAnimation()I

    move-result v23

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 1217
    .end local v7    # "scaledThumbWidth":I
    .end local v12    # "thumbBottom":I
    .end local v15    # "thumbLeft":I
    .end local v16    # "thumbRight":I
    .end local v17    # "thumbTop":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOnScaleAnimation()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v7, v0

    .line 1218
    .restart local v7    # "scaledThumbWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    sub-int v23, v23, v7

    div-int/lit8 v23, v23, 0x2

    sub-int v16, v22, v23

    .line 1219
    .restart local v16    # "thumbRight":I
    sub-int v15, v16, v7

    .restart local v15    # "thumbLeft":I
    goto :goto_8
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1471
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1473
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1475
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1478
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1482
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 1486
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1487
    return-void

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 1479
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 1483
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1354
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1357
    :goto_0
    return v0

    .line 1351
    .end local v0    # "padding":I
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    return v1

    .line 1355
    .restart local v0    # "padding":I
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1366
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1369
    :goto_0
    return v0

    .line 1363
    .end local v0    # "padding":I
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    return v1

    .line 1367
    .restart local v0    # "padding":I
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLayoutRtl()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1378
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 1381
    return v0

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getLayoutDirection()I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1511
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1513
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1517
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 1521
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 1525
    :cond_0
    :goto_2
    return-void

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0

    .line 1518
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_1

    .line 1521
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1523
    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1462
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1463
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1466
    :goto_0
    return-object v0

    .line 1464
    :cond_0
    sget-object v1, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 1266
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1267
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1268
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1269
    .local v6, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_1

    .line 1272
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1282
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1283
    .local v4, "thumbOffDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_2

    .line 1311
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1313
    .local v2, "saveCount":I
    iget-object v5, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1314
    .local v5, "thumbOnDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_b

    .line 1318
    :cond_0
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1345
    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1346
    return-void

    .line 1270
    .end local v2    # "saveCount":I
    .end local v4    # "thumbOffDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "thumbOnDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1285
    .restart local v4    # "thumbOffDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_5

    :cond_3
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-nez v7, :cond_7

    .line 1286
    .local v3, "shouldDrawTrackOffAndOn":Z
    :goto_3
    iget-boolean v7, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    if-nez v7, :cond_8

    .line 1302
    :cond_4
    if-nez v3, :cond_a

    .line 1306
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1285
    .end local v3    # "shouldDrawTrackOffAndOn":Z
    :cond_5
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    :cond_6
    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 1286
    .restart local v3    # "shouldDrawTrackOffAndOn":Z
    :cond_8
    if-eqz v4, :cond_4

    .line 1287
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1288
    .local v0, "insets":Lcom/meizu/common/widget/Insets;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1289
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v0, Lcom/meizu/common/widget/Insets;->left:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1290
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v0, Lcom/meizu/common/widget/Insets;->right:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1293
    .restart local v2    # "saveCount":I
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1294
    if-nez v3, :cond_9

    .line 1298
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1300
    :goto_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 1295
    :cond_9
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1296
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 1303
    .end local v0    # "insets":Lcom/meizu/common/widget/Insets;
    .end local v2    # "saveCount":I
    :cond_a
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1304
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1314
    .end local v3    # "shouldDrawTrackOffAndOn":Z
    .restart local v2    # "saveCount":I
    .restart local v5    # "thumbOnDrawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isThumbOff()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1315
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1316
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1529
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/meizu/common/widget/Switch;

    .line 1530
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1531
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1535
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v3, Lcom/meizu/common/widget/Switch;

    .line 1536
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1539
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 1540
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1551
    :goto_1
    return-void

    .line 1539
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1541
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1542
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1546
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1547
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1543
    .end local v0    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1077
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 v1, 0x0

    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 1081
    .local v2, "opticalInsetRight":I
    iget-object v8, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 1096
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1100
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    .line 1101
    .local v5, "switchRight":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    .line 1106
    .local v4, "switchLeft":I
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_0

    .line 1109
    :sswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v6

    .line 1110
    .local v6, "switchTop":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 1125
    .local v3, "switchBottom":I
    :goto_2
    iput v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 1126
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 1127
    iput v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 1128
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 1129
    return-void

    .line 1082
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    :cond_0
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1083
    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1

    .line 1086
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 1089
    :goto_3
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .local v0, "insets":Lcom/meizu/common/widget/Insets;
    const/4 v8, 0x0

    .line 1090
    iget v9, v0, Lcom/meizu/common/widget/Insets;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v8, 0x0

    .line 1091
    iget v9, v0, Lcom/meizu/common/widget/Insets;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 1084
    .end local v0    # "insets":Lcom/meizu/common/widget/Insets;
    :cond_1
    iget-object v8, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_3

    .line 1097
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    .line 1098
    .restart local v4    # "switchLeft":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    .restart local v5    # "switchRight":I
    goto :goto_1

    .line 1114
    :sswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 1116
    .restart local v6    # "switchTop":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .restart local v3    # "switchBottom":I
    goto :goto_2

    .line 1120
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 1121
    .restart local v3    # "switchBottom":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    sub-int v6, v3, v8

    .restart local v6    # "switchTop":I
    goto :goto_2

    .line 1106
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 755
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 758
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_0

    const/4 v8, 0x0

    .local v8, "thumbWidth":I
    const/4 v7, 0x0

    .line 779
    .local v7, "thumbHeight":I
    :goto_0
    iput v8, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    .line 782
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_1

    .line 786
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v9, 0x0

    .line 792
    .local v9, "trackHeight":I
    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 793
    .local v3, "paddingLeft":I
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 794
    .local v4, "paddingRight":I
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_2

    .line 800
    :goto_2
    iget v10, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    iget v11, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    add-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 802
    .local v6, "switchWidth":I
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 803
    .local v5, "switchHeight":I
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    .line 804
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    .line 814
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 816
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredHeight()I

    move-result v1

    .line 817
    .local v1, "measuredHeight":I
    if-lt v1, v5, :cond_3

    .line 820
    :goto_3
    return-void

    .line 760
    .end local v1    # "measuredHeight":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v5    # "switchHeight":I
    .end local v6    # "switchWidth":I
    .end local v7    # "thumbHeight":I
    .end local v8    # "thumbWidth":I
    .end local v9    # "trackHeight":I
    :cond_0
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 761
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v10, v11

    .line 762
    .restart local v8    # "thumbWidth":I
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .restart local v7    # "thumbHeight":I
    goto :goto_0

    .line 783
    :cond_1
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 784
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .restart local v9    # "trackHeight":I
    goto :goto_1

    .line 795
    .restart local v3    # "paddingLeft":I
    .restart local v4    # "paddingRight":I
    :cond_2
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 796
    .local v0, "inset":Lcom/meizu/common/widget/Insets;
    iget v10, v0, Lcom/meizu/common/widget/Insets;->left:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 797
    iget v10, v0, Lcom/meizu/common/widget/Insets;->right:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 818
    .end local v0    # "inset":Lcom/meizu/common/widget/Insets;
    .restart local v1    # "measuredHeight":I
    .restart local v5    # "switchHeight":I
    .restart local v6    # "switchWidth":I
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v5}, Lcom/meizu/common/widget/Switch;->setMeasuredDimension(II)V

    goto :goto_3
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 824
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 832
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 878
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 880
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 952
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 882
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 883
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 884
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/Switch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 885
    iput v8, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 886
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 887
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 893
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v10, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_0

    .line 899
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 900
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 901
    .restart local v6    # "y":F
    iget v7, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v10, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_2

    move v7, v8

    :goto_1
    if-nez v7, :cond_1

    iget v7, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 903
    :cond_1
    iput v12, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 904
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 905
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 906
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    .line 907
    return v8

    :cond_2
    move v7, v9

    .line 901
    goto :goto_1

    .line 913
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 914
    .restart local v5    # "x":F
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v4

    .line 915
    .local v4, "thumbScrollRange":I
    iget v9, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v3, v5, v9

    .line 917
    .local v3, "thumbScrollOffset":F
    if-nez v4, :cond_4

    .line 922
    cmpl-float v9, v3, v11

    if-lez v9, :cond_5

    move v1, v7

    .line 924
    .local v1, "dPos":F
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v9

    if-nez v9, :cond_6

    .line 927
    :goto_3
    iget v9, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    add-float/2addr v9, v1

    invoke-static {v9, v11, v7}, Lcom/meizu/common/widget/MathUtils;->constrain(FFF)F

    move-result v2

    .line 928
    .local v2, "newPos":F
    iget v7, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_3

    .line 929
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 930
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 932
    :cond_3
    return v8

    .line 918
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_4
    int-to-float v9, v4

    div-float v1, v3, v9

    .restart local v1    # "dPos":F
    goto :goto_2

    .end local v1    # "dPos":F
    :cond_5
    const/high16 v1, -0x40800000    # -1.0f

    .line 922
    goto :goto_2

    .line 925
    .restart local v1    # "dPos":F
    :cond_6
    neg-float v1, v1

    goto :goto_3

    .line 940
    .end local v1    # "dPos":F
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    if-eq v7, v12, :cond_7

    .line 946
    iput v9, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 947
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 941
    :cond_7
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 943
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 944
    return v8

    .line 880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 893
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 1048
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 1049
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 4
    .param p1, "checked"    # Z
    .param p2, "useAnim"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1053
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v2

    if-eq v2, p1, :cond_1

    .line 1060
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1064
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result p1

    .line 1066
    if-nez p2, :cond_6

    .line 1070
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->cancelPositionAnimator()V

    .line 1071
    if-nez p1, :cond_7

    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1073
    :goto_1
    return-void

    .line 1054
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_4

    .line 1055
    :cond_2
    if-nez p1, :cond_5

    :goto_2
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1057
    :cond_3
    :goto_3
    return-void

    .line 1054
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_5
    move v0, v1

    .line 1055
    goto :goto_2

    .line 1066
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1071
    goto :goto_0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 873
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 874
    return-void
.end method

.method public setStyleDefault()V
    .locals 8

    .prologue
    const v7, 0x101009e

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1588
    iget-boolean v1, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    if-nez v1, :cond_0

    .line 1606
    :goto_0
    return-void

    .line 1590
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffCache:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1591
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackCache:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1593
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1594
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1595
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1596
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1597
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1603
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1604
    iput-boolean v4, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    goto :goto_0

    .line 1598
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1599
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v6, [I

    aput v7, v2, v4

    const v3, 0x10100a0

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1600
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1601
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v6, [I

    aput v7, v2, v4

    const v3, -0x10100a0

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method public setStyleWhite()V
    .locals 9

    .prologue
    const v8, 0x101009e

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1557
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1559
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffCache:Landroid/graphics/drawable/Drawable;

    .line 1560
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackCache:Landroid/graphics/drawable/Drawable;

    .line 1562
    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_thumb_off_selector_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1563
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1564
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1565
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->setStyleDefault()V

    .line 1582
    :goto_0
    return-void

    .line 1564
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1568
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1569
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1570
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1571
    .local v0, "drawableState":[I
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1572
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1578
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1579
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    .line 1580
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    goto :goto_0

    .line 1573
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1574
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    new-array v3, v7, [I

    aput v8, v3, v6

    const v4, 0x10100a0

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1575
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1576
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    new-array v3, v7, [I

    aput v8, v3, v6

    const v4, -0x10100a0

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 520
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 521
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 498
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 499
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 611
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 614
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 615
    if-nez p1, :cond_1

    .line 618
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 619
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1
.end method

.method public setThumbOffColorWhenAnimate(I)V
    .locals 0
    .param p1, "r"    # I

    .prologue
    .line 1612
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColorWhenAnimate:I

    .line 1613
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const v6, 0x101009e

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 569
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 570
    if-nez p1, :cond_1

    .line 580
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 581
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 572
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 578
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->drawableStateChanged()V

    goto :goto_1

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    new-array v1, v5, [I

    aput v6, v1, v3

    const v2, 0x10100a0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 575
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 576
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    new-array v1, v5, [I

    aput v6, v1, v3

    const v2, -0x10100a0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 1044
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1043
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1506
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    goto :goto_0
.end method
