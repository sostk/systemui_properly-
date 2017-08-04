.class public Lcom/meizu/common/widget/EnhanceGallery;
.super Lcom/meizu/common/widget/AbsSpinner;
.source "EnhanceGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;,
        Lcom/meizu/common/widget/EnhanceGallery$PerformClick;,
        Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;,
        Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;,
        Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;,
        Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;,
        Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;,
        Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;,
        Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MIN_FLING_VELOCITY:I = 0x5dc

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x2

.field static final TOUCH_MODE_OVERFLING:I = 0x4

.field static final TOUCH_MODE_OVERSCROLL:I = 0x3

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAccDelegateStates:Z

.field private mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

.field private mAnimationDuration:I

.field private mChangeChildAlphaWhenDragView:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChildWidth:I

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mChoiceMode:I

.field private mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDefaultMaxOverScrollDistance:I

.field private mDeltaLength:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownFirstPosition:I

.field private mDownLastPosition:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragAndDropPosition:I

.field private mDragEnable:Z

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragScrollY:I

.field private mDragViewBackground:I

.field private mDragViewBackgroundDelete:I

.field private mDragViewBackgroundFilter:I

.field private mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLastScrollState:I

.field private mMaxOverScrollDistance:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

.field private mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

.field private mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

.field private mScrollEnableWhenLessContent:Z

.field private mSelectedChild:Landroid/view/View;

.field private mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 378
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 381
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_EnhanceGalleryStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 197
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    const/16 v2, 0xfa

    .line 203
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    .line 225
    new-instance v2, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    .line 231
    new-instance v2, Lcom/meizu/common/widget/EnhanceGallery$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EnhanceGallery$1;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 256
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    .line 261
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 269
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    .line 283
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    .line 298
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 304
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 336
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    .line 338
    sget v2, Lcom/meizu/common/R$drawable;->mz_list_selector_background_long_pressed:I

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    .line 340
    sget v2, Lcom/meizu/common/R$drawable;->mz_list_selector_background_filter:I

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    .line 342
    sget v2, Lcom/meizu/common/R$drawable;->mz_list_selector_background_delete:I

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    .line 356
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    .line 357
    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 358
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    .line 359
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 374
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    .line 2022
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 387
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 388
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 390
    sget-object v2, Lcom/meizu/common/R$styleable;->EnhanceGallery:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 392
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcSpacing:I

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 394
    .local v1, "spacing":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setSpacing(I)V

    .line 395
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_enhancegallery_max_overscroll_distance:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    .line 396
    sget v2, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcMaxOverScrollDistance:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 397
    sget v2, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcScrollEnableWhenLessContent:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 398
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/EnhanceGallery;)Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 1383
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v3

    .line 1384
    .local v3, "myHeight":I
    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 1388
    .local v2, "childTop":I
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1401
    :goto_2
    return v2

    .line 1383
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getMeasuredHeight()I

    move-result v3

    goto :goto_0

    .line 1384
    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    .line 1390
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1393
    :sswitch_1
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1395
    .local v0, "availableSpace":I
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    goto :goto_2

    .line 1398
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1388
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v7

    .line 663
    .local v7, "numChildren":I
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "start":I
    const/4 v1, 0x0

    .line 667
    .local v1, "count":I
    if-nez p1, :cond_2

    .line 691
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_8

    .line 694
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 696
    .local v4, "galleryRight":I
    :goto_0
    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_1
    const/4 v9, 0x1

    if-ge v5, v9, :cond_9

    .line 708
    :cond_0
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_c

    .line 713
    .end local v4    # "galleryRight":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Lcom/meizu/common/widget/EnhanceGallery;->detachViewsFromParent(II)V

    .line 715
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-ne p1, v9, :cond_d

    .line 718
    :goto_3
    return-void

    .line 669
    .end local v5    # "i":I
    :cond_2
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_4

    .line 672
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v9

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v3, v9, v10

    .local v3, "galleryLeft":I
    :goto_4
    const/4 v5, 0x0

    .line 674
    .restart local v5    # "i":I
    :goto_5
    add-int/lit8 v9, v7, -0x1

    if-lt v5, v9, :cond_5

    .line 686
    :cond_3
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_1

    const/4 v8, 0x0

    .line 687
    goto :goto_2

    .line 670
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v3

    .restart local v3    # "galleryLeft":I
    goto :goto_4

    .line 675
    .restart local v5    # "i":I
    :cond_5
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_6

    move v6, v5

    .line 676
    .local v6, "n":I
    :goto_6
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_7

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 677
    .local v0, "child":Landroid/view/View;
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v3, :cond_3

    .line 680
    move v8, v6

    .line 681
    add-int/lit8 v1, v1, 0x1

    .line 682
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 683
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 674
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 675
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_6
    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    goto :goto_6

    .line 676
    .restart local v6    # "n":I
    :cond_7
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 692
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v4, v9, v10

    .restart local v4    # "galleryRight":I
    goto :goto_0

    .line 697
    .restart local v5    # "i":I
    :cond_9
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_a

    move v6, v5

    .line 698
    .restart local v6    # "n":I
    :goto_8
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_b

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 699
    .restart local v0    # "child":Landroid/view/View;
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v4, :cond_0

    .line 702
    move v8, v6

    .line 703
    add-int/lit8 v1, v1, 0x1

    .line 704
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 705
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 696
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 697
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_a
    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    goto :goto_8

    .line 698
    .restart local v6    # "n":I
    :cond_b
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_9

    .end local v6    # "n":I
    :cond_c
    const/4 v8, 0x0

    .line 709
    goto/16 :goto_2

    .line 716
    .end local v4    # "galleryRight":I
    :cond_d
    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    goto/16 :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v7, 0x0

    .line 1753
    const/4 v6, 0x0

    .line 1755
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-nez v0, :cond_0

    .line 1760
    .end local v6    # "handled":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1765
    :goto_1
    if-nez v6, :cond_2

    .line 1769
    :goto_2
    return v6

    .line 1756
    .restart local v6    # "handled":Z
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .local v6, "handled":Z
    goto :goto_0

    .line 1761
    .end local v6    # "handled":Z
    :cond_1
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 1762
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .restart local v6    # "handled":Z
    goto :goto_1

    .line 1766
    .end local v6    # "handled":Z
    :cond_2
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    goto :goto_2
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1689
    if-nez p1, :cond_0

    .line 1693
    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1694
    return-void

    .line 1690
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1698
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 1702
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1703
    return-void

    .line 1699
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1698
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 1014
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v0, :cond_0

    .line 1017
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftLtr()V

    .line 1019
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftRtl()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1052
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1053
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    .line 1056
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1060
    .local v4, "prevIterationView":Landroid/view/View;
    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 1066
    .local v0, "curPosition":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    .line 1067
    .local v1, "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    .line 1070
    :goto_0
    if-gt v1, v2, :cond_2

    .line 1081
    :cond_0
    return-void

    .line 1061
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_1
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 1062
    .restart local v0    # "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .restart local v1    # "curRightEdge":I
    goto :goto_0

    .line 1070
    :cond_2
    if-ltz v0, :cond_0

    .line 1071
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1075
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1078
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1079
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryLeftRtl()V
    .locals 8

    .prologue
    .line 1022
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1023
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    .line 1024
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v4

    .line 1027
    .local v4, "numChildren":I
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1031
    .local v5, "prevIterationView":Landroid/view/View;
    if-nez v5, :cond_1

    .line 1036
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    add-int/lit8 v0, v6, -0x1

    .local v0, "curPosition":I
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1037
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v7

    sub-int v1, v6, v7

    .line 1038
    .local v1, "curRightEdge":I
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    .line 1041
    :goto_0
    if-gt v1, v2, :cond_2

    .line 1049
    :cond_0
    return-void

    .line 1032
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_1
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int v0, v6, v4

    .line 1033
    .restart local v0    # "curPosition":I
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .restart local v1    # "curRightEdge":I
    goto :goto_0

    .line 1041
    :cond_2
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v0, v6, :cond_0

    .line 1042
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v6, v0, v6

    const/4 v7, 0x0

    invoke-direct {p0, v0, v6, v1, v7}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    .line 1046
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v0, :cond_0

    .line 1087
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightLtr()V

    .line 1089
    :goto_0
    return-void

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightRtl()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1122
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1123
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int v2, v7, v8

    .line 1124
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v4

    .line 1125
    .local v4, "numChildren":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 1128
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1132
    .local v6, "prevIterationView":Landroid/view/View;
    if-nez v6, :cond_1

    .line 1136
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .local v1, "curPosition":I
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1137
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    .line 1138
    .local v0, "curLeftEdge":I
    iput-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    .line 1141
    :goto_0
    if-lt v0, v2, :cond_2

    .line 1149
    :cond_0
    return-void

    .line 1133
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_1
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 1134
    .restart local v1    # "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .restart local v0    # "curLeftEdge":I
    goto :goto_0

    .line 1141
    :cond_2
    if-ge v1, v5, :cond_0

    .line 1142
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 1146
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private fillToGalleryRightRtl()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1092
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1093
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .line 1096
    .local v2, "galleryRight":I
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1100
    .local v4, "prevIterationView":Landroid/view/View;
    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 1105
    .local v1, "curPosition":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    .line 1106
    .local v0, "curLeftEdge":I
    iput-boolean v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    .line 1108
    :goto_0
    if-lt v0, v2, :cond_2

    .line 1119
    :cond_0
    return-void

    .line 1101
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_1
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 1102
    .restart local v1    # "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .restart local v0    # "curLeftEdge":I
    goto :goto_0

    .line 1108
    :cond_2
    if-ltz v1, :cond_0

    .line 1109
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1113
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1116
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 1117
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getCenterOfEnhanceGallery()I
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private layoutChildren()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 975
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 976
    .local v6, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v4

    .line 977
    .local v4, "galleryLeft":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    .line 978
    .local v5, "galleryRight":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 984
    .local v7, "numItems":I
    iget-boolean v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v8, :cond_1

    .line 998
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 999
    .local v1, "curPosition":I
    add-int v0, v4, v6

    .line 1001
    .local v0, "curLeftEdge":I
    :goto_0
    if-lt v0, v5, :cond_2

    .line 1011
    .end local v0    # "curLeftEdge":I
    :cond_0
    return-void

    .line 985
    .end local v1    # "curPosition":I
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 986
    .restart local v1    # "curPosition":I
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v2, v5, v8

    .line 988
    .local v2, "curRightEdge":I
    :goto_1
    if-le v2, v4, :cond_0

    if-ge v1, v7, :cond_0

    .line 989
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    invoke-direct {p0, v1, v8, v2, v10}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 993
    .local v3, "curView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v8, v6

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    .end local v2    # "curRightEdge":I
    .end local v3    # "curView":Landroid/view/View;
    .restart local v0    # "curLeftEdge":I
    :cond_2
    if-ge v1, v7, :cond_0

    .line 1002
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    const/4 v9, 0x1

    invoke-direct {p0, v1, v8, v0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 1006
    .restart local v3    # "curView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v0, v8, v6

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1169
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-eqz v0, :cond_2

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1196
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1200
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_1
    :goto_1
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1209
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    .line 1211
    return-object v1

    .line 1170
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    .line 1171
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1173
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    if-eqz v0, :cond_3

    :goto_2
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1189
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    .line 1190
    return-object v1

    .line 1174
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1178
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1186
    :cond_4
    :goto_4
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    goto :goto_2

    .line 1175
    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_3

    .line 1179
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-eqz v0, :cond_7

    .line 1182
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1183
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_4

    .line 1180
    :cond_7
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    goto :goto_5

    .line 1197
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 1201
    :cond_9
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 1204
    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_1

    .line 1202
    :cond_a
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    goto :goto_6
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 639
    return-void

    .line 637
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 636
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 804
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 805
    return-void

    .line 799
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 802
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    goto :goto_0
.end method

.method private scrollIntoSlots()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 727
    .local v3, "scrollAmount":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 729
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 730
    :cond_0
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-nez v7, :cond_4

    .line 734
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 739
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 740
    .local v6, "startView":Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 742
    .local v2, "endView":Landroid/view/View;
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v7, :cond_5

    .line 762
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v5, v7, v8

    .line 763
    .local v5, "start":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int v1, v7, v8

    .line 764
    .local v1, "end":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-eq v7, v10, :cond_9

    .line 766
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v5, :cond_a

    .line 781
    :cond_3
    :goto_1
    if-nez v3, :cond_c

    .line 788
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-nez v7, :cond_e

    .line 792
    :goto_2
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onFinishedMovement()V

    const/4 v7, -0x1

    .line 793
    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 795
    :goto_3
    return-void

    .line 731
    .end local v1    # "end":I
    .end local v2    # "endView":Landroid/view/View;
    .end local v5    # "start":I
    .end local v6    # "startView":Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto :goto_0

    .line 743
    .restart local v2    # "endView":Landroid/view/View;
    .restart local v6    # "startView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v5, v7, v8

    .line 744
    .restart local v5    # "start":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    .line 745
    .restart local v1    # "end":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-eq v7, v10, :cond_7

    .line 747
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-eq v7, v5, :cond_3

    .line 748
    invoke-static {v6}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    .line 749
    .local v4, "selectedCenter":I
    if-ge v4, v5, :cond_8

    .line 752
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v3, v5, v7

    .line 755
    :goto_4
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_3

    .line 756
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v3

    if-le v7, v1, :cond_3

    .line 757
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v3, v7, v8

    goto :goto_1

    .line 745
    .end local v4    # "selectedCenter":I
    :cond_7
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_6

    .line 746
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v3, v7, v8

    goto :goto_1

    .line 750
    .restart local v4    # "selectedCenter":I
    :cond_8
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v3, v5, v7

    goto :goto_4

    .line 764
    .end local v4    # "selectedCenter":I
    :cond_9
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_2

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v3, v7, v8

    goto :goto_1

    .line 767
    :cond_a
    invoke-static {v6}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    .line 768
    .restart local v4    # "selectedCenter":I
    if-lt v4, v5, :cond_b

    .line 771
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v3, v5, v7

    .line 774
    :goto_5
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_3

    .line 775
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v3

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v8, v1, v8

    if-eq v7, v8, :cond_3

    .line 776
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v3, v7, v8

    goto/16 :goto_1

    .line 769
    :cond_b
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v3, v5, v7

    goto :goto_5

    .line 782
    .end local v4    # "selectedCenter":I
    :cond_c
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-ne v7, v10, :cond_d

    .line 786
    :goto_6
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v7, v3}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    goto/16 :goto_3

    .line 783
    :cond_d
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto :goto_6

    .line 789
    :cond_e
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto/16 :goto_2
.end method

.method private setSelectionView()V
    .locals 2

    .prologue
    .line 820
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 821
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 823
    .local v0, "newPos":I
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 828
    :goto_0
    return-void

    .line 820
    .end local v0    # "newPos":I
    :cond_0
    return-void

    .line 824
    .restart local v0    # "newPos":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    .line 825
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setNextSelectedPositionInt(I)V

    .line 826
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->checkSelectionChanged()V

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIIZ)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "offset"    # I
    .param p4, "x"    # I
    .param p5, "fromLeft"    # Z

    .prologue
    .line 1231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1233
    .local v8, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_2

    .line 1235
    instance-of v10, v8, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    if-nez v10, :cond_3

    .line 1238
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .line 1241
    .local v7, "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    :goto_0
    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    move/from16 v0, p5

    if-ne v0, v10, :cond_4

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {p0, p1, v10, v7}, Lcom/meizu/common/widget/EnhanceGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1242
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 1247
    :goto_2
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mHeightMeasureSpec:I

    iget-object v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;->height:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1249
    .local v2, "childHeightSpec":I
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mWidthMeasureSpec:I

    iget-object v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;->width:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1253
    .local v6, "childWidthSpec":I
    invoke-virtual {p1, v6, v2}, Landroid/view/View;->measure(II)V

    .line 1259
    const/4 v10, 0x1

    invoke-direct {p0, p1, v10}, Lcom/meizu/common/widget/EnhanceGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v5

    .line 1260
    .local v5, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v1, v5, v10

    .line 1262
    .local v1, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1263
    .local v9, "width":I
    if-nez p5, :cond_7

    .line 1267
    sub-int v3, p4, v9

    .line 1268
    .local v3, "childLeft":I
    move/from16 v4, p4

    .line 1271
    .local v4, "childRight":I
    :goto_3
    invoke-virtual {p1, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 1273
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v10, :cond_8

    .line 1282
    :cond_0
    :goto_4
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    .line 1374
    :cond_1
    :goto_5
    return-void

    .line 1234
    .end local v1    # "childBottom":I
    .end local v2    # "childHeightSpec":I
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    .end local v5    # "childTop":I
    .end local v6    # "childWidthSpec":I
    .end local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    .end local v9    # "width":I
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .restart local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    goto :goto_0

    .end local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    :cond_3
    move-object v7, v8

    .line 1236
    check-cast v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .restart local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    goto :goto_0

    :cond_4
    const/4 v10, -0x1

    .line 1241
    goto :goto_1

    .line 1243
    :cond_5
    if-eqz p3, :cond_6

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {p1, v10}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    :cond_6
    const/4 v10, 0x1

    goto :goto_6

    .line 1264
    .restart local v1    # "childBottom":I
    .restart local v2    # "childHeightSpec":I
    .restart local v5    # "childTop":I
    .restart local v6    # "childWidthSpec":I
    .restart local v9    # "width":I
    :cond_7
    move/from16 v3, p4

    .line 1265
    .restart local v3    # "childLeft":I
    add-int v4, v3, v9

    .restart local v4    # "childRight":I
    goto :goto_3

    .line 1273
    :cond_8
    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v10, :cond_0

    .line 1274
    instance-of v10, p1, Landroid/widget/Checkable;

    if-nez v10, :cond_9

    .line 1276
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_0

    .line 1278
    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/View;->setActivated(Z)V

    goto :goto_4

    :cond_9
    move-object v10, p1

    .line 1275
    check-cast v10, Landroid/widget/Checkable;

    iget-object v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_4

    .line 1282
    :cond_a
    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-eqz v10, :cond_1

    .line 1283
    new-instance v10, Lcom/meizu/common/widget/EnhanceGallery$3;

    invoke-direct {v10, p0}, Lcom/meizu/common/widget/EnhanceGallery$3;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_5
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2929
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 2930
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    .line 2931
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .line 2933
    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 2943
    return-void

    .end local v3    # "i":I
    .end local v5    # "useActivated":Z
    :cond_0
    const/4 v5, 0x1

    .line 2931
    goto :goto_0

    .line 2934
    .restart local v3    # "i":I
    .restart local v5    # "useActivated":Z
    :cond_1
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2935
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 2937
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-nez v6, :cond_2

    .line 2939
    if-nez v5, :cond_3

    .line 2933
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2938
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    .line 2940
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1782
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    .line 1784
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    .line 1785
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1789
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v2, v5, :cond_2

    .line 1793
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1794
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1796
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1802
    :goto_0
    if-nez v1, :cond_4

    .line 1812
    :cond_0
    :goto_1
    return-void

    .line 1786
    :cond_1
    return-void

    .line 1790
    :cond_2
    return-void

    .line 1797
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1802
    :cond_4
    if-eq v1, v0, :cond_0

    .line 1805
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1809
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public changeChildAlphaWhenDragView(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2528
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    .line 2529
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 499
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 2166
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    .line 2169
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2170
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    goto :goto_0

    .line 2167
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 482
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 2876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2878
    const/4 v2, 0x0

    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .line 2880
    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lt v9, v3, :cond_1

    .line 2917
    if-nez v2, :cond_9

    .line 2920
    :cond_0
    :goto_1
    return-void

    .line 2881
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 2882
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "lastPos":I
    const-wide/16 v12, -0x1

    .line 2884
    .local v12, "lastPosId":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-lt v5, v3, :cond_4

    .line 2887
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-lt v5, v3, :cond_5

    :cond_2
    const/4 v3, 0x0

    .line 2889
    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2890
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2891
    .local v10, "end":I
    const/4 v11, 0x0

    .line 2892
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_3
    move/from16 v0, v16

    if-lt v0, v10, :cond_6

    .line 2902
    :goto_4
    if-eqz v11, :cond_8

    .line 2880
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2885
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v5}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v12

    goto :goto_2

    .line 2887
    :cond_5
    cmp-long v3, v6, v12

    if-nez v3, :cond_2

    .line 2913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    .line 2893
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v14

    .line 2894
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_7

    .line 2895
    const/4 v11, 0x1

    .line 2896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_4

    .line 2892
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 2903
    .end local v14    # "searchId":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2904
    add-int/lit8 v9, v9, -0x1

    .line 2905
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2906
    const/4 v2, 0x1

    .line 2907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v3, :cond_3

    .line 2908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_5

    .line 2917
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v12    # "lastPosId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 2918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_1
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2659
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1721
    :goto_0
    return-void

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1712
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 517
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 509
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 504
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 2300
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2346
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v4, :cond_1

    .line 2347
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 2346
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_0

    .line 2350
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2351
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2352
    .local v0, "count":I
    new-array v3, v0, [J

    .local v3, "ids":[J
    const/4 v1, 0x0

    .line 2354
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 2357
    return-object v3

    .line 2355
    :cond_2
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2313
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2316
    return-object v0

    .line 2314
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    return-object v0
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    .line 2280
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 2281
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 2282
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 2283
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-nez v0, :cond_0

    .line 2046
    :goto_0
    return-void

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScroll(Lcom/meizu/common/widget/EnhanceGallery;III)V

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 2330
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v0, :cond_1

    .line 2334
    :cond_0
    return v1

    .line 2330
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method layout(IZ)V
    .locals 9
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 874
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-ge v7, v8, :cond_2

    .line 884
    :goto_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-nez v5, :cond_4

    .line 888
    :goto_1
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-nez v5, :cond_5

    .line 893
    :cond_0
    :goto_2
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-eqz v5, :cond_6

    .line 900
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    if-gez v5, :cond_7

    .line 905
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->recycleAllViews()V

    .line 909
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->detachAllViewsFromParent()V

    .line 915
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 917
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->layoutChildren()V

    .line 920
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 922
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 923
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->checkSelectionChanged()V

    .line 925
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    .line 926
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNeedSync:Z

    .line 927
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->setNextSelectedPositionInt(I)V

    .line 928
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    .line 930
    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 931
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 932
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_8

    .line 968
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 969
    return-void

    .line 875
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLayoutDirection()I

    move-result v7

    if-eq v7, v5, :cond_3

    move v5, v6

    :cond_3
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    goto :goto_0

    .line 885
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->handleDataChanged()V

    goto :goto_1

    .line 888
    :cond_5
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v5}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->confirmCheckedPositionsById()V

    goto :goto_2

    .line 894
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 895
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->resetList()V

    .line 896
    return-void

    .line 901
    :cond_7
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    goto :goto_3

    .line 933
    .restart local v4    # "view":Landroid/view/View;
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    .line 934
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 936
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-gtz v5, :cond_a

    .line 947
    :cond_9
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-gtz v5, :cond_1

    .line 949
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 950
    .local v0, "childCount":I
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v5, :cond_c

    .line 958
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v3, v5, v6

    .line 960
    .local v3, "mostRight":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-eq v5, v3, :cond_1

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    if-eqz v5, :cond_1

    .line 961
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 962
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto/16 :goto_4

    .line 936
    .end local v0    # "childCount":I
    .end local v3    # "mostRight":I
    :cond_a
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v5, :cond_9

    const/4 v1, 0x0

    .line 938
    .local v1, "distance":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v5, v6, :cond_1

    .line 939
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v5, :cond_b

    .line 942
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v6, v7

    mul-int v1, v5, v6

    .line 944
    :goto_5
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 945
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto/16 :goto_4

    .line 940
    :cond_b
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    neg-int v5, v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v6, v7

    mul-int v1, v5, v6

    goto :goto_5

    .line 951
    .end local v1    # "distance":I
    .restart local v0    # "childCount":I
    :cond_c
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v2, v5, v6

    .line 953
    .local v2, "mostLeft":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v5, v2, :cond_1

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    if-eqz v5, :cond_1

    .line 954
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 955
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto/16 :goto_4
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    .line 1643
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1582
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1583
    :cond_0
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1584
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1590
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->stop(Z)V

    .line 1593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1595
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-gez v0, :cond_2

    .line 1600
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    .line 1601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    .line 1603
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    .line 1604
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    .line 1606
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    .line 1608
    return v2

    .line 1582
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1586
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto :goto_0

    .line 1596
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    .line 1597
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1447
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-gtz v7, :cond_2

    .line 1450
    :cond_0
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    if-eqz v7, :cond_3

    .line 1460
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 1463
    .local v0, "childCount":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    packed-switch v7, :pswitch_data_0

    .line 1521
    :goto_1
    :pswitch_0
    const/4 v7, 0x1

    return v7

    .line 1447
    .end local v0    # "childCount":I
    :cond_2
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v7, :cond_0

    .line 1448
    const/4 v7, 0x0

    return v7

    .line 1454
    :cond_3
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1457
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1465
    .restart local v0    # "childCount":I
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x44bb8000    # 1500.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 1466
    const/4 v7, 0x0

    return v7

    :cond_4
    const/4 v7, 0x2

    .line 1469
    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1471
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 1472
    .local v3, "length":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    div-int v7, v3, v7

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 1473
    .local v4, "scale":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    mul-int v1, v4, v7

    .local v1, "delta":I
    const/4 v7, 0x0

    .line 1475
    cmpl-float v7, p3, v7

    if-lez v7, :cond_8

    .line 1477
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v7, :cond_5

    .line 1487
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1488
    .local v6, "view":Landroid/view/View;
    if-nez v6, :cond_7

    .line 1491
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v2, v7, v1

    .local v2, "distance":I
    :goto_2
    const/4 v7, 0x2

    .line 1514
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1515
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v7, v2}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .line 1478
    .end local v2    # "distance":I
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1479
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v5, v7, v8

    .line 1481
    .local v5, "startEdge":I
    if-nez v6, :cond_6

    .line 1484
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v2, v5, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1482
    .end local v2    # "distance":I
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v2, v5, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1489
    .end local v2    # "distance":I
    .end local v5    # "startEdge":I
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v7, v8

    sub-int v2, v1, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1495
    .end local v2    # "distance":I
    .end local v6    # "view":Landroid/view/View;
    :cond_8
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v7, :cond_9

    .line 1505
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1506
    .restart local v6    # "view":Landroid/view/View;
    if-nez v6, :cond_b

    .line 1509
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1496
    .end local v2    # "distance":I
    .end local v6    # "view":Landroid/view/View;
    :cond_9
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1497
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v5, v7, v8

    .line 1499
    .restart local v5    # "startEdge":I
    if-nez v6, :cond_a

    const/4 v7, 0x0

    .line 1502
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v5, v7

    sub-int v7, v1, v7

    neg-int v2, v7

    .restart local v2    # "distance":I
    goto/16 :goto_2

    .line 1500
    .end local v2    # "distance":I
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v5, v7

    sub-int v7, v1, v7

    neg-int v2, v7

    .restart local v2    # "distance":I
    goto/16 :goto_2

    .line 1507
    .end local v2    # "distance":I
    .end local v5    # "startEdge":I
    :cond_b
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .restart local v2    # "distance":I
    goto/16 :goto_2

    .end local v1    # "delta":I
    .end local v2    # "distance":I
    .end local v3    # "length":I
    .end local v4    # "scale":I
    .end local v6    # "view":Landroid/view/View;
    :pswitch_2
    const/4 v7, 0x4

    .line 1518
    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto/16 :goto_1

    .line 1463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 1830
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1837
    if-nez p1, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1839
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3003
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3004
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x1

    .line 3008
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3009
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getCount()I

    move-result v1

    .local v1, "columnsCount":I
    const/4 v2, 0x1

    .line 3011
    .local v2, "selectionMode":I
    const/4 v3, 0x0

    invoke-static {v4, v1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3013
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    const-class v3, Lcom/meizu/common/widget/EnhanceGallery;

    .line 3014
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3015
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2973
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    const/4 v1, -0x1

    .line 2974
    if-ne p2, v1, :cond_1

    .line 2975
    :cond_0
    return-void

    .line 2974
    :cond_1
    if-eqz v0, :cond_0

    .line 2978
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getSelectedItemPosition()I

    move-result v1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    .line 2982
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2985
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2990
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isClickable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2995
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2999
    :goto_3
    return-void

    .line 2979
    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v1, 0x8

    .line 2980
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 2986
    :cond_3
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2987
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x10

    .line 2991
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2992
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_2

    :cond_5
    const/16 v1, 0x20

    .line 2996
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2997
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    .line 530
    invoke-virtual {p0, v1, v1}, Lcom/meizu/common/widget/EnhanceGallery;->layout(IZ)V

    .line 531
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    .line 532
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 1648
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-ltz v8, :cond_1

    .line 1651
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 1674
    :cond_0
    :goto_0
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 1675
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1676
    .local v2, "id":J
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-direct {p0, v8, v9, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    .line 1677
    return-void

    .line 1649
    .end local v2    # "id":J
    :cond_1
    return-void

    .line 1652
    :cond_2
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1653
    .local v7, "motionPosition":I
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1654
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1655
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1656
    .local v6, "longPressPosition":I
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-interface {v8, v9}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1658
    .local v4, "longPressId":J
    const/4 v1, 0x0

    .line 1660
    .local v1, "handled":Z
    iget-boolean v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-eqz v8, :cond_3

    .line 1663
    .end local v1    # "handled":Z
    :goto_1
    if-eqz v1, :cond_0

    const/4 v8, -0x1

    .line 1664
    iput v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1665
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1666
    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1661
    .restart local v1    # "handled":Z
    :cond_3
    invoke-virtual {p0, v0, v6, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1526
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-gtz v3, :cond_3

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1533
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    if-eqz v3, :cond_4

    .line 1544
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v3, :cond_6

    .line 1547
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-nez v3, :cond_7

    .line 1551
    :goto_1
    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1555
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 1556
    .local v0, "childCount":I
    float-to-int v2, p3

    .line 1558
    .local v2, "incrementalDeltaX":I
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_8

    .line 1562
    :goto_2
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-nez v3, :cond_9

    .line 1572
    :cond_2
    :goto_3
    if-nez v2, :cond_b

    .line 1575
    :goto_4
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    .line 1576
    return v7

    .line 1526
    .end local v0    # "childCount":I
    .end local v2    # "incrementalDeltaX":I
    :cond_3
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v3, :cond_0

    .line 1527
    return v6

    .line 1534
    :cond_4
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-eqz v3, :cond_1

    .line 1540
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz v3, :cond_5

    .line 1541
    :goto_5
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {p0, v3, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1540
    :cond_5
    iput-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    goto :goto_5

    .line 1544
    :cond_6
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1548
    :cond_7
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto :goto_1

    .line 1559
    .restart local v0    # "childCount":I
    .restart local v2    # "incrementalDeltaX":I
    :cond_8
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    goto :goto_2

    .line 1562
    :cond_9
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    .line 1563
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1564
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-ge v3, v4, :cond_a

    .line 1567
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v1, v8, v3

    .line 1568
    .local v1, "coeff":F
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    goto :goto_3

    .end local v1    # "coeff":F
    :cond_a
    const/4 v2, 0x0

    .line 1565
    goto :goto_3

    .line 1573
    :cond_b
    mul-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    goto :goto_4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1683
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1424
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-gez v1, :cond_2

    .line 1436
    :cond_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-eqz v1, :cond_4

    .line 1437
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1442
    :goto_0
    return v6

    .line 1424
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v1, :cond_0

    .line 1426
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-eqz v1, :cond_3

    .line 1430
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 1431
    .local v0, "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iput v1, v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 1432
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->rememberWindowAttachCount()V

    .line 1433
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->post(Ljava/lang/Runnable;)Z

    .line 1434
    return v6

    .line 1427
    .end local v0    # "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    :cond_3
    new-instance v1, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    goto :goto_1

    .line 1436
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-eq v1, v2, :cond_1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 833
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/AbsSpinner;->onSizeChanged(IIII)V

    .line 834
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$2;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 860
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1408
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1410
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/4 v2, 0x1

    .line 1411
    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    .line 1414
    if-eq v0, v2, :cond_1

    .line 1418
    :goto_0
    return v1

    .line 1413
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    goto :goto_0

    .line 1415
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1615
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1635
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchUnpress()V

    .line 1636
    return-void

    .line 1617
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_0

    .line 1620
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_0

    .line 1624
    :pswitch_3
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 1625
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-ne v0, v1, :cond_1

    .line 1629
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 1626
    :cond_1
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto :goto_1

    .line 1615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public performItemClicks(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 2735
    const/4 v9, 0x0

    .line 2736
    .local v9, "handled":Z
    const/4 v8, 0x1

    .line 2738
    .local v8, "dispatchItemClick":Z
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v1, :cond_2

    .line 2784
    :cond_0
    :goto_0
    if-nez v8, :cond_13

    .line 2795
    :cond_1
    return v0

    .line 2739
    :cond_2
    const/4 v9, 0x1

    .line 2740
    const/4 v7, 0x0

    .line 2742
    .local v7, "checkedStateChanged":Z
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 2763
    :cond_3
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eq v1, v10, :cond_c

    .line 2779
    :goto_1
    if-eqz v7, :cond_0

    .line 2780
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateOnScreenCheckedViews()V

    goto :goto_0

    .line 2742
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 2743
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    move v6, v0

    .line 2744
    .local v6, "checked":Z
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2745
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v1, :cond_8

    .line 2752
    :cond_5
    :goto_3
    if-nez v6, :cond_a

    .line 2755
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2757
    :goto_4
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_b

    .line 2762
    :cond_6
    :goto_5
    const/4 v7, 0x1

    goto :goto_1

    .end local v6    # "checked":Z
    :cond_7
    move v6, v10

    .line 2743
    goto :goto_2

    .line 2745
    .restart local v6    # "checked":Z
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2746
    if-nez v6, :cond_9

    .line 2749
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_3

    .line 2747
    :cond_9
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 2753
    :cond_a
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_4

    .line 2757
    :cond_b
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_6

    .line 2758
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2760
    const/4 v8, 0x0

    goto :goto_5

    .line 2764
    .end local v6    # "checked":Z
    :cond_c
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    move v6, v0

    .line 2765
    .restart local v6    # "checked":Z
    :goto_6
    if-nez v6, :cond_f

    .line 2773
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 2774
    :cond_d
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2776
    :goto_7
    const/4 v7, 0x1

    goto :goto_1

    .end local v6    # "checked":Z
    :cond_e
    move v6, v10

    .line 2764
    goto :goto_6

    .line 2766
    .restart local v6    # "checked":Z
    :cond_f
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2767
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2768
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v1, :cond_11

    .line 2772
    :cond_10
    :goto_8
    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_7

    .line 2768
    :cond_11
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2769
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 2770
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_8

    .line 2773
    :cond_12
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    .line 2785
    .end local v6    # "checked":Z
    .end local v7    # "checkedStateChanged":Z
    :cond_13
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 2787
    if-nez p1, :cond_14

    .line 2790
    :goto_9
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2791
    return v10

    .line 2788
    :cond_14
    invoke-virtual {p1, v10}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_9
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 2361
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2437
    const/4 v8, 0x0

    .line 2438
    .local v8, "handled":Z
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-nez v0, :cond_f

    .line 2441
    .end local v8    # "handled":Z
    :goto_0
    if-eqz v8, :cond_10

    .line 2445
    :goto_1
    if-nez v8, :cond_11

    .line 2448
    :goto_2
    return v8

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    .line 2369
    :cond_1
    iput p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    const v0, 0x1020001

    .line 2371
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2372
    .local v6, "checkbox":Landroid/view/View;
    if-nez v6, :cond_5

    .line 2376
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2377
    .local v7, "frame":Landroid/graphics/Rect;
    if-eqz v7, :cond_6

    .line 2381
    :goto_4
    invoke-virtual {p1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 2383
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    const/4 v0, 0x0

    .line 2384
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 2386
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 2387
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2389
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-nez v0, :cond_7

    .line 2430
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    .line 2434
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    :cond_3
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 2362
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    goto :goto_5

    .line 2372
    .restart local v6    # "checkbox":Landroid/view/View;
    :cond_5
    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 2373
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_3

    .line 2378
    .restart local v7    # "frame":Landroid/graphics/Rect;
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2379
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    goto :goto_4

    .line 2390
    :cond_7
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-nez v0, :cond_8

    .line 2394
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    .line 2397
    :goto_6
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 2417
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 2418
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 2427
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_8
    move-object v9, p1

    .line 2391
    check-cast v9, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    .line 2392
    .local v9, "item":Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-interface {v9}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v9}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->needBackground()Z

    move-result v2

    invoke-interface {v9}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    goto :goto_6

    .line 2399
    .end local v9    # "item":Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;
    :cond_9
    if-nez v6, :cond_b

    .line 2402
    .end local v6    # "checkbox":Landroid/view/View;
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, -0x1

    .line 2403
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 2405
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-eqz v0, :cond_c

    .line 2410
    :goto_8
    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 2411
    .local v10, "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    iput p2, v10, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 2412
    invoke-virtual {v10}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->rememberWindowAttachCount()V

    .line 2413
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->post(Ljava/lang/Runnable;)Z

    .line 2414
    const/4 v0, 0x1

    return v0

    .line 2399
    .end local v10    # "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    .restart local v6    # "checkbox":Landroid/view/View;
    :cond_b
    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_a

    .line 2400
    check-cast v6, Landroid/widget/Checkable;

    .end local v6    # "checkbox":Landroid/view/View;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_7

    .line 2406
    :cond_c
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    goto :goto_8

    .restart local v6    # "checkbox":Landroid/view/View;
    :cond_d
    move-object v0, p1

    .line 2419
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v11

    .line 2420
    .local v11, "v":Landroid/view/View;
    if-nez v11, :cond_e

    .line 2423
    :goto_9
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2424
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_5

    :cond_e
    const/4 v0, 0x0

    .line 2421
    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9

    .line 2439
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v11    # "v":Landroid/view/View;
    .restart local v8    # "handled":Z
    :cond_f
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v8

    .local v8, "handled":Z
    goto/16 :goto_0

    .line 2442
    .end local v8    # "handled":Z
    :cond_10
    invoke-virtual/range {p0 .. p4}, Lcom/meizu/common/widget/EnhanceGallery;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 2443
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v8

    .restart local v8    # "handled":Z
    goto/16 :goto_1

    .end local v8    # "handled":Z
    :cond_11
    const/4 v0, 0x0

    .line 2446
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    goto/16 :goto_2
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 2056
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-ne p1, v0, :cond_1

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 2058
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScrollStateChanged(Lcom/meizu/common/widget/EnhanceGallery;I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 2117
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2118
    if-nez p1, :cond_1

    .line 2127
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    .line 2122
    :goto_1
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2125
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    goto :goto_0

    .line 2120
    :cond_3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    goto :goto_1

    .line 2122
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    .line 2123
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    goto :goto_2
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    .line 458
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    .line 412
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 437
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 2139
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 2140
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 2144
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v0, :cond_2

    .line 2157
    :cond_0
    :goto_1
    return-void

    .line 2141
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2142
    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 2145
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    .line 2148
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5

    .line 2152
    :cond_3
    :goto_3
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2153
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    .line 2154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setLongClickable(Z)V

    goto :goto_1

    .line 2146
    :cond_4
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    goto :goto_2

    .line 2148
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2149
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    goto :goto_3
.end method

.method public setDragEnable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    .line 445
    return-void
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 4
    .param p1, "bgres"    # [I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2510
    if-nez p1, :cond_1

    .line 2521
    :cond_0
    :goto_0
    return-void

    .line 2511
    :cond_1
    array-length v0, p1

    if-gtz v0, :cond_2

    .line 2514
    :goto_1
    array-length v0, p1

    if-gt v0, v2, :cond_3

    .line 2517
    :goto_2
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 2518
    aget v0, p1, v3

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    goto :goto_0

    .line 2512
    :cond_2
    aget v0, p1, v1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    goto :goto_1

    .line 2515
    :cond_3
    aget v0, p1, v2

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    goto :goto_2
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1822
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    if-ne v0, p1, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1823
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    .line 1824
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    goto :goto_0
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2807
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v3, :cond_5

    .line 2812
    if-nez p2, :cond_6

    .line 2823
    :cond_0
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eq v3, v6, :cond_9

    .line 2846
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v3, :cond_f

    :cond_1
    move v7, v2

    .line 2849
    .local v7, "updateIds":Z
    :goto_1
    if-eqz p2, :cond_10

    .line 2850
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2851
    if-nez v7, :cond_11

    .line 2857
    :goto_2
    if-nez p2, :cond_12

    .line 2863
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 2864
    :cond_3
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2869
    .end local v7    # "updateIds":Z
    :cond_4
    :goto_3
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    if-eqz v1, :cond_15

    .line 2873
    :goto_4
    return-void

    .line 2808
    :cond_5
    return-void

    .line 2812
    :cond_6
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v3, v6, :cond_0

    .line 2814
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-nez v3, :cond_8

    .line 2816
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2814
    :cond_8
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2820
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 2824
    :cond_9
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2825
    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2826
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v1, :cond_b

    .line 2833
    :cond_a
    :goto_5
    if-ne v0, p2, :cond_d

    .line 2840
    :goto_6
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    .line 2841
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2842
    .local v4, "id":J
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_3

    .line 2826
    .end local v4    # "id":J
    :cond_b
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2827
    if-nez p2, :cond_c

    .line 2830
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_5

    .line 2828
    :cond_c
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_5

    .line 2834
    :cond_d
    if-nez p2, :cond_e

    .line 2837
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_6

    .line 2835
    :cond_e
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_6

    .line 2846
    .end local v0    # "oldValue":Z
    :cond_f
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v1

    goto/16 :goto_1

    .line 2849
    .restart local v7    # "updateIds":Z
    :cond_10
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->isItemChecked(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 2852
    :cond_11
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    goto/16 :goto_2

    .line 2858
    :cond_12
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2859
    if-nez v7, :cond_13

    .line 2862
    :goto_7
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto/16 :goto_3

    .line 2860
    :cond_13
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_7

    .line 2863
    :cond_14
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 2870
    .end local v7    # "updateIds":Z
    :cond_15
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    goto/16 :goto_4
.end method

.method public setMaxOverScrollDistance(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 419
    if-ltz p1, :cond_0

    .line 422
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 424
    :goto_0
    return-void

    .line 420
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 2185
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->setWrapped(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V

    .line 2186
    return-void

    .line 2183
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    .line 2033
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 2034
    return-void
.end method

.method public setScrollEnableWhenLessContent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 477
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1774
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1777
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    .line 1778
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 469
    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1743
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isPressed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1749
    :cond_0
    return v3

    .line 1743
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1744
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1745
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1746
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    return v2
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1731
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1732
    .local v2, "longPressPosition":I
    if-ltz v2, :cond_0

    .line 1736
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1737
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    return v3

    .line 1733
    .end local v0    # "longPressId":J
    :cond_0
    return v3
.end method

.method startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 2452
    const/4 v0, 0x0

    .line 2471
    return v0
.end method

.method trackMotionScroll(I)Z
    .locals 14
    .param p1, "deltaX"    # I

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    .line 547
    .local v2, "childCount":I
    if-nez v2, :cond_1

    .line 548
    :cond_0
    const/4 v10, 0x0

    return v10

    .line 547
    :cond_1
    if-eqz p1, :cond_0

    .line 551
    if-ltz p1, :cond_7

    const/4 v9, 0x0

    .line 552
    .local v9, "toLeft":Z
    :goto_0
    const/4 v6, 0x0

    .line 553
    .local v6, "isAtEdge":Z
    const/4 v3, 0x0

    .line 557
    .local v3, "dontRecycle":Z
    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v10, :cond_8

    .line 563
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-eqz v10, :cond_d

    :cond_2
    const/4 v1, 0x0

    .line 565
    .local v1, "cannotScrollRight":Z
    :goto_1
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-eq v10, v11, :cond_e

    :cond_3
    const/4 v0, 0x0

    .line 569
    .local v0, "cannotScrollLeft":Z
    :goto_2
    if-eqz v1, :cond_f

    .line 570
    :cond_4
    const/4 v3, 0x1

    .line 573
    :goto_3
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->offsetChildrenLeftAndRight(I)V

    .line 575
    if-eqz v3, :cond_10

    :goto_4
    const/4 v10, 0x0

    .line 590
    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 591
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    .line 595
    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v10, :cond_12

    const/4 v10, 0x0

    .line 608
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 609
    .local v5, "first":I
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v7

    .line 610
    .local v7, "last":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v8, v10, v11

    .line 611
    .local v8, "start":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v11

    sub-int v4, v10, v11

    .line 613
    .local v4, "end":I
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-eqz v10, :cond_15

    .line 616
    :cond_5
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-eq v10, v11, :cond_16

    .line 622
    .end local v8    # "start":I
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 623
    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/meizu/common/widget/EnhanceGallery;->onScrollChanged(IIII)V

    .line 625
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 626
    return v6

    .end local v0    # "cannotScrollLeft":Z
    .end local v1    # "cannotScrollRight":Z
    .end local v3    # "dontRecycle":Z
    .end local v4    # "end":I
    .end local v5    # "first":I
    .end local v6    # "isAtEdge":Z
    .end local v7    # "last":I
    .end local v9    # "toLeft":Z
    :cond_7
    const/4 v9, 0x1

    .line 551
    goto :goto_0

    .line 558
    .restart local v3    # "dontRecycle":Z
    .restart local v6    # "isAtEdge":Z
    .restart local v9    # "toLeft":Z
    :cond_8
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-eqz v10, :cond_b

    :cond_9
    const/4 v0, 0x0

    .line 560
    .restart local v0    # "cannotScrollLeft":Z
    :goto_6
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-eq v10, v11, :cond_c

    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "cannotScrollRight":Z
    :goto_7
    goto :goto_2

    .end local v0    # "cannotScrollLeft":Z
    .end local v1    # "cannotScrollRight":Z
    :cond_b
    const/4 v10, 0x0

    .line 558
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_9

    if-gtz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    .line 560
    .restart local v0    # "cannotScrollLeft":Z
    :cond_c
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v11

    if-lt v10, v11, :cond_a

    if-ltz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    .end local v0    # "cannotScrollLeft":Z
    :cond_d
    const/4 v10, 0x0

    .line 563
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v11

    iget v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v11, v12

    if-lt v10, v11, :cond_2

    if-ltz p1, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 565
    .restart local v1    # "cannotScrollRight":Z
    :cond_e
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    if-gt v10, v11, :cond_3

    if-gtz p1, :cond_3

    const/4 v0, 0x1

    goto/16 :goto_2

    .line 569
    .restart local v0    # "cannotScrollLeft":Z
    :cond_f
    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 576
    :cond_10
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->detachOffScreenChildren(Z)V

    .line 578
    if-nez v9, :cond_11

    .line 583
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeft()V

    .line 586
    :goto_8
    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v10}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 587
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectionView()V

    goto/16 :goto_4

    .line 580
    :cond_11
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRight()V

    goto :goto_8

    :cond_12
    const/4 v10, 0x0

    .line 596
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    .line 597
    .restart local v5    # "first":I
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 598
    .restart local v7    # "last":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v4, v10, v11

    .line 600
    .restart local v4    # "end":I
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-eqz v10, :cond_14

    .line 603
    :cond_13
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v10, v11, :cond_6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v10

    if-le v7, v10, :cond_6

    .line 604
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v7

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 605
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 600
    :cond_14
    if-ge v5, v4, :cond_13

    .line 601
    sub-int v10, v4, v5

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 602
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 613
    .restart local v8    # "start":I
    :cond_15
    if-le v5, v8, :cond_5

    .line 614
    sub-int v10, v8, v5

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 615
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 616
    :cond_16
    if-ge v7, v4, :cond_6

    .line 617
    sub-int v10, v4, v7

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 618
    const/4 v6, 0x1

    goto/16 :goto_5
.end method
