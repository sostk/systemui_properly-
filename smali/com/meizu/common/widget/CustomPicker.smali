.class public Lcom/meizu/common/widget/CustomPicker;
.super Landroid/widget/FrameLayout;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomPicker$1;,
        Lcom/meizu/common/widget/CustomPicker$SavedState;,
        Lcom/meizu/common/widget/CustomPicker$DataAdapter;,
        Lcom/meizu/common/widget/CustomPicker$ColumnData;,
        Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;
    }
.end annotation


# instance fields
.field private mColumnCount:I

.field private mColumnTextViews:[Landroid/widget/TextView;

.field private mCurrentItems:[I

.field private mFocusedPosition:I

.field private mOnItemChangedListener:Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;

.field private mOneScreenCount:I

.field private mPickers:[Lcom/meizu/common/widget/ScrollTextView;

.field private mText:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/meizu/common/widget/CustomPicker$ColumnData;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "columnCount"    # I
    .param p3, "columnData"    # [Lcom/meizu/common/widget/CustomPicker$ColumnData;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/common/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    invoke-virtual {p0, p2, p3}, Lcom/meizu/common/widget/CustomPicker;->initPicker(I[Lcom/meizu/common/widget/CustomPicker$ColumnData;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/meizu/common/widget/CustomPicker;->mOneScreenCount:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/meizu/common/widget/CustomPicker;->mFocusedPosition:I

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CustomPicker;)[I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomPicker;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/CustomPicker;)Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomPicker;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;

    return-object v0
.end method

.method private isDefaultFocusedPosition()Z
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/meizu/common/widget/CustomPicker;->mFocusedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 400
    const/4 v0, 0x0

    return v0

    .line 398
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setTextPadding(Landroid/widget/TextView;F)V
    .locals 5
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "itemHeight"    # F

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomPicker;->isDefaultFocusedPosition()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x30

    .line 387
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 388
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 389
    .local v0, "textOffset":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomPicker;->mFocusedPosition:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 393
    .end local v0    # "textOffset":F
    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x11

    .line 385
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentItem(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 314
    if-gez p1, :cond_1

    .line 315
    :cond_0
    return v1

    .line 314
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-ge p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCurrentItems()[I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    return-object v0
.end method

.method public varargs initPicker(I[Lcom/meizu/common/widget/CustomPicker$ColumnData;)V
    .locals 13
    .param p1, "columnCount"    # I
    .param p2, "columnData"    # [Lcom/meizu/common/widget/CustomPicker$ColumnData;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomPicker;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 180
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "columnCount only be 1 or 2 or 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomPicker;->removeAllViews()V

    goto :goto_0

    .line 182
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$layout;->mc_picker_column_1:I

    invoke-static {v2, v3, p0}, Lcom/meizu/common/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 198
    :goto_1
    iput p1, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    .line 199
    iget v2, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    const/4 v2, 0x3

    .line 200
    new-array v2, v2, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnTextViews:[Landroid/widget/TextView;

    const/4 v2, 0x3

    .line 201
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mText:[Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    const/4 v4, 0x0

    sget v2, Lcom/meizu/common/R$id;->mc_scroll1:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    aput-object v2, v3, v4

    .line 205
    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnTextViews:[Landroid/widget/TextView;

    const/4 v4, 0x0

    sget v2, Lcom/meizu/common/R$id;->mc_scroll1_text:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 208
    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    const/4 v4, 0x1

    sget v2, Lcom/meizu/common/R$id;->mc_scroll2:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    aput-object v2, v3, v4

    .line 209
    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnTextViews:[Landroid/widget/TextView;

    const/4 v4, 0x1

    sget v2, Lcom/meizu/common/R$id;->mc_scroll2_text:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 212
    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    const/4 v4, 0x2

    sget v2, Lcom/meizu/common/R$id;->mc_scroll3:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    aput-object v2, v3, v4

    .line 213
    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnTextViews:[Landroid/widget/TextView;

    const/4 v4, 0x2

    sget v2, Lcom/meizu/common/R$id;->mc_scroll3_text:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    const/4 v11, 0x0

    .local v11, "index":I
    const/4 v10, 0x0

    .line 216
    .local v10, "i":I
    :goto_2
    iget v2, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-lt v10, v2, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    :goto_3
    return-void

    .line 186
    .end local v10    # "i":I
    .end local v11    # "index":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$layout;->mc_picker_column_2:I

    invoke-static {v2, v3, p0}, Lcom/meizu/common/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 190
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$layout;->mc_picker_column_3:I

    invoke-static {v2, v3, p0}, Lcom/meizu/common/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 217
    .restart local v10    # "i":I
    .restart local v11    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    aget-object v0, v2, v10

    .line 218
    .local v0, "picker":Lcom/meizu/common/widget/ScrollTextView;
    iget-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnTextViews:[Landroid/widget/TextView;

    aget-object v12, v2, v10

    .line 220
    .local v12, "text":Landroid/widget/TextView;
    if-nez v0, :cond_3

    .line 216
    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 220
    :cond_3
    if-eqz v12, :cond_2

    .line 221
    if-nez p2, :cond_5

    .line 243
    :cond_4
    packed-switch v10, :pswitch_data_1

    goto :goto_4

    .line 245
    :pswitch_3
    sget v2, Lcom/meizu/common/R$string;->mc_hour:I

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 246
    new-instance v2, Lcom/meizu/common/widget/CustomPicker$DataAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/common/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/common/widget/CustomPicker;II)V

    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xd

    const/4 v5, 0x5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;III)V

    goto :goto_4

    .line 221
    :cond_5
    array-length v2, p2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    aget-object v2, p2, v2

    if-eqz v2, :cond_4

    .line 223
    aget-object v9, p2, v11

    .line 224
    .local v9, "data":Lcom/meizu/common/widget/CustomPicker$ColumnData;
    if-eqz v9, :cond_6

    .line 228
    add-int/lit8 v11, v11, 0x1

    .line 230
    :goto_5
    iget v2, p0, Lcom/meizu/common/widget/CustomPicker;->mOneScreenCount:I

    iget v3, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    if-lt v2, v3, :cond_7

    .line 233
    :goto_6
    iget-object v2, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    if-nez v2, :cond_8

    new-instance v1, Lcom/meizu/common/widget/CustomPicker$DataAdapter;

    iget v2, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mStartValue:I

    invoke-direct {v1, p0, v10, v2}, Lcom/meizu/common/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/common/widget/CustomPicker;II)V

    .line 235
    .local v1, "setData":Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    :goto_7
    iget-object v2, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mText:[Ljava/lang/String;

    iget-object v3, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 237
    iget v2, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mLineOffset:F

    iget v3, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCurrentItem:I

    iget v4, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCount:I

    iget v5, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    iget v6, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mValidStart:I

    iget v7, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mValidEnd:I

    iget-boolean v8, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    goto :goto_4

    .line 225
    .end local v1    # "setData":Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    :cond_6
    add-int/lit8 v11, v11, -0x1

    .line 226
    aget-object v9, p2, v11

    goto :goto_5

    .line 231
    :cond_7
    iget v2, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    iput v2, p0, Lcom/meizu/common/widget/CustomPicker;->mOneScreenCount:I

    goto :goto_6

    .line 233
    :cond_8
    iget-object v1, v9, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    goto :goto_7

    .line 251
    .end local v9    # "data":Lcom/meizu/common/widget/CustomPicker$ColumnData;
    :pswitch_4
    sget v2, Lcom/meizu/common/R$string;->mc_minute:I

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    new-instance v2, Lcom/meizu/common/widget/CustomPicker$DataAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/common/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/common/widget/CustomPicker;II)V

    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/4 v5, 0x5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;III)V

    goto/16 :goto_4

    .line 257
    :pswitch_5
    sget v2, Lcom/meizu/common/R$string;->mc_second:I

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 258
    new-instance v2, Lcom/meizu/common/widget/CustomPicker$DataAdapter;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/common/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/common/widget/CustomPicker;II)V

    iget-object v3, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/4 v5, 0x5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;III)V

    goto/16 :goto_4

    .line 267
    .end local v0    # "picker":Lcom/meizu/common/widget/ScrollTextView;
    .end local v12    # "text":Landroid/widget/TextView;
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomPicker;->setEnabled(Z)V

    goto/16 :goto_3

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CustomPicker;

    .line 420
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 421
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 339
    check-cast v0, Lcom/meizu/common/widget/CustomPicker$SavedState;

    .line 340
    .local v0, "ss":Lcom/meizu/common/widget/CustomPicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 341
    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomPicker$SavedState;->getCurrentItems()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomPicker;->updateCurrentItems([I)V

    .line 342
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 333
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 334
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/common/widget/CustomPicker$SavedState;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/meizu/common/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcelable;[ILcom/meizu/common/widget/CustomPicker$1;)V

    return-object v1
.end method

.method public setCurrentItem(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "currentItem"    # I

    .prologue
    .line 325
    if-gez p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-ge p1, v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    aput p2, v0, p1

    .line 327
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomPicker;->updateCurrentItems([I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 289
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-lt v0, v1, :cond_0

    .line 292
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnCurrentItemChangedListener(Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;)V
    .locals 0
    .param p1, "onItemChangedListener"    # Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/meizu/common/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;

    .line 304
    return-void
.end method

.method public setTextColor(III)V
    .locals 2
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    const/4 v0, 0x0

    .line 411
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-lt v0, v1, :cond_0

    .line 415
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 413
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnTextViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs updateCurrentItems([I)V
    .locals 3
    .param p1, "currentItems"    # [I

    .prologue
    .line 275
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 279
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 283
    :cond_0
    return-void

    .line 276
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 279
    .restart local v0    # "i":I
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 281
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
