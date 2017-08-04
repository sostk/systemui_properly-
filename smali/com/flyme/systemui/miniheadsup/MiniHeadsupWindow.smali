.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
.super Landroid/view/ViewGroup;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;,
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;,
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;,
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAutoSnooze:Z

.field private mAutoSnoozeRunnable:Ljava/lang/Runnable;

.field private mCallback:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

.field mDownX:F

.field mDownY:F

.field private mDuringChange:Z

.field private mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

.field private mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

.field private mFirstGroupRect:Landroid/graphics/Rect;

.field private mFirstIcon:Landroid/widget/ImageView;

.field private mFirstText:Landroid/widget/TextView;

.field private mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

.field private mLeftAction:Landroid/app/PendingIntent;

.field private mLevel:F

.field mMaximumVelocity:I

.field private mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

.field private mRightAction:Landroid/app/PendingIntent;

.field mScroll:Z

.field private mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

.field mSecondGroup1Visible:Z

.field private mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

.field mSecondGroup2Visible:Z

.field private mSecondGroupRect1:Landroid/graphics/Rect;

.field private mSecondGroupRect2:Landroid/graphics/Rect;

.field private mSecondIcon1:Landroid/widget/ImageView;

.field private mSecondIcon2:Landroid/widget/ImageView;

.field private mSecondText1:Landroid/widget/TextView;

.field private mSecondText2:Landroid/widget/TextView;

.field private mSnoozeAction:Landroid/app/PendingIntent;

.field private mStartClickTime:J

.field private mThirdChronometer:Landroid/widget/Chronometer;

.field private mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

.field private mThirdGroupRect:Landroid/graphics/Rect;

.field private mThirdIcon:Landroid/widget/ImageView;

.field private mThirdText:Landroid/widget/TextView;

.field private mThridGroupEnable:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mCallback:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThridGroupEnable:Z

    .line 52
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    .line 630
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMaximumVelocity:I

    .line 59
    return-void
.end method

.method private computeRectsDependOnState(II)V
    .locals 8
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 264
    iget v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 265
    iget v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    sub-float v2, v5, v3

    .line 266
    .local v2, "originWeight":F
    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    .line 267
    .local v0, "finalWeight":F
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 268
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 269
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v7, v7, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p1, v6

    .line 267
    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 273
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 274
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v7, v7, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p1, v6

    .line 272
    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 278
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 279
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v7, v7, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p1, v6

    .line 277
    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 282
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 263
    :goto_0
    return-void

    .line 284
    .end local v0    # "finalWeight":F
    .end local v2    # "originWeight":F
    :cond_0
    iget v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    sub-float v1, v3, v5

    .line 285
    .local v1, "localLevel":F
    sub-float v2, v5, v1

    .line 286
    .restart local v2    # "originWeight":F
    move v0, v1

    .line 287
    .restart local v0    # "finalWeight":F
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 288
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 289
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v7, v7, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p1, v6

    .line 287
    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 293
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 294
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v7, v7, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p1, v6

    .line 292
    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 298
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 299
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v7, v7, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p1, v6

    .line 297
    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 252
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 251
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 239
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 240
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 237
    return-void
.end method

.method private refreshVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setVisibility(I)V

    .line 166
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1Visible:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    .line 171
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setVisibility(I)V

    .line 164
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAutoSnooze(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    .line 160
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method

.method private setSecondGroupValue(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "d1"    # Landroid/graphics/Bitmap;
    .param p2, "d2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iput-boolean v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1Visible:Z

    .line 183
    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iput-boolean v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iput-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    goto :goto_0
.end method

.method private setSecondGroupValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iput-boolean v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1Visible:Z

    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iput-boolean v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iput-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    goto :goto_0
.end method


# virtual methods
.method animateChageState()V
    .locals 4

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    if-nez v0, :cond_1

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    .line 400
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 403
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 404
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 423
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 397
    :cond_1
    return-void

    .line 403
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method animateChageState2()V
    .locals 4

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    if-nez v0, :cond_1

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    .line 430
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 435
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 436
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 437
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 448
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 427
    :cond_1
    return-void

    .line 436
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
    .locals 4
    .param p1, "state"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 529
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 530
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 548
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 558
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 524
    return-void

    .line 529
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateShow(Z)V
    .locals 6
    .param p1, "isUpdate"    # Z

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->refreshVisible()V

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mStartClickTime:J

    .line 466
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 469
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 471
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->getTranslationY()F

    move-result v0

    .line 472
    .local v0, "startY":F
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;

    invoke-direct {v2, p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 481
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;

    invoke-direct {v2, p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 491
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 463
    return-void

    .line 471
    .end local v0    # "startY":F
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v1, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    neg-int v1, v1

    int-to-float v0, v1

    .restart local v0    # "startY":F
    goto :goto_0

    .line 469
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateSnap()V
    .locals 4

    .prologue
    .line 495
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 498
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 500
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->getTranslationY()F

    move-result v0

    .line 501
    .local v0, "startY":F
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$8;

    invoke-direct {v2, p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$8;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;

    invoke-direct {v2, p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 516
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 517
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 494
    return-void

    .line 498
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method cancelAnimationWithoutCallback()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 366
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    .line 363
    :cond_0
    return-void
.end method

.method public changeLevel(F)V
    .locals 3
    .param p1, "state"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 256
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    .line 257
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setLevel(F)V

    .line 258
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setLevel(F)V

    .line 259
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setLevel(F)V

    .line 260
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->requestLayout()V

    .line 255
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 647
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 636
    :pswitch_1
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 642
    :pswitch_2
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mStartClickTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 564
    return-void

    .line 566
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 562
    :goto_0
    return-void

    .line 568
    :sswitch_0
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState()V

    goto :goto_0

    .line 571
    :sswitch_1
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLeftAction:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLeftAction:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 577
    :cond_1
    :goto_1
    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    goto :goto_0

    .line 580
    :sswitch_2
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mRightAction:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 582
    :try_start_1
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mRightAction:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 586
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThridGroupEnable:Z

    if-eqz v1, :cond_3

    .line 587
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState2()V

    .line 588
    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAutoSnooze(J)V

    goto :goto_0

    .line 590
    :cond_3
    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    goto :goto_0

    .line 594
    :sswitch_3
    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_2

    .line 574
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x7f0f016e -> :sswitch_3
        0x7f0f0172 -> :sswitch_1
        0x7f0f0175 -> :sswitch_2
        0x7f0f0178 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 67
    const v0, 0x7f0f0178

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    .line 68
    const v0, 0x7f0f0172

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    .line 69
    const v0, 0x7f0f0175

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    .line 70
    const v0, 0x7f0f016e

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0f0179

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstIcon:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0f017a

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f0173

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0f0174

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0f0177

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0f016f

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0f0170

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    .line 89
    const v0, 0x7f0f0171

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public onFirstLayout()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 305
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 306
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 307
    .local v3, "tempTextWidth":I
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MIN_WIDTH:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 308
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MAX_WIDTH:I

    .line 307
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->firstWindowWidth:I

    .line 309
    const/4 v2, 0x2

    .line 310
    .local v2, "secondWindowNum":I
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 311
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 312
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 313
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MIN_WIDTH:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 314
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MAX_WIDTH:I

    .line 313
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->secondWindowWidth:I

    .line 318
    :goto_0
    iget-boolean v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    if-nez v4, :cond_0

    .line 319
    const/4 v2, 0x1

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v4, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->firstWindowWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 324
    .local v0, "mOriginPadding":I
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v1, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->secondWindowWidth:I

    .line 326
    .local v1, "mSecondWidth":I
    new-instance v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    invoke-direct {v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    .line 327
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    .line 328
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    .line 329
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    .line 330
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    .line 331
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    .line 332
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    .line 334
    new-instance v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    invoke-direct {v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    .line 335
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v7, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    .line 336
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v7, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    .line 337
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 338
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    .line 339
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    .line 348
    :goto_1
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    .line 349
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    .line 350
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    .line 351
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    .line 352
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    .line 353
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    .line 355
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    .line 356
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v6, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    .line 357
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v7, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    .line 358
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v7, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    .line 359
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    .line 360
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    .line 304
    return-void

    .line 316
    .end local v0    # "mOriginPadding":I
    .end local v1    # "mSecondWidth":I
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MIN_WIDTH:I

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->secondWindowWidth:I

    goto/16 :goto_0

    .line 341
    .restart local v0    # "mOriginPadding":I
    .restart local v1    # "mSecondWidth":I
    :cond_2
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v7, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    .line 342
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    add-int/lit8 v6, v1, 0x0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    .line 343
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    add-int/lit8 v6, v1, 0x0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    .line 344
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v7, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    goto/16 :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 676
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mScroll:Z

    if-nez v4, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_1
    return v3

    .line 654
    :pswitch_0
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownX:F

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    .line 657
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mScroll:Z

    .line 658
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 659
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 662
    :pswitch_1
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 664
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 665
    .local v2, "y":F
    iget v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 666
    .local v0, "disY":F
    iget v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/high16 v4, 0x41c00000    # 24.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 667
    iput-boolean v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mScroll:Z

    .line 668
    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    goto :goto_0

    .line 673
    .end local v0    # "disY":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_2
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 246
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 247
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 248
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 244
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 225
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 226
    .local v0, "height":I
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->MINIWINDOW_OFFSET_TOP:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    invoke-direct {p0, v1, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->computeRectsDependOnState(II)V

    .line 229
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 230
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 231
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 232
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {p0, v1, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setMeasuredDimension(II)V

    .line 222
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 715
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 683
    :pswitch_0
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 686
    :pswitch_1
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 688
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 689
    .local v4, "y":F
    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    sub-float v1, v5, v4

    .line 690
    .local v1, "move":F
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    .line 691
    neg-float v5, v1

    invoke-virtual {p0, v5}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setTranslationY(F)V

    goto :goto_0

    .line 696
    .end local v1    # "move":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 697
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMaximumVelocity:I

    int-to-float v6, v6

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 698
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 699
    .local v2, "velocity":I
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 700
    if-gez v2, :cond_1

    .line 701
    sget-object v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, v5}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    .line 702
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSnoozeAction:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 704
    :try_start_0
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSnoozeAction:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 710
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateSnap()V

    goto :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAction(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "left"    # Landroid/app/PendingIntent;
    .param p2, "right"    # Landroid/app/PendingIntent;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLeftAction:Landroid/app/PendingIntent;

    .line 143
    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mRightAction:Landroid/app/PendingIntent;

    .line 141
    return-void
.end method

.method public setAutoSnooze(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    .line 152
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mCallback:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    .line 599
    return-void
.end method

.method public setFirstGroupColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setButtonColor(I)V

    .line 96
    return-void
.end method

.method public setFirstGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/Bitmap;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public setLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    .line 216
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    .line 218
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    .line 214
    return-void
.end method

.method public setSecondGroupColor(II)V
    .locals 1
    .param p1, "color1"    # I
    .param p2, "color2"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setButtonColor(I)V

    .line 102
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setButtonColor(I)V

    .line 100
    return-void
.end method

.method public setSecondGroupValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 115
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setSnoozeAction(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "snooze"    # Landroid/app/PendingIntent;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSnoozeAction:Landroid/app/PendingIntent;

    .line 146
    return-void
.end method

.method public setThirdGroupColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setButtonColor(I)V

    .line 105
    return-void
.end method

.method public setThridGroupEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThridGroupEnable:Z

    .line 92
    return-void
.end method

.method public setThridGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "clock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 132
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public skipToThrid()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 372
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAlpha(F)V

    .line 373
    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 375
    return-void

    .line 376
    :cond_0
    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState2()V

    .line 371
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 384
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 385
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setAlpha(F)V

    .line 387
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setAlpha(F)V

    .line 392
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setAlpha(F)V

    .line 393
    invoke-virtual {p0, v5}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->changeLevel(F)V

    goto :goto_0
.end method
