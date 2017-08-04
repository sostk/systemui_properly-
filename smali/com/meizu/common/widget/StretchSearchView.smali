.class public Lcom/meizu/common/widget/StretchSearchView;
.super Landroid/widget/RelativeLayout;
.source "StretchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;,
        Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;
    }
.end annotation


# static fields
.field private static final SIZE_DEFAULT:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_READY:I = 0x0

.field public static final STATE_SHORTENED:I = 0x4

.field public static final STATE_SHORTENING:I = 0x3

.field public static final STATE_STRETCHED:I = 0x2

.field public static final STATE_STRETCHING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "StretchSearchView"

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_MIDDLE_TO_LEFT:I = 0x3

.field public static final TYPE_MIDDLE_TO_LEFT_TEXTVIEW:I = 0x4

.field public static final TYPE_RIGHT_TO_LEFT:I = 0x1

.field public static final TYPE_RIGHT_TO_LEFT_TEXTVIEW:I = 0x2


# instance fields
.field private mAlignRightWhenAnim:Z

.field private mAnimationState:I

.field private mButton:Landroid/widget/TextView;

.field private mButtonColor:I

.field private mContext:Landroid/content/Context;

.field private mCustomAnimValueFrom:F

.field private mCustomAnimValueTo:F

.field private mHasBtn:Z

.field private mHasVoiceIcon:Z

.field private mImgSearch:Landroid/widget/ImageView;

.field private mImgSearchClear:Landroid/widget/ImageView;

.field private mInputClearAlphaFrom:F

.field private mInputClearAlphaTo:F

.field private mInputText:Lcom/meizu/common/widget/SearchEditText;

.field private mInputTextAlphaFrom:F

.field private mInputTextAlphaTo:F

.field private mLayoutMarginLeftAdjust:I

.field private mLayoutMarginRightAdjust:I

.field private mLayoutPaddingLeft:I

.field private mLayoutPaddingRight:I

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mPlayInputTextAlhpaAnim:Z

.field private mPlayMoveXAnim:Z

.field private mPlaySearchImgScaleAnim:Z

.field private mPlaySearchclearAlphaAnim:Z

.field private mPlayStretchOnPreDraw:Z

.field private mPlayStretchWidthAnim:Z

.field private mScaleFrom:F

.field private mScaleTo:F

.field private mSearchLayout:Landroid/widget/RelativeLayout;

.field private mSearchLayoutInitAlpha:F

.field private mSearchTextHint:Ljava/lang/String;

.field private mSearchView:Landroid/view/View;

.field private mShortenAnimationListener:Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;

.field private mShortenDuration:I

.field private mStretchAnimationListener:Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

.field private mStretchDuration:I

.field private mStretchTpye:I

.field private mStretchWidthFrom:I

.field private mStretchWidthTo:I

.field private mStretchXfrom:I

.field private mStretchXto:I

.field private mTextViewContent:Ljava/lang/String;

.field private mUseSysInterpolater:Z

.field private mVoiceIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/StretchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 517
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stretchTpye"    # I

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/StretchSearchView;-><init>(Landroid/content/Context;)V

    .line 525
    iput p2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    .line 526
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 520
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_StretchSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/StretchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 521
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 529
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    .line 288
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    .line 293
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    .line 298
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    .line 303
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginLeftAdjust:I

    .line 308
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingLeft:I

    .line 309
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingRight:I

    .line 314
    iput v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginRightAdjust:I

    .line 319
    iput-boolean v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchOnPreDraw:Z

    .line 329
    iput-boolean v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    .line 334
    iput-boolean v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    .line 340
    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchWidthAnim:Z

    .line 345
    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayMoveXAnim:Z

    .line 350
    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchImgScaleAnim:Z

    .line 355
    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchclearAlphaAnim:Z

    .line 360
    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayInputTextAlhpaAnim:Z

    .line 367
    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    .line 372
    iput-boolean v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mUseSysInterpolater:Z

    .line 377
    iput-boolean v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mAlignRightWhenAnim:Z

    const/16 v1, 0x140

    .line 382
    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    .line 387
    iget v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    .line 392
    iput v4, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaFrom:F

    .line 397
    iput v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaTo:F

    .line 402
    iput v4, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    .line 407
    iput v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaTo:F

    .line 412
    iput v4, p0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueFrom:F

    .line 417
    iput v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueTo:F

    .line 422
    iput v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleFrom:F

    const v1, 0x3f666666    # 0.9f

    .line 427
    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleTo:F

    .line 432
    iput v4, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayoutInitAlpha:F

    .line 450
    iput v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mButtonColor:I

    const-string/jumbo v1, "\u641c\u7d22"

    .line 452
    iput-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchTextHint:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1570
    iput-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchAnimationListener:Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    const/4 v1, 0x0

    .line 1587
    iput-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenAnimationListener:Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;

    .line 531
    iput v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    .line 532
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mContext:Landroid/content/Context;

    .line 535
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/meizu/common/R$styleable;->StretchSearchView:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 537
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcStretchTpye:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    .line 538
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcHasVoiceIcon:I

    iget-boolean v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    .line 539
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcPlayStretchOnPreDraw:I

    iget-boolean v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchOnPreDraw:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchOnPreDraw:Z

    .line 540
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcAlignRightWhenAnim:I

    iget-boolean v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mAlignRightWhenAnim:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mAlignRightWhenAnim:Z

    .line 541
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcUseSysInterpolater:I

    iget-boolean v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mUseSysInterpolater:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mUseSysInterpolater:Z

    .line 542
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcStretchDuration:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    .line 543
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcShortenDuration:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    .line 544
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcSearchTextHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchTextHint:Ljava/lang/String;

    .line 545
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcTextViewContent:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mTextViewContent:Ljava/lang/String;

    .line 546
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcSearchLayoutInitAlpha:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayoutInitAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayoutInitAlpha:F

    .line 547
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcTextViewColor:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mButtonColor:I

    .line 549
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcLayoutMarginLeftAdjust:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginLeftAdjust:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginLeftAdjust:I

    .line 550
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcLayoutMarginRightAdjust:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginRightAdjust:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginRightAdjust:I

    .line 551
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcLayoutPaddingLeft:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingLeft:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingLeft:I

    .line 552
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcLayoutPaddingRight:I

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingRight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingRight:I

    .line 553
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcStretchWidthFrom:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    .line 554
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcStretchWidthTo:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    .line 555
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcStretchXfrom:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    .line 556
    sget v1, Lcom/meizu/common/R$styleable;->StretchSearchView_mcStretchXto:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    .line 558
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 560
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->initAll()V

    .line 561
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/SearchEditText;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearchClear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenAnimationListener:Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/StretchSearchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/StretchSearchView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;
    .param p1, "x1"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/StretchSearchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/StretchSearchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchOnPreDraw:Z

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchAnimationListener:Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/StretchSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/StretchSearchView;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method private addGlobalPreDrawListener()V
    .locals 2

    .prologue
    .line 701
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 702
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/meizu/common/widget/StretchSearchView$5;

    invoke-direct {v1, p0, v0}, Lcom/meizu/common/widget/StretchSearchView$5;-><init>(Lcom/meizu/common/widget/StretchSearchView;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 710
    return-void
.end method

.method private addPreDrawListener()V
    .locals 2

    .prologue
    .line 716
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 717
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/meizu/common/widget/StretchSearchView$6;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/StretchSearchView$6;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 728
    return-void
.end method

.method private getMovingInterpolater()Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 1479
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1480
    .local v0, "polator":Landroid/view/animation/Interpolator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 1483
    :goto_0
    return-object v0

    .line 1481
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .end local v0    # "polator":Landroid/view/animation/Interpolator;
    const v1, 0x3eaaa64c    # 0.3333f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .restart local v0    # "polator":Landroid/view/animation/Interpolator;
    goto :goto_0
.end method

.method private getScaleInterpolater()Landroid/view/animation/Interpolator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1492
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1493
    .local v0, "polator":Landroid/view/animation/Interpolator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 1496
    :goto_0
    return-object v0

    .line 1494
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .end local v0    # "polator":Landroid/view/animation/Interpolator;
    const v1, 0x3eaaa64c    # 0.3333f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .restart local v0    # "polator":Landroid/view/animation/Interpolator;
    goto :goto_0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1560
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1561
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1562
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1563
    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1564
    .local v1, "screenHeight":I
    return v2
.end method

.method private getStretchInterpolater()Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 1505
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1506
    .local v0, "polator":Landroid/view/animation/Interpolator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 1509
    :goto_0
    return-object v0

    .line 1507
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .end local v0    # "polator":Landroid/view/animation/Interpolator;
    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .restart local v0    # "polator":Landroid/view/animation/Interpolator;
    goto :goto_0
.end method

.method private initMeasure()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 635
    .local v1, "MEASURE_W":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 636
    .local v0, "MEASURE_H":I
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 637
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 638
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 639
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/common/widget/SearchEditText;->measure(II)V

    .line 640
    return-void
.end method

.method private shortenAmin()V
    .locals 18

    .prologue
    .line 1052
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    const/4 v13, 0x3

    .line 1055
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/StretchSearchView;->beforeShortenViewState()V

    .line 1058
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1059
    .local v2, "aniSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1062
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v14, "x"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1063
    .local v12, "layoutX":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    int-to-long v14, v13

    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1066
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v14, "width"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1067
    .local v11, "layoutWidth":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    int-to-long v14, v13

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1068
    new-instance v13, Lcom/meizu/common/widget/StretchSearchView$10;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/meizu/common/widget/StretchSearchView$10;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v14, "StretchSearchViewAnimValue"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueTo:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueFrom:F

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1077
    .local v6, "custAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    int-to-long v14, v13

    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1078
    new-instance v13, Lcom/meizu/common/widget/StretchSearchView$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/meizu/common/widget/StretchSearchView$11;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v6, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1087
    new-instance v13, Lcom/meizu/common/widget/StretchSearchView$12;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/meizu/common/widget/StretchSearchView$12;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    const-string/jumbo v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaTo:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1117
    .local v7, "editAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    mul-int/lit8 v13, v13, 0x4

    div-int/lit8 v13, v13, 0x5

    int-to-long v14, v13

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearchClear:Landroid/widget/ImageView;

    const-string/jumbo v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaTo:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaFrom:F

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1121
    .local v8, "imgClearAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    mul-int/lit8 v13, v13, 0x4

    div-int/lit8 v13, v13, 0x5

    int-to-long v14, v13

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    const-string/jumbo v14, "scaleX"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mScaleTo:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mScaleFrom:F

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1125
    .local v9, "imgScaleX":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    const-string/jumbo v14, "scaleY"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mScaleTo:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/StretchSearchView;->mScaleFrom:F

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1128
    .local v10, "imgScaleY":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mUseSysInterpolater:Z

    if-nez v13, :cond_1

    .line 1137
    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1139
    .local v3, "aniSetAlpha":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    mul-int/lit8 v13, v13, 0x4

    div-int/lit8 v13, v13, 0x5

    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchclearAlphaAnim:Z

    if-nez v13, :cond_2

    .line 1143
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mPlayInputTextAlhpaAnim:Z

    if-nez v13, :cond_3

    .line 1146
    :goto_2
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1148
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mPlayMoveXAnim:Z

    if-nez v13, :cond_4

    .line 1153
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchWidthAnim:Z

    if-nez v13, :cond_5

    .line 1156
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchImgScaleAnim:Z

    if-nez v13, :cond_6

    .line 1161
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-nez v13, :cond_7

    .line 1169
    :goto_6
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1170
    return-void

    .line 1053
    .end local v2    # "aniSet":Landroid/animation/AnimatorSet;
    .end local v3    # "aniSetAlpha":Landroid/animation/AnimatorSet;
    .end local v6    # "custAnim":Landroid/animation/ObjectAnimator;
    .end local v7    # "editAlpha":Landroid/animation/ObjectAnimator;
    .end local v8    # "imgClearAlpha":Landroid/animation/ObjectAnimator;
    .end local v9    # "imgScaleX":Landroid/animation/ObjectAnimator;
    .end local v10    # "imgScaleY":Landroid/animation/ObjectAnimator;
    .end local v11    # "layoutWidth":Landroid/animation/ObjectAnimator;
    .end local v12    # "layoutX":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 1130
    .restart local v2    # "aniSet":Landroid/animation/AnimatorSet;
    .restart local v6    # "custAnim":Landroid/animation/ObjectAnimator;
    .restart local v7    # "editAlpha":Landroid/animation/ObjectAnimator;
    .restart local v8    # "imgClearAlpha":Landroid/animation/ObjectAnimator;
    .restart local v9    # "imgScaleX":Landroid/animation/ObjectAnimator;
    .restart local v10    # "imgScaleY":Landroid/animation/ObjectAnimator;
    .restart local v11    # "layoutWidth":Landroid/animation/ObjectAnimator;
    .restart local v12    # "layoutX":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/StretchSearchView;->getMovingInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/StretchSearchView;->getStretchInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1133
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/StretchSearchView;->getScaleInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1134
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/StretchSearchView;->getScaleInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 1141
    .restart local v3    # "aniSetAlpha":Landroid/animation/AnimatorSet;
    :cond_2
    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1144
    :cond_3
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1151
    :cond_4
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    .line 1154
    :cond_5
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    .line 1157
    :cond_6
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    .line 1162
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    const-string/jumbo v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1163
    .local v5, "btnAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    mul-int/lit8 v13, v13, 0x2

    div-int/lit8 v13, v13, 0x3

    int-to-long v14, v13

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1164
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1165
    .local v4, "aniSetBtn":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    mul-int/lit8 v13, v13, 0x2

    div-int/lit8 v13, v13, 0x3

    int-to-long v14, v13

    invoke-virtual {v4, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1166
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1167
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6
.end method

.method private stretchAmin()V
    .locals 15

    .prologue
    .line 929
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, 0x1

    .line 932
    iput v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    .line 935
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->beforeStretchViewState()V

    .line 937
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 938
    .local v0, "aniSet":Landroid/animation/AnimatorSet;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 941
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v11, "x"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    int-to-float v14, v14

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 942
    .local v9, "layoutX":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 945
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v11, "width"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    int-to-float v14, v14

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 946
    .local v8, "layoutWidth":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 947
    new-instance v10, Lcom/meizu/common/widget/StretchSearchView$7;

    invoke-direct {v10, p0}, Lcom/meizu/common/widget/StretchSearchView$7;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v8, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 955
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v11, "StretchSearchViewAnimValue"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueFrom:F

    aput v14, v12, v13

    const/4 v13, 0x1

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueTo:F

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 956
    .local v3, "custAnim":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 957
    new-instance v10, Lcom/meizu/common/widget/StretchSearchView$8;

    invoke-direct {v10, p0}, Lcom/meizu/common/widget/StretchSearchView$8;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v3, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 967
    new-instance v10, Lcom/meizu/common/widget/StretchSearchView$9;

    invoke-direct {v10, p0}, Lcom/meizu/common/widget/StretchSearchView$9;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 996
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearchClear:Landroid/widget/ImageView;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaFrom:F

    aput v14, v12, v13

    const/4 v13, 0x1

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaTo:F

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 997
    .local v5, "imgClearAlpha":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1000
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    aput v14, v12, v13

    const/4 v13, 0x1

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaTo:F

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1001
    .local v4, "editAlpha":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1004
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleFrom:F

    aput v14, v12, v13

    const/4 v13, 0x1

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleTo:F

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1005
    .local v6, "imgScaleX":Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleFrom:F

    aput v14, v12, v13

    const/4 v13, 0x1

    iget v14, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleTo:F

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1006
    .local v7, "imgScaleY":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1007
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1010
    iget-boolean v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mUseSysInterpolater:Z

    if-nez v10, :cond_2

    .line 1016
    :goto_0
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1019
    iget-boolean v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayMoveXAnim:Z

    if-nez v10, :cond_3

    .line 1022
    :goto_1
    iget-boolean v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchclearAlphaAnim:Z

    if-nez v10, :cond_4

    .line 1025
    :goto_2
    iget-boolean v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayInputTextAlhpaAnim:Z

    if-nez v10, :cond_5

    .line 1028
    :goto_3
    iget-boolean v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchWidthAnim:Z

    if-nez v10, :cond_6

    .line 1031
    :goto_4
    iget-boolean v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchImgScaleAnim:Z

    if-nez v10, :cond_7

    .line 1035
    :goto_5
    iget-boolean v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-nez v10, :cond_8

    .line 1045
    :goto_6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1046
    return-void

    .line 929
    .end local v0    # "aniSet":Landroid/animation/AnimatorSet;
    .end local v3    # "custAnim":Landroid/animation/ObjectAnimator;
    .end local v4    # "editAlpha":Landroid/animation/ObjectAnimator;
    .end local v5    # "imgClearAlpha":Landroid/animation/ObjectAnimator;
    .end local v6    # "imgScaleX":Landroid/animation/ObjectAnimator;
    .end local v7    # "imgScaleY":Landroid/animation/ObjectAnimator;
    .end local v8    # "layoutWidth":Landroid/animation/ObjectAnimator;
    .end local v9    # "layoutX":Landroid/animation/ObjectAnimator;
    :cond_1
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    .line 930
    return-void

    .line 1011
    .restart local v0    # "aniSet":Landroid/animation/AnimatorSet;
    .restart local v3    # "custAnim":Landroid/animation/ObjectAnimator;
    .restart local v4    # "editAlpha":Landroid/animation/ObjectAnimator;
    .restart local v5    # "imgClearAlpha":Landroid/animation/ObjectAnimator;
    .restart local v6    # "imgScaleX":Landroid/animation/ObjectAnimator;
    .restart local v7    # "imgScaleY":Landroid/animation/ObjectAnimator;
    .restart local v8    # "layoutWidth":Landroid/animation/ObjectAnimator;
    .restart local v9    # "layoutX":Landroid/animation/ObjectAnimator;
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->getMovingInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1012
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->getStretchInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1013
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->getScaleInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1014
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->getScaleInterpolater()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 1020
    :cond_3
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1023
    :cond_4
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1026
    :cond_5
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    .line 1029
    :cond_6
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    .line 1032
    :cond_7
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    .line 1037
    :cond_8
    iget-object v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1038
    .local v2, "btnAlpha":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1039
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1040
    .local v1, "aniSetBtn":Landroid/animation/AnimatorSet;
    iget v10, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1041
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    iget v11, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    div-int/lit8 v11, v11, 0x3

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 1042
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6
.end method


# virtual methods
.method public addEditTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1324
    return-void
.end method

.method protected afterShortenViewState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 896
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 897
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-nez v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected afterStretchViewState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 874
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 875
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->showIme(Z)V

    .line 876
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected beforeShortenViewState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 885
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 886
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->showIme(Z)V

    .line 887
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    if-nez v0, :cond_0

    .line 890
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mVoiceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected beforeStretchViewState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 861
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/SearchEditText;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-nez v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method protected calcWidth()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    .line 754
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->getMaxStretchWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    .line 755
    return-void
.end method

.method protected calcX()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    .line 766
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->getMinMoveX()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    .line 767
    return-void
.end method

.method public getAnimationState()I
    .locals 1

    .prologue
    .line 1550
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    return v0
.end method

.method public getBtnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1421
    return-object v0
.end method

.method public getCustomAnimValueFrom()F
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueFrom:F

    return v0
.end method

.method public getCustomAnimValueTo()F
    .locals 1

    .prologue
    .line 1253
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaTo:F

    return v0
.end method

.method public getInputClearAlphaFrom()F
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    return v0
.end method

.method public getInputClearAlphaTo()I
    .locals 1

    .prologue
    .line 1285
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    return v0
.end method

.method public getInputTextAlphaFrom()F
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    return v0
.end method

.method public getInputTextAlphaTo()F
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputClearAlphaTo:F

    return v0
.end method

.method public getIsAlignRight()Z
    .locals 1

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mAlignRightWhenAnim:Z

    return v0
.end method

.method public getLayoutMarginLeftAdjust()I
    .locals 1

    .prologue
    .line 1378
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginLeftAdjust:I

    return v0
.end method

.method public getLayoutMarginRightAdjust()I
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginRightAdjust:I

    return v0
.end method

.method protected getMaxStretchWidth()I
    .locals 6

    .prologue
    .line 806
    iget-object v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    .line 809
    .local v4, "swidth":I
    iget-object v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    .line 811
    .local v1, "layoutPaddingLeft":I
    iget-object v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    .local v2, "layoutPaddingRight":I
    const/4 v3, 0x0

    .line 816
    .local v3, "resultWidth":I
    iget-boolean v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-nez v5, :cond_0

    .line 822
    sub-int v5, v4, v1

    sub-int v3, v5, v2

    .line 824
    :goto_0
    return v3

    .line 817
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 818
    .local v0, "btnWidth":I
    sub-int v5, v4, v0

    sub-int v3, v5, v1

    goto :goto_0
.end method

.method protected getMinMoveX()I
    .locals 4

    .prologue
    .line 832
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    .line 834
    .local v0, "layoutPaddingLeft":I
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getX()F

    move-result v2

    float-to-int v1, v2

    .line 836
    .local v1, "layoutX":I
    add-int v2, v1, v0

    iget v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginLeftAdjust:I

    add-int/2addr v2, v3

    return v2
.end method

.method public getScaleFrom()F
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleFrom:F

    return v0
.end method

.method public getScaleTo()F
    .locals 1

    .prologue
    .line 1367
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleTo:F

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortenAnimDuration()I
    .locals 1

    .prologue
    .line 1541
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    return v0
.end method

.method public getStretchAnimDuration()I
    .locals 1

    .prologue
    .line 1525
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    return v0
.end method

.method public getStretchWidthFrom()I
    .locals 1

    .prologue
    .line 1327
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    return v0
.end method

.method public getStretchWidthTo()I
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    return v0
.end method

.method public getStretchXfrom()I
    .locals 1

    .prologue
    .line 1343
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    return v0
.end method

.method public getStretchXto()I
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    return v0
.end method

.method public getUseInterpolater()Z
    .locals 1

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mUseSysInterpolater:Z

    return v0
.end method

.method protected initAll()V
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->initStretchType()V

    .line 623
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/StretchSearchView;->initView(Landroid/content/Context;)V

    .line 624
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->initViewState()V

    .line 626
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->initListener()V

    .line 628
    return-void
.end method

.method protected initListener()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/common/widget/StretchSearchView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/StretchSearchView$1;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearchClear:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/common/widget/StretchSearchView$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/StretchSearchView$2;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    new-instance v1, Lcom/meizu/common/widget/StretchSearchView$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/StretchSearchView$3;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 687
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    new-instance v1, Lcom/meizu/common/widget/StretchSearchView$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/StretchSearchView$4;-><init>(Lcom/meizu/common/widget/StretchSearchView;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->addPreDrawListener()V

    .line 697
    return-void

    .line 687
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0
.end method

.method protected initStretchType()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 643
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    .line 644
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mAlignRightWhenAnim:Z

    if-eq v2, v0, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayMoveXAnim:Z

    .line 645
    return-void

    .line 643
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v3, 0x4

    if-eq v3, v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 644
    goto :goto_1
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, ""

    .line 571
    .local v0, "errMsg":Ljava/lang/String;
    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    .line 573
    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    if-eqz v2, :cond_0

    .line 576
    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v3, 0x3

    if-eq v3, v2, :cond_1

    .line 582
    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v3, 0x2

    if-eq v3, v2, :cond_2

    .line 587
    sget v2, Lcom/meizu/common/R$layout;->mc_stretch_search_layout:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    const-string/jumbo v0, "R.layout.mc_stretch_search_layout"

    .line 591
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 595
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    sget v3, Lcom/meizu/common/R$id;->mc_stretch_search_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 596
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    sget v3, Lcom/meizu/common/R$id;->mc_search_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    .line 597
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    sget v3, Lcom/meizu/common/R$id;->mc_voice_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mVoiceIcon:Landroid/widget/ImageView;

    .line 598
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    sget v3, Lcom/meizu/common/R$id;->mc_search_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    .line 599
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    sget v3, Lcom/meizu/common/R$id;->mc_search_icon_input_clear:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearchClear:Landroid/widget/ImageView;

    .line 600
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    sget v3, Lcom/meizu/common/R$id;->mc_search_edit:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/SearchEditText;

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    .line 603
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    iget v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayoutInitAlpha:F

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/SearchEditText;->setAlpha(F)V

    .line 604
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    iget-object v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchTextHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 606
    iget-boolean v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-nez v2, :cond_4

    .line 613
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 614
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginRightAdjust:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 616
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingLeft:I

    iget-object v4, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutPaddingRight:I

    iget-object v6, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 618
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 619
    return-void

    .line 574
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    sget v2, Lcom/meizu/common/R$layout;->mc_stretch_search_layout_ext:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    const-string/jumbo v0, "R.layout.mc_move_search_layout"

    .line 575
    goto/16 :goto_0

    .line 577
    :cond_1
    sget v2, Lcom/meizu/common/R$layout;->mc_move_search_layout:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    const-string/jumbo v0, "R.layout.mc_move_search_layout"

    .line 578
    goto/16 :goto_0

    .line 583
    :cond_2
    sget v2, Lcom/meizu/common/R$layout;->mc_stretch_search_layout_ext:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    const-string/jumbo v0, "R.layout.mc_stretch_search_layout_ext"

    .line 584
    goto/16 :goto_0

    .line 592
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StretchSearchView cannot inflate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    sget v3, Lcom/meizu/common/R$id;->mc_search_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    .line 608
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    iget v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mButtonColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mTextViewContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_1
.end method

.method protected initViewState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 843
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/SearchEditText;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x3f4ccccd    # 0.8f

    .line 847
    iput v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    .line 853
    :goto_0
    iput v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mAnimationState:I

    .line 854
    return-void

    .line 843
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SearchEditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public isAutoPlayStretchOnPreDraw()Z
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchOnPreDraw:Z

    return v0
.end method

.method public isHaveVoiceIcon()Z
    .locals 1

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    return v0
.end method

.method public isPlayInputTextAlhpaAnim()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayInputTextAlhpaAnim:Z

    return v0
.end method

.method public isPlayMoveXAnim()Z
    .locals 1

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayMoveXAnim:Z

    return v0
.end method

.method public isPlaySearchImgScaleAnim()Z
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchImgScaleAnim:Z

    return v0
.end method

.method public isPlaySearchclearAlphaAnim()Z
    .locals 1

    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchclearAlphaAnim:Z

    return v0
.end method

.method public isPlayStretchWidthAnim()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchWidthAnim:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 566
    return-void
.end method

.method protected onInitLayout()V
    .locals 3

    .prologue
    .line 734
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    if-nez v0, :cond_1

    .line 738
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->recalcFromMiddle()V

    :goto_1
    const-string/jumbo v0, "StretchSearchView"

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stretch width from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", move X from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->calcX()V

    .line 736
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->calcWidth()V

    goto :goto_0

    .line 738
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchTpye:I

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1608
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/StretchSearchView;

    .line 1609
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1610
    return-void
.end method

.method protected recalcFromMiddle()V
    .locals 10

    .prologue
    .line 774
    iget v3, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    .line 776
    .local v3, "tempX":I
    iget-object v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 779
    .local v1, "imgSearchIconWidth":I
    iget-object v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v7}, Lcom/meizu/common/widget/SearchEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .local v5, "textPaint":Landroid/text/TextPaint;
    const/high16 v6, 0x41f00000    # 30.0f

    .line 781
    .local v6, "textWidth":F
    iget-object v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v7}, Lcom/meizu/common/widget/SearchEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, "textHint":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 784
    float-to-int v7, v6

    div-int/lit8 v7, v7, 0x2

    add-int v0, v7, v1

    .line 785
    .local v0, "halfImgTextWidth":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->getMaxStretchWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    iput v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    .line 787
    iget-object v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    .line 789
    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->getMinMoveX()I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    .line 790
    iget-object v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    iget v8, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setX(F)V

    const-string/jumbo v7, "StretchSearchView"

    .line 793
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Reset stretch layout, search icon location X to layout right:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",search icon location X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mMainLayout:Landroid/widget/RelativeLayout;

    sget v8, Lcom/meizu/common/R$id;->mc_stretch_search_layout_1:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 796
    .local v2, "layout_1":Landroid/widget/ImageView;
    if-nez v2, :cond_0

    .line 799
    :goto_0
    return-void

    .line 797
    :cond_0
    iget v7, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    iget-object v8, p0, Lcom/meizu/common/widget/StretchSearchView;->mImgSearch:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_0
.end method

.method public setAutoPlayStretchOnPreDraw(Z)V
    .locals 0
    .param p1, "preDraw"    # Z

    .prologue
    .line 1185
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchOnPreDraw:Z

    .line 1186
    return-void
.end method

.method public setBtnListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1430
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasBtn:Z

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    return-void

    .line 1431
    :cond_0
    return-void
.end method

.method public setCustomAnimValueFrom(F)V
    .locals 0
    .param p1, "from"    # F

    .prologue
    .line 1241
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueFrom:F

    .line 1242
    return-void
.end method

.method public setCustomAnimValueTo(F)V
    .locals 0
    .param p1, "to"    # F

    .prologue
    .line 1249
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mCustomAnimValueTo:F

    .line 1250
    return-void
.end method

.method public setEditTextListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/SearchEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    return-void
.end method

.method public setHaveVoiceIcon(Z)V
    .locals 0
    .param p1, "hasVoiceIcon"    # Z

    .prologue
    .line 1193
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    .line 1194
    return-void
.end method

.method public setInputClearAlphaFrom(F)V
    .locals 0
    .param p1, "from"    # F

    .prologue
    .line 1273
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    .line 1274
    return-void
.end method

.method public setInputClearAlphaTo(F)V
    .locals 0
    .param p1, "to"    # F

    .prologue
    .line 1281
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaTo:F

    .line 1282
    return-void
.end method

.method public setInputTextAlphaFrom(F)V
    .locals 0
    .param p1, "from"    # F

    .prologue
    .line 1257
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaFrom:F

    .line 1258
    return-void
.end method

.method public setInputTextAlphaTo(F)V
    .locals 0
    .param p1, "to"    # F

    .prologue
    .line 1265
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputTextAlphaTo:F

    .line 1266
    return-void
.end method

.method public setIsAlignRigh(Z)V
    .locals 0
    .param p1, "isAlignRigh"    # Z

    .prologue
    .line 1469
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mAlignRightWhenAnim:Z

    .line 1470
    return-void
.end method

.method public setLayoutMarginLeftAdjust(I)V
    .locals 0
    .param p1, "adjustSize"    # I

    .prologue
    .line 1385
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginLeftAdjust:I

    .line 1386
    return-void
.end method

.method public setLayoutMarginRightAdjust(I)V
    .locals 0
    .param p1, "adjustSize"    # I

    .prologue
    .line 1399
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mLayoutMarginRightAdjust:I

    .line 1400
    return-void
.end method

.method public setOnShortenAnimationListener(Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenAnimationListener:Lcom/meizu/common/widget/StretchSearchView$ShortenAnimationListener;

    .line 1604
    return-void
.end method

.method public setOnStretchAnimationListener(Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchAnimationListener:Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    .line 1600
    return-void
.end method

.method public setPlayInputTextAlhpaAnim(Z)V
    .locals 0
    .param p1, "mPlayInputTextAlhpaAnim"    # Z

    .prologue
    .line 1237
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayInputTextAlhpaAnim:Z

    .line 1238
    return-void
.end method

.method public setPlayMoveXAnim(Z)V
    .locals 0
    .param p1, "mPlayMoveXAnim"    # Z

    .prologue
    .line 1213
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayMoveXAnim:Z

    .line 1214
    return-void
.end method

.method public setPlaySearchImgScaleAnim(Z)V
    .locals 0
    .param p1, "mPlaySearchImgScaleAnim"    # Z

    .prologue
    .line 1221
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchImgScaleAnim:Z

    .line 1222
    return-void
.end method

.method public setPlaySearchclearAlphaAnim(Z)V
    .locals 0
    .param p1, "mPlaySearchclearAlphaAnim"    # Z

    .prologue
    .line 1229
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlaySearchclearAlphaAnim:Z

    .line 1230
    return-void
.end method

.method public setPlayStretchWidthAnim(Z)V
    .locals 0
    .param p1, "mPlayStretchWidthAnim"    # Z

    .prologue
    .line 1205
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mPlayStretchWidthAnim:Z

    .line 1206
    return-void
.end method

.method public setScaleFrom(F)V
    .locals 0
    .param p1, "scaleFrom"    # F

    .prologue
    .line 1363
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleFrom:F

    .line 1364
    return-void
.end method

.method public setScaleTo(F)V
    .locals 0
    .param p1, "scaleTo"    # F

    .prologue
    .line 1371
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mScaleTo:F

    .line 1372
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    return-void
.end method

.method public setShortenAnimDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1534
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mShortenDuration:I

    .line 1535
    return-void
.end method

.method public setStretchAnimDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1518
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchDuration:I

    .line 1519
    return-void
.end method

.method public setStretchWidthFrom(I)V
    .locals 0
    .param p1, "fromWidth"    # I

    .prologue
    .line 1331
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthFrom:I

    .line 1332
    return-void
.end method

.method public setStretchWidthTo(I)V
    .locals 0
    .param p1, "toWidth"    # I

    .prologue
    .line 1339
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchWidthTo:I

    .line 1340
    return-void
.end method

.method public setStretchXfrom(I)V
    .locals 0
    .param p1, "fromX"    # I

    .prologue
    .line 1347
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXfrom:I

    .line 1348
    return-void
.end method

.method public setStretchXto(I)V
    .locals 0
    .param p1, "toX"    # I

    .prologue
    .line 1355
    iput p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mStretchXto:I

    .line 1356
    return-void
.end method

.method public setUseInterpolater(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 1451
    iput-boolean p1, p0, Lcom/meizu/common/widget/StretchSearchView;->mUseSysInterpolater:Z

    .line 1452
    return-void
.end method

.method public setVoiceIconListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1294
    iget-boolean v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mHasVoiceIcon:Z

    if-nez v0, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public showIme(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView;->mInputText:Lcom/meizu/common/widget/SearchEditText;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/SearchEditText;->showIme(Z)V

    .line 1177
    return-void
.end method

.method public startShorten()V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->shortenAmin()V

    .line 923
    return-void
.end method

.method public startStretch()V
    .locals 0

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->stretchAmin()V

    .line 916
    return-void
.end method

.method public startStretchOnPreDraw()V
    .locals 0

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/meizu/common/widget/StretchSearchView;->stretchAmin()V

    .line 909
    return-void
.end method
