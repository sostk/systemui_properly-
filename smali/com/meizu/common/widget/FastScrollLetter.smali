.class public Lcom/meizu/common/widget/FastScrollLetter;
.super Landroid/view/View;
.source "FastScrollLetter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;
    }
.end annotation


# static fields
.field public static final SECTION_COMPARE_TYPE1:I = 0x1

.field public static final SECTION_COMPARE_TYPE2:I = 0x2

.field private static final STATE_DRAGGING:I = 0x1

.field private static final STATE_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultLetters:[Ljava/lang/String;


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mBackgroundColorSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLetter:Ljava/lang/String;

.field private mCurrentShowPos:I

.field private mDefaultColor:[I

.field private mDefaultSectionType:I

.field private mEventDownY:I

.field private mEventMoveY:I

.field private mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

.field private mHeaderCount:I

.field private mHeaderHeight:I

.field private mHideLetteSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHideNum:I

.field private mHideStr:Ljava/lang/String;

.field private mIsAlwayShowLetter:Z

.field private mIsEnable:Z

.field private mIsSplitMode:Ljava/lang/reflect/Method;

.field private mLetterActiveTextColor:I

.field private mLetterMarginBottom:I

.field private mLetterMarginRight:I

.field private mLetterMarginTop:I

.field private mLetterTextColor:I

.field private mLetterTextSize:I

.field private mLetterWidth:I

.field private mLetters:[Ljava/lang/String;

.field private mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayOneTextSize:I

.field private mOverlayText:Landroid/widget/TextView;

.field private mOverlayTextHeight:I

.field private mOverlayTextLetters:[Ljava/lang/String;

.field private mOverlayTextMarginRight:I

.field private mOverlayTextTop:I

.field private mOverlayTextWidth:I

.field private mOverlayThreeTextSize:I

.field private mOverlayTwoTextSize:I

.field private mPaddingLeft:I

.field mPaint:Landroid/graphics/Paint;

.field private mPointBitmap:Landroid/graphics/Bitmap;

.field private mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mShowLetters:[Ljava/lang/String;

.field private mSingleLetterHeight:I

.field private mState:I

.field private mTopLetter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Lcom/meizu/common/widget/FastScrollLetter;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 215
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;

    .prologue
    .line 304
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_letter_overlay:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;
    .param p3, "sectionCompareType"    # I

    .prologue
    .line 316
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_letter_overlay:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 318
    iput p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;
    .param p3, "overlayText"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 347
    sget v3, Lcom/meizu/common/R$attr;->MeizuCommon_FastScrollLetter:I

    invoke-direct {p0, p1, v7, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    iput-boolean v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    .line 220
    iput-boolean v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    .line 225
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 229
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 231
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    const-string/jumbo v3, ""

    .line 240
    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    .line 243
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    .line 244
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    .line 245
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 246
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 247
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    const/16 v3, 0xdc

    .line 248
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 249
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    const/16 v3, 0x14

    .line 252
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 255
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 256
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 257
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    const/16 v3, 0x18

    .line 258
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 261
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 264
    iput-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v3, ""

    .line 269
    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 271
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    .line 275
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    .line 277
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 279
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    const/16 v3, 0x35

    .line 281
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    .line 284
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    const/4 v3, 0x7

    .line 288
    new-array v3, v3, [I

    sget v4, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_one:I

    aput v4, v3, v6

    sget v4, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_two:I

    aput v4, v3, v8

    sget v4, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_three:I

    aput v4, v3, v5

    const/4 v4, 0x3

    sget v5, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_four:I

    aput v5, v3, v4

    sget v4, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_five:I

    aput v4, v3, v9

    const/4 v4, 0x5

    sget v5, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_six:I

    aput v5, v3, v4

    const/4 v4, 0x6

    sget v5, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_seven:I

    aput v5, v3, v4

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    .line 349
    sget-object v3, Lcom/meizu/common/R$styleable;->FastScrollLetter:[I

    sget v4, Lcom/meizu/common/R$attr;->MeizuCommon_FastScrollLetter:I

    invoke-virtual {p1, v7, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 352
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcFastScrollLetter:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 355
    .local v2, "overlayDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 359
    :goto_0
    if-nez p2, :cond_1

    .line 420
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    return-void

    .line 356
    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 360
    :cond_1
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    .line 361
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 362
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 364
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_text_size:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    .line 366
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_two_text_size:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    .line 368
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_three_text_size:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 371
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_layout_width:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 373
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_layout_margin_right:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 375
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    .line 377
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_text_size:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_fastscroll_letter_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 381
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_margin_top:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 383
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_margin_right:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 385
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_margin_bottom:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 387
    sget v3, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_wdith:I

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 390
    iput-object p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    .line 392
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterTextColor:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 393
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterActiveTextColor:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 394
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterTextSize:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 395
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterWidth:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 396
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterMarginTop:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 397
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterMarginBottom:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 398
    sget v3, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterMarginRight:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 399
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 400
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 403
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 404
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 406
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$drawable;->mc_ic_letter_search_point:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 411
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 412
    sget v3, Lcom/meizu/common/R$drawable;->mc_ic_letter_search_bg:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setBackgroundResource(I)V

    .line 414
    sget-object v3, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 415
    sget-object v3, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    .line 416
    sget-object v3, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    .line 417
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;
    .param p3, "overlayText"    # Landroid/widget/TextView;
    .param p4, "sectionCompareType"    # I

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 337
    iput p4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 338
    return-void
.end method

.method private OnTouchingLetterChange(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "site"    # I

    .prologue
    .line 1254
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 1255
    .local v1, "top":I
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 1258
    .local v0, "bottom":I
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/meizu/common/widget/FastScrollLetter;->setSelection(IF)V

    .line 1261
    return-void
.end method

.method private alphaAnim(ZLandroid/view/View;)V
    .locals 7
    .param p1, "isShow"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1176
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1184
    :cond_0
    if-nez p1, :cond_4

    move v2, v3

    .line 1185
    .local v2, "startAlpha":F
    :goto_0
    if-nez p1, :cond_5

    move v1, v4

    .line 1187
    .local v1, "endAlpha":F
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 1188
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1189
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Lcom/meizu/common/widget/FastScrollLetter$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/meizu/common/widget/FastScrollLetter$1;-><init>(Lcom/meizu/common/widget/FastScrollLetter;Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v4, 0xb4

    .line 1206
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1207
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1208
    invoke-virtual {p2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1209
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 1210
    return-void

    .line 1177
    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_1
    if-nez p1, :cond_3

    .line 1179
    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 1180
    return-void

    .line 1177
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 1178
    return-void

    :cond_4
    move v2, v4

    .line 1184
    goto :goto_0

    .restart local v2    # "startAlpha":F
    :cond_5
    move v1, v3

    .line 1185
    goto :goto_1
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 1241
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1244
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1245
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1246
    return-void
.end method

.method private getChoosePos(F)I
    .locals 10
    .param p1, "y"    # F

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v7, v7

    div-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    .line 878
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    int-to-float v6, v6

    div-float v6, p1, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    double-to-int v5, v6

    .local v5, "site":I
    const/4 v4, 0x0

    .line 881
    .local v4, "pos":I
    if-gez v5, :cond_1

    :cond_0
    const/4 v6, -0x1

    .line 882
    return v6

    .line 881
    :cond_1
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 886
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    const/4 v1, 0x0

    .line 902
    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_6

    .line 912
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    sub-float v3, p1, v6

    .line 913
    .local v3, "offY":F
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 921
    :cond_2
    :goto_1
    return v4

    .end local v1    # "i":I
    .end local v3    # "offY":F
    :cond_3
    const/4 v1, 0x0

    .line 887
    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v5, :cond_4

    .line 896
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    sub-float v3, p1, v6

    .line 898
    .restart local v3    # "offY":F
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 899
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    div-float v6, v3, v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    goto :goto_1

    .line 888
    .end local v3    # "offY":F
    :cond_4
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 891
    add-int/lit8 v4, v4, 0x1

    .line 887
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 889
    :cond_5
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/2addr v4, v6

    goto :goto_3

    .line 903
    :cond_6
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 906
    add-int/lit8 v4, v4, 0x1

    .line 902
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_7
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_4

    .line 914
    .restart local v3    # "offY":F
    :cond_8
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 915
    .local v0, "hideCount":I
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    int-to-float v6, v6

    div-float v6, v3, v6

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 917
    .local v2, "nn":I
    add-int/2addr v4, v2

    goto :goto_1
.end method

.method private getCurrentPos(I)I
    .locals 7
    .param p1, "letterSite"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, -0x1

    .line 1105
    .local v1, "position":I
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    move v0, p1

    .line 1107
    .end local p1    # "letterSite":I
    .local v0, "letterSite":I
    :goto_0
    if-eq v1, v5, :cond_1

    move p1, v0

    .line 1125
    .end local v0    # "letterSite":I
    .restart local p1    # "letterSite":I
    :cond_0
    return v1

    .line 1108
    .end local p1    # "letterSite":I
    .restart local v0    # "letterSite":I
    :cond_1
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "letterSite":I
    .restart local p1    # "letterSite":I
    move v3, v0

    .line 1110
    .local v3, "site":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    if-ltz v3, :cond_0

    .line 1111
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getSection(I)I

    move-result v2

    .line 1113
    .local v2, "section":I
    if-eq v2, v5, :cond_2

    .line 1116
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v4, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 1118
    if-ne v1, v5, :cond_3

    :goto_1
    move v0, p1

    .line 1124
    .end local p1    # "letterSite":I
    .restart local v0    # "letterSite":I
    goto :goto_0

    .end local v0    # "letterSite":I
    .restart local p1    # "letterSite":I
    :cond_2
    move v0, p1

    .line 1114
    .end local p1    # "letterSite":I
    .restart local v0    # "letterSite":I
    goto :goto_0

    .line 1119
    .end local v0    # "letterSite":I
    .restart local p1    # "letterSite":I
    :cond_3
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    goto :goto_1
.end method

.method private getNextPos(I)I
    .locals 5
    .param p1, "letterSite"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v0, -0x1

    .line 1137
    .local v0, "position":I
    :cond_0
    :goto_0
    if-eq v0, v4, :cond_3

    .line 1152
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-ltz v3, :cond_4

    .line 1155
    :cond_2
    :goto_1
    if-eq v0, v4, :cond_5

    .line 1158
    :goto_2
    return v0

    .line 1138
    :cond_3
    add-int/lit8 p1, p1, 0x1

    move v2, p1

    .line 1140
    .local v2, "site":I
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-ltz v2, :cond_1

    .line 1141
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/FastScrollLetter;->getSection(I)I

    move-result v1

    .line 1143
    .local v1, "section":I
    if-eq v1, v4, :cond_0

    .line 1146
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0

    .line 1152
    .end local v1    # "section":I
    .end local v2    # "site":I
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_2

    .line 1153
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    goto :goto_1

    .line 1156
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    goto :goto_2
.end method

.method private getPxSize(Landroid/content/Context;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dimenReId"    # I

    .prologue
    .line 815
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSection(I)I
    .locals 9
    .param p1, "site"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v5, -0x1

    .line 941
    .local v5, "section":I
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    if-nez v6, :cond_2

    .line 945
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    aget-object v2, v6, p1

    .line 946
    .local v2, "letter":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 949
    .local v3, "obj":[Ljava/lang/Object;
    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 953
    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-lt v1, v6, :cond_4

    :goto_1
    const/4 v0, 0x0

    .line 961
    .local v0, "footerViewCount":I
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    .line 963
    :cond_0
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    .line 979
    :cond_1
    return v8

    .line 942
    .end local v0    # "footerViewCount":I
    .end local v1    # "i":I
    .end local v2    # "letter":Ljava/lang/String;
    .end local v3    # "obj":[Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    invoke-interface {v6, p1}, Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;->getSection(I)I

    move-result v6

    return v6

    .line 950
    .restart local v2    # "letter":Ljava/lang/String;
    .restart local v3    # "obj":[Ljava/lang/Object;
    :cond_3
    return v8

    .line 954
    .restart local v1    # "i":I
    :cond_4
    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    :cond_5
    move v5, v1

    goto :goto_1

    .line 961
    .restart local v0    # "footerViewCount":I
    :cond_6
    if-ltz v5, :cond_0

    .line 962
    return v5

    .line 964
    :cond_7
    if-eq v5, v8, :cond_8

    .line 966
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    .line 968
    .local v4, "position":I
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v6, v6, Landroid/widget/ListView;

    if-nez v6, :cond_9

    .line 972
    :goto_2
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v0

    if-ge v4, v6, :cond_1

    .line 973
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v4}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 974
    return v5

    .line 965
    .end local v4    # "position":I
    :cond_8
    return v8

    .line 969
    .restart local v4    # "position":I
    :cond_9
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    goto :goto_2
.end method

.method private isContain(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 860
    const/4 v0, 0x1

    return v0

    .line 862
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isContainWithTop(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 870
    const/4 v0, 0x1

    return v0

    .line 872
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSplitmode(Landroid/app/Activity;)Z
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 673
    const/4 v5, 0x0

    .line 674
    .local v5, "flag":Z
    if-eqz p1, :cond_0

    .line 678
    :try_start_0
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsSplitMode:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_1

    .line 683
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 684
    .local v6, "instance":Ljava/lang/Object;
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsSplitMode:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 694
    .end local v5    # "flag":Z
    .end local v6    # "instance":Ljava/lang/Object;
    :goto_1
    return v5

    .line 675
    .restart local v5    # "flag":Z
    :cond_0
    return v7

    :cond_1
    const-string/jumbo v7, "meizu.splitmode.FlymeSplitModeManager"

    .line 679
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getInstance"

    const/4 v8, 0x1

    .line 680
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

    const-string/jumbo v7, "isSplitMode"

    const/4 v8, 0x0

    .line 681
    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsSplitMode:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 693
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 686
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 688
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 690
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 692
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private onTouchingLetterTop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 935
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private setLetterState(ZLandroid/view/View;)V
    .locals 1
    .param p1, "isShow"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->alphaAnim(ZLandroid/view/View;)V

    .line 1170
    iget-boolean v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    if-eqz v0, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/FastScrollLetter;->alphaAnim(ZLandroid/view/View;)V

    goto :goto_0
.end method

.method private setOverLayText(I)V
    .locals 2
    .param p1, "site"    # I

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 1038
    .local v0, "currentLetter":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method private setOverLayText(Ljava/lang/String;)V
    .locals 10
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1047
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 1049
    .local v5, "textSize":I
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    if-eq p1, v6, :cond_1

    .line 1052
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    .line 1054
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1065
    :goto_0
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    int-to-float v7, v5

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1066
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    if-nez v6, :cond_2

    const/4 v3, -0x1

    .line 1078
    .local v3, "section":I
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    .line 1080
    .local v2, "obj":[Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 1095
    .end local v2    # "obj":[Ljava/lang/Object;
    .end local v3    # "section":I
    :cond_0
    :goto_1
    return-void

    .line 1050
    :cond_1
    return-void

    .line 1056
    :pswitch_0
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    goto :goto_0

    .line 1061
    :pswitch_1
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    goto :goto_0

    .line 1070
    :cond_2
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1071
    .local v0, "curLetterBackgroundColor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1072
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1073
    .local v4, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1074
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .end local v0    # "curLetterBackgroundColor":Ljava/lang/String;
    .end local v4    # "shape":Landroid/graphics/drawable/ShapeDrawable;
    .restart local v2    # "obj":[Ljava/lang/Object;
    .restart local v3    # "section":I
    :cond_3
    const/4 v1, 0x0

    .line 1081
    .local v1, "i":I
    :goto_2
    array-length v6, v2

    if-lt v1, v6, :cond_4

    :goto_3
    const/4 v6, -0x1

    .line 1087
    if-eq v3, v6, :cond_0

    .line 1088
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1089
    .restart local v4    # "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    rem-int/lit8 v9, v3, 0x7

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1090
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1082
    .end local v4    # "shape":Landroid/graphics/drawable/ShapeDrawable;
    :cond_4
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1081
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1083
    :cond_5
    move v3, v1

    goto :goto_3

    .line 1054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setOverlayTextLayout(F)V
    .locals 8
    .param p1, "offsetTop"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1219
    float-to-int v4, p1

    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    .line 1221
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 1223
    .local v1, "left":I
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    float-to-int v3, v4

    .line 1224
    .local v3, "top":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    sub-int v2, v4, v5

    .line 1225
    .local v2, "right":I
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    add-int v0, v3, v4

    .line 1227
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1229
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1232
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 1235
    :goto_0
    return-void

    .line 1230
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method private setSelection(IF)V
    .locals 7
    .param p1, "site"    # I
    .param p2, "y"    # F

    .prologue
    .line 986
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 988
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v4, v0, Landroid/widget/HeaderViewListAdapter;

    if-nez v4, :cond_0

    .line 993
    :goto_0
    instance-of v4, v0, Landroid/widget/SectionIndexer;

    if-nez v4, :cond_1

    .line 996
    sget-object v4, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "mSectionIndexer is null, adapter is not implements"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void

    :cond_0
    move-object v4, v0

    .line 989
    check-cast v4, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    .line 990
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 994
    :cond_1
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1000
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 1001
    .local v1, "currentSite":I
    move v2, p1

    .line 1004
    .local v2, "scrollSite":I
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/FastScrollLetter;->getCurrentPos(I)I

    move-result v3

    .line 1007
    .local v3, "selectionPos":I
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 1012
    :goto_1
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-gez v4, :cond_5

    .line 1014
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 1017
    :cond_3
    :goto_2
    return-void

    .line 1008
    :cond_4
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/FastScrollLetter;->getNextPos(I)I

    move-result v3

    goto :goto_1

    .line 1012
    :cond_5
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 1020
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-ne v1, v4, :cond_7

    .line 1029
    :goto_3
    return-void

    .line 1014
    :cond_6
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1015
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    goto :goto_2

    .line 1021
    :cond_7
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(I)V

    .line 1022
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-nez v4, :cond_8

    .line 1026
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_3

    .line 1023
    :cond_8
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 1352
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    return v0
.end method

.method public getHideNum()I
    .locals 1

    .prologue
    .line 1368
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    return v0
.end method

.method public getHideStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLetterMarginBottom()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    return v0
.end method

.method public getLetterMarginRight()I
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    return v0
.end method

.method public getLetterMarginTop()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    return v0
.end method

.method public getLetterTextColor()I
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    return v0
.end method

.method public getLetterTextSize()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    return v0
.end method

.method public getLetterWidth()I
    .locals 1

    .prologue
    .line 1328
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    return v0
.end method

.method public getLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTextBackgroundColor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    return-object v0
.end method

.method public getOverlayTextLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTextMarginRight()I
    .locals 1

    .prologue
    .line 1280
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    return v0
.end method

.method public getOverlayTextWidth()I
    .locals 1

    .prologue
    .line 1272
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1360
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 820
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 821
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 822
    .local v3, "paddingLeft":I
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 826
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 828
    .local v2, "letters":[Ljava/lang/String;
    if-nez v2, :cond_2

    .line 829
    :cond_0
    return-void

    .line 823
    .end local v2    # "letters":[Ljava/lang/String;
    :cond_1
    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    mul-int/lit8 v3, v7, -0x1

    goto :goto_0

    .line 828
    .restart local v2    # "letters":[Ljava/lang/String;
    :cond_2
    array-length v7, v2

    if-eqz v7, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getHeight()I

    move-result v0

    .line 833
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getWidth()I

    move-result v4

    .line 835
    .local v4, "width":I
    array-length v7, v2

    div-int v7, v0, v7

    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    const/4 v1, 0x0

    .line 836
    .local v1, "i":I
    :goto_1
    array-length v7, v2

    if-lt v1, v7, :cond_3

    .line 852
    return-void

    .line 838
    :cond_3
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    aget-object v9, v2, v1

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    int-to-float v8, v3

    add-float v5, v7, v8

    .line 840
    .local v5, "xPos":F
    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    add-int/2addr v7, v8

    int-to-float v6, v7

    .line 843
    .local v6, "yPos":F
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_5

    .line 848
    :cond_4
    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 836
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 843
    :cond_5
    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 844
    div-int/lit8 v7, v4, 0x2

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, v3

    int-to-float v5, v7

    .line 845
    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    .line 846
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/FastScrollLetter;

    .line 324
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 426
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 427
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 634
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 636
    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v10, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    add-int/2addr v9, v10

    sub-int v1, v8, v9

    .line 638
    .local v1, "left":I
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 639
    .local v6, "top":I
    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    sub-int v4, v8, v9

    .line 640
    .local v4, "right":I
    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    sub-int v0, v8, v9

    .line 643
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-direct {p0, v8}, Lcom/meizu/common/widget/FastScrollLetter;->isSplitmode(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 650
    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 654
    :goto_0
    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v8

    if-eqz v8, :cond_1

    .line 657
    iget v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v10, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v6, v9, v0}, Lcom/meizu/common/widget/FastScrollLetter;->layout(IIII)V

    .line 660
    :goto_1
    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    iget v10, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    const/4 v8, 0x0

    .line 661
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 663
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 645
    .local v3, "manager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 646
    .local v7, "windowHeight":I
    sub-int v5, v0, v6

    .line 647
    .local v5, "scrollLetterHeight":I
    int-to-float v8, v5

    int-to-float v9, v7

    div-float/2addr v8, v9

    iget v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v9, v9

    mul-float v2, v8, v9

    .line 648
    .local v2, "letterSize":F
    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 655
    .end local v2    # "letterSize":F
    .end local v3    # "manager":Landroid/view/WindowManager;
    .end local v5    # "scrollLetterHeight":I
    .end local v7    # "windowHeight":I
    :cond_1
    invoke-virtual {p0, v1, v6, v4, v0}, Lcom/meizu/common/widget/FastScrollLetter;->layout(IIII)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 708
    iget-boolean v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    if-eqz v3, :cond_2

    .line 712
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v3

    if-nez v3, :cond_3

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 717
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .local v2, "y":F
    const/4 v3, 0x0

    .line 718
    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 v2, 0x0

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    if-nez v3, :cond_4

    .line 726
    :cond_1
    return v5

    .line 709
    .end local v0    # "action":I
    .end local v2    # "y":F
    :cond_2
    return v5

    .line 713
    :cond_3
    return v5

    .line 722
    .restart local v0    # "action":I
    .restart local v2    # "y":F
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 729
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getChoosePos(F)I

    move-result v1

    .line 731
    .local v1, "site":I
    packed-switch v0, :pswitch_data_0

    .line 807
    :cond_5
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v3, v6, :cond_d

    .line 811
    return v6

    .line 733
    :pswitch_0
    if-ltz v1, :cond_8

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/FastScrollLetter;->isContain(FF)Z

    move-result v3

    if-nez v3, :cond_9

    .line 752
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 767
    :cond_6
    :pswitch_1
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v3, v6, :cond_5

    .line 769
    if-gez v1, :cond_b

    .line 777
    :cond_7
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/FastScrollLetter;->isContainWithTop(FF)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 780
    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 781
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->onTouchingLetterTop()V

    goto :goto_0

    .line 734
    :cond_8
    return v5

    .line 739
    :cond_9
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 742
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 743
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->cancelFling()V

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 746
    invoke-direct {p0, v6, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 748
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/FastScrollLetter;->OnTouchingLetterChange(Landroid/view/MotionEvent;I)V

    .line 749
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    .line 750
    return v6

    .line 752
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/FastScrollLetter;->isContainWithTop(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 754
    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 755
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 757
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    .line 758
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 759
    invoke-direct {p0, v6, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 761
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->onTouchingLetterTop()V

    .line 763
    return v6

    .line 769
    :cond_b
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 772
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-eq v3, v7, :cond_c

    .line 775
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/FastScrollLetter;->OnTouchingLetterChange(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 773
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    goto :goto_1

    .line 793
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v5}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 795
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v3, v6, :cond_5

    .line 796
    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 797
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 798
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 799
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 800
    invoke-direct {p0, v5, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 801
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    .line 802
    return v6

    .line 808
    :cond_d
    return v5

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 2
    .param p1, "isAlwayShowLetter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 509
    iput-boolean p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    .line 510
    iget-boolean v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 532
    iput-boolean p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    .line 533
    if-nez p1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    .line 534
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 566
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    .line 567
    return-void
.end method

.method public setHideLetter(Landroid/util/SparseArray;[Ljava/lang/String;)V
    .locals 0
    .param p2, "hideLetters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    .line 484
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 485
    return-void
.end method

.method public setHideLetterNum(Ljava/lang/String;I)V
    .locals 7
    .param p1, "hideStr"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    const/4 v2, 0x0

    .line 438
    .local v2, "pos":I
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 439
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    .line 440
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .local v1, "letters":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 442
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 446
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aput-object v5, v1, v4

    .line 447
    iput-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 448
    return-void

    .line 443
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v1, v2

    .line 444
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 442
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    goto :goto_0
.end method

.method public setHideLetterStr(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "hideStr"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 456
    if-nez p2, :cond_0

    .line 459
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 460
    return-void

    .line 457
    :cond_0
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setLayoutPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 609
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 610
    return-void
.end method

.method public setLetterActiveColor(II)V
    .locals 2
    .param p1, "defaultColor"    # I
    .param p2, "activeColor"    # I

    .prologue
    .line 520
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 521
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 522
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 524
    return-void
.end method

.method public setLetterBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 620
    return-void
.end method

.method public setLetterParam(IIIIII)V
    .locals 3
    .param p1, "letterTextSize"    # I
    .param p2, "letterTextColor"    # I
    .param p3, "letterMarginTop"    # I
    .param p4, "letterMarginBottom"    # I
    .param p5, "letterMarginRight"    # I
    .param p6, "letterWidth"    # I

    .prologue
    const/4 v2, -0x1

    .line 581
    if-ne p1, v2, :cond_0

    .line 585
    :goto_0
    if-ne p2, v2, :cond_1

    .line 591
    :goto_1
    if-ne p3, v2, :cond_2

    .line 594
    :goto_2
    if-ne p4, v2, :cond_3

    .line 597
    :goto_3
    if-ne p5, v2, :cond_4

    .line 600
    :goto_4
    if-ne p6, v2, :cond_5

    .line 603
    :goto_5
    return-void

    .line 582
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 586
    :cond_1
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 587
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 588
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    goto :goto_1

    .line 592
    :cond_2
    iput p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    goto :goto_2

    .line 595
    :cond_3
    iput p4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    goto :goto_3

    .line 598
    :cond_4
    iput p5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    goto :goto_4

    .line 601
    :cond_5
    iput p6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    goto :goto_5
.end method

.method public setLetters([Ljava/lang/String;)V
    .locals 0
    .param p1, "letters"    # [Ljava/lang/String;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 543
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    .line 544
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLetters([Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public setOverlayBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 630
    return-void
.end method

.method public setOverlayParam(II)V
    .locals 1
    .param p1, "overlayTextWidth"    # I
    .param p2, "overlayTextMarginRight"    # I

    .prologue
    const/4 v0, -0x1

    .line 494
    if-ne p1, v0, :cond_0

    .line 498
    :goto_0
    if-ne p2, v0, :cond_1

    .line 501
    :goto_1
    return-void

    .line 495
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    goto :goto_0

    .line 499
    :cond_1
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    goto :goto_1
.end method

.method public setOverlayTextBackgroundColor(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1385
    .local p1, "colorSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    .line 1386
    return-void
.end method

.method public setOverlayTextLetters([Ljava/lang/String;)V
    .locals 1
    .param p1, "overlayTextLetters"    # [Ljava/lang/String;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setSectionCompare(Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;)V
    .locals 0
    .param p1, "compare"    # Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    .line 704
    return-void
.end method

.method public setTopLetter(Ljava/lang/String;)V
    .locals 1
    .param p1, "topLetter"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 558
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
