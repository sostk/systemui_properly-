.class public abstract Lcom/meizu/common/widget/AbsSpinner;
.super Lcom/meizu/common/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AbsSpinner$1;,
        Lcom/meizu/common/widget/AbsSpinner$RecycleBin;,
        Lcom/meizu/common/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 45
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 46
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 47
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;-><init>(Lcom/meizu/common/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    .line 58
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSpinner;->initAbsSpinner()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 45
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 46
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 47
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;-><init>(Lcom/meizu/common/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    .line 67
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSpinner;->initAbsSpinner()V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AbsSpinner;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSpinner;->setFocusable(Z)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 91
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 308
    return-object v0

    .line 305
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/meizu/common/widget/AbsSpinner;

    .line 475
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 476
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 480
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/AbsSpinner;

    .line 481
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 168
    .local v6, "widthMode":I
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-gt v8, v10, :cond_2

    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionLeftPadding:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 170
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionTopPadding:I

    if-gt v8, v10, :cond_3

    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionTopPadding:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 172
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionRightPadding:I

    if-gt v8, v10, :cond_4

    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionRightPadding:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 174
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-gt v8, v10, :cond_5

    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionBottomPadding:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 177
    iget-boolean v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataChanged:Z

    if-nez v8, :cond_6

    :goto_4
    const/4 v2, 0x0

    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 183
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 185
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 186
    .local v4, "selectedPosition":I
    if-gez v4, :cond_7

    .line 218
    :cond_0
    :goto_5
    if-nez v1, :cond_c

    .line 226
    :cond_1
    :goto_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 227
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v8, 0x0

    .line 229
    invoke-static {v2, p2, v8}, Lcom/meizu/common/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    .local v0, "heightSize":I
    const/4 v8, 0x0

    .line 230
    invoke-static {v3, p1, v8}, Lcom/meizu/common/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    .line 232
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Lcom/meizu/common/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 233
    iput p2, p0, Lcom/meizu/common/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 234
    iput p1, p0, Lcom/meizu/common/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 236
    return-void

    .line 168
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    goto :goto_3

    .line 178
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->handleDataChanged()V

    goto :goto_4

    .line 186
    .restart local v1    # "needsMeasuring":Z
    .restart local v2    # "preferredHeight":I
    .restart local v3    # "preferredWidth":I
    .restart local v4    # "selectedPosition":I
    :cond_7
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 188
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 189
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_9

    .line 198
    :cond_8
    :goto_7
    if-nez v5, :cond_a

    .line 203
    :goto_8
    if-eqz v5, :cond_0

    .line 204
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 209
    :goto_9
    invoke-virtual {p0, v5, p1, p2}, Lcom/meizu/common/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 211
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 212
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 214
    const/4 v1, 0x0

    goto :goto_5

    .line 191
    :cond_9
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    .line 194
    invoke-virtual {v5, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_7

    .line 200
    :cond_a
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    goto :goto_8

    .line 205
    :cond_b
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 206
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    goto :goto_9

    .line 220
    .end local v5    # "view":Landroid/view/View;
    :cond_c
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 221
    if-nez v6, :cond_1

    .line 222
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    goto/16 :goto_6
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v0, p1

    .line 426
    check-cast v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;

    .line 428
    .local v0, "ss":Lcom/meizu/common/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/meizu/common/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 430
    iget-wide v4, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_0

    .line 431
    iput-boolean v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataChanged:Z

    .line 432
    iput-boolean v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mNeedSync:Z

    .line 433
    iget-wide v4, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v4, p0, Lcom/meizu/common/widget/AbsSpinner;->mSyncRowId:J

    .line 434
    iget v1, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mSyncPosition:I

    .line 435
    iput v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mSyncMode:I

    .line 436
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->requestLayout()V

    .line 438
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 430
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 413
    invoke-super {p0}, Lcom/meizu/common/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 414
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 415
    .local v0, "ss":Lcom/meizu/common/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    .line 416
    iget-wide v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->position:I

    .line 421
    :goto_1
    return-object v0

    .line 416
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 419
    iput v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->position:I

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 344
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 345
    .local v2, "frame":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 350
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 351
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-gez v3, :cond_1

    const/4 v4, -0x1

    .line 361
    return v4

    .line 346
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 347
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    goto :goto_0

    .line 352
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 356
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    iget v4, p0, Lcom/meizu/common/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 255
    .local v0, "childCount":I
    iget-object v4, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    .line 256
    .local v4, "recycleBin":Lcom/meizu/common/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mFirstPosition:I

    .local v3, "position":I
    const/4 v1, 0x0

    .line 259
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 264
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 261
    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    .line 262
    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/AdapterView;->requestLayout()V

    goto :goto_0
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 143
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataChanged:Z

    .line 144
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mNeedSync:Z

    .line 146
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 147
    iput v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 148
    iput-wide v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 150
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 152
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->invalidate()V

    .line 153
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v2, :cond_1

    .line 106
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 108
    iput v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 109
    iput-wide v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 111
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v2, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->checkFocus()V

    .line 131
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->resetList()V

    .line 133
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->checkSelectionChanged()V

    .line 136
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->requestLayout()V

    .line 137
    return-void

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 103
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->resetList()V

    goto :goto_0

    .line 112
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    iput v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mOldItemCount:I

    .line 113
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    .line 114
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->checkFocus()V

    .line 116
    new-instance v2, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/meizu/common/widget/AdapterView;)V

    iput-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 117
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 119
    iget v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    if-gtz v2, :cond_3

    .line 121
    .local v0, "position":I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 124
    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_1

    .end local v0    # "position":I
    :cond_3
    move v0, v1

    .line 119
    goto :goto_2
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 279
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->requestLayout()V

    .line 280
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->invalidate()V

    .line 281
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 271
    if-nez p2, :cond_1

    .line 273
    .local v0, "shouldAnimate":Z
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 274
    return-void

    .line 271
    .end local v0    # "shouldAnimate":Z
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 292
    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mOldSelectedPosition:I

    if-ne p1, v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 294
    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 295
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 296
    invoke-virtual {p0, v0, p2}, Lcom/meizu/common/widget/AbsSpinner;->layout(IZ)V

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    goto :goto_0
.end method
