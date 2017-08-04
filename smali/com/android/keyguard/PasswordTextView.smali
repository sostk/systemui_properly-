.class public Lcom/android/keyguard/PasswordTextView;
.super Landroid/view/View;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextView$CharState;,
        Lcom/android/keyguard/PasswordTextView$1;
    }
.end annotation


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleHollow:Landroid/graphics/drawable/Drawable;

.field private mCircleSize:I

.field private mCircleSolid:Landroid/graphics/drawable/Drawable;

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mHandler:Landroid/os/Handler;

.field private mHollowVisible:Z

.field private mMaxNum:I

.field private mPM:Landroid/os/PowerManager;

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mTextHeightRaw:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/PasswordTextView;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/PasswordTextView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/PasswordTextView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/PasswordTextView;C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->handleAppend(C)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/PasswordTextView;Z)V
    .locals 0
    .param p1, "animated"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->handleReset(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 93
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 94
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    .line 98
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 104
    iput-boolean v8, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    .line 111
    new-instance v7, Lcom/android/keyguard/PasswordTextView$1;

    invoke-direct {v7, p0}, Lcom/android/keyguard/PasswordTextView$1;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0, v8}, Lcom/android/keyguard/PasswordTextView;->setFocusableInTouchMode(Z)V

    .line 141
    invoke-virtual {p0, v8}, Lcom/android/keyguard/PasswordTextView;->setFocusable(Z)V

    .line 142
    sget-object v7, Lcom/android/keyguard/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 144
    .local v4, "n":I
    const/4 v6, 0x0

    .line 145
    .local v6, "solid":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 146
    .local v2, "hollow":Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    .line 147
    .local v5, "size":I
    const/4 v3, 0x0

    .end local v2    # "hollow":Landroid/graphics/drawable/Drawable;
    .end local v6    # "solid":Landroid/graphics/drawable/Drawable;
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_6

    .line 148
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 149
    .local v1, "attr":I
    sget v7, Lcom/android/keyguard/R$styleable;->PasswordTextView_scaledTextSize:I

    if-ne v1, v7, :cond_1

    .line 150
    iget v7, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_1
    sget v7, Lcom/android/keyguard/R$styleable;->PasswordTextView_mzPasswordMaxNum:I

    if-ne v1, v7, :cond_2

    .line 152
    iget v7, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    goto :goto_1

    .line 153
    :cond_2
    sget v7, Lcom/android/keyguard/R$styleable;->PasswordTextView_mzPasswordHollowVisible:I

    if-ne v1, v7, :cond_3

    .line 154
    iget-boolean v7, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    goto :goto_1

    .line 155
    :cond_3
    sget v7, Lcom/android/keyguard/R$styleable;->PasswordTextView_mzPasswordSolidDrawable:I

    if-ne v1, v7, :cond_4

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "solid":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 157
    .end local v6    # "solid":Landroid/graphics/drawable/Drawable;
    :cond_4
    sget v7, Lcom/android/keyguard/R$styleable;->PasswordTextView_mzPasswordHollowDrawable:I

    if-ne v1, v7, :cond_5

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "hollow":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 159
    .end local v2    # "hollow":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget v7, Lcom/android/keyguard/R$styleable;->PasswordTextView_mzPasswordCellSize:I

    if-ne v1, v7, :cond_0

    .line 160
    iget v7, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1

    .line 163
    .end local v1    # "attr":I
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v8, 0x81

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFlags(I)V

    .line 165
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 166
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif-light"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 168
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->password_dot_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 169
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->mz_password_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 171
    iput-boolean v9, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 173
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    .line 174
    const v8, 0x10c000e

    .line 173
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 175
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    .line 176
    const v8, 0x10c000f

    .line 175
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 177
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    .line 178
    const v8, 0x10c000d

    .line 177
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 179
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 180
    invoke-virtual {p0, v6, v2, v5}, Lcom/android/keyguard/PasswordTextView;->setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 138
    return-void
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 221
    iget v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, v2, v3

    .line 222
    .local v1, "textHeight":F
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 225
    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 9

    .prologue
    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 231
    .local v4, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 232
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    .line 233
    .local v1, "charLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 234
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 235
    .local v2, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    if-eqz v3, :cond_0

    .line 236
    int-to-float v6, v5

    iget v7, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    int-to-float v7, v7

    iget v8, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 238
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v1

    iget v8, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_1
    int-to-float v6, v5

    return v6
.end method

.method private handleAppend(C)V
    .locals 8
    .param p1, "c"    # C

    .prologue
    const/4 v7, 0x1

    .line 748
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    if-lt v5, v6, :cond_0

    .line 749
    return-void

    .line 751
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 752
    .local v4, "visibleChars":I
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 753
    .local v3, "textbefore":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 754
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 755
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    .line 776
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 777
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 747
    return-void

    .line 757
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 759
    .local v1, "newLength":I
    if-le v1, v4, :cond_3

    .line 760
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;

    move-result-object v0

    .line 761
    .local v0, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :goto_1
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->startAppearAnimation()V

    .line 769
    if-le v1, v7, :cond_1

    .line 770
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 771
    .local v2, "previousState":Lcom/android/keyguard/PasswordTextView$CharState;
    iget-boolean v5, v2, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    if-eqz v5, :cond_1

    .line 772
    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView$CharState;->swapToDotWhenAppearFinished()V

    goto :goto_0

    .line 763
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    .end local v2    # "previousState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 764
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    goto :goto_1
.end method

.method private handleReset(Z)V
    .locals 18
    .param p1, "animated"    # Z

    .prologue
    .line 781
    const-string/jumbo v13, "PasswordTextView"

    const-string/jumbo v14, "reset() is called, set PwEntry true."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 786
    .local v12, "textbefore":Ljava/lang/String;
    const-string/jumbo v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    .line 818
    :cond_0
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v13, v15}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 780
    return-void

    .line 790
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 791
    .local v6, "length":I
    add-int/lit8 v13, v6, -0x1

    div-int/lit8 v7, v13, 0x2

    .line 793
    .local v7, "middleIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 795
    .local v2, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    if-eqz p1, :cond_3

    .line 797
    if-gt v5, v7, :cond_2

    .line 798
    mul-int/lit8 v3, v5, 0x2

    .line 803
    .local v3, "delayIndex":I
    :goto_2
    int-to-long v14, v3

    .line 792
    const-wide/16 v16, 0x14

    .line 803
    mul-long v10, v14, v16

    .line 804
    .local v10, "startDelay":J
    const-wide/16 v14, 0x3c

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 805
    add-int/lit8 v13, v6, -0x1

    int-to-long v14, v13

    .line 792
    const-wide/16 v16, 0x14

    .line 805
    mul-long v8, v16, v14

    .line 806
    .local v8, "maxDelay":J
    const-wide/16 v14, 0x3c

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    const-wide/16 v16, 0xa0

    add-long v8, v14, v16

    .line 807
    invoke-virtual {v2, v10, v11, v8, v9}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 808
    invoke-static {v2}, Lcom/android/keyguard/PasswordTextView$CharState;->-wrap2(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 793
    .end local v3    # "delayIndex":I
    .end local v8    # "maxDelay":J
    .end local v10    # "startDelay":J
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 800
    :cond_2
    sub-int v4, v5, v7

    .line 801
    .local v4, "distToMiddle":I
    add-int/lit8 v13, v6, -0x1

    add-int/lit8 v14, v4, -0x1

    mul-int/lit8 v14, v14, 0x2

    sub-int v3, v13, v14

    .restart local v3    # "delayIndex":I
    goto :goto_2

    .line 810
    .end local v3    # "delayIndex":I
    .end local v4    # "distToMiddle":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v13, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 813
    .end local v2    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_4
    if-nez p1, :cond_0

    .line 814
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    goto :goto_0
.end method

.method private obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 276
    .local v0, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :goto_0
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 277
    return-object v0

    .line 273
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 274
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->reset()V

    goto :goto_0
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 346
    const-string/jumbo v3, "speak_password"

    .line 347
    const/4 v4, -0x3

    .line 345
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private userActivity()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 248
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method public deleteLastChar()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 253
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 254
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 255
    .local v2, "textbefore":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 256
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 258
    .local v0, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    invoke-virtual {v0, v6, v7, v6, v7}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 260
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 261
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 252
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/PasswordTextView;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PasswordTextView;->mLeft:I

    move/from16 v22, v0

    sub-int v4, v4, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    mul-int v22, v22, v23

    sub-int v4, v4, v22

    div-int/lit8 v14, v4, 0x2

    .line 187
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/PasswordTextView;->mTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PasswordTextView;->mBottom:I

    move/from16 v22, v0

    add-int v4, v4, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    move/from16 v22, v0

    sub-int v4, v4, v22

    div-int/lit8 v19, v4, 0x2

    .line 188
    .local v19, "top":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 189
    .local v21, "w":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 190
    .local v11, "h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    sub-int v4, v4, v21

    shr-int/lit8 v16, v4, 0x1

    .line 191
    .local v16, "offX":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    sub-int/2addr v4, v11

    shr-int/lit8 v17, v4, 0x1

    .line 192
    .local v17, "offY":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v12, v4, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    mul-int/2addr v4, v12

    add-int/2addr v4, v14

    add-int v13, v4, v16

    .line 194
    .local v13, "l":I
    add-int v18, v19, v17

    .line 195
    .local v18, "t":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    add-int v22, v13, v21

    add-int v23, v18, v11

    move/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v4, v13, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 192
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 199
    .end local v11    # "h":I
    .end local v12    # "i":I
    .end local v13    # "l":I
    .end local v14    # "left":I
    .end local v16    # "offX":I
    .end local v17    # "offY":I
    .end local v18    # "t":I
    .end local v19    # "top":I
    .end local v21    # "w":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getDrawingWidth()F

    move-result v20

    .line 200
    .local v20, "totalDrawingWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v20, v22

    sub-float v5, v4, v22

    .line 201
    .local v5, "currentDrawPosition":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 202
    .local v15, "length":I
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 203
    .local v9, "bounds":Landroid/graphics/Rect;
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v6, v4, v22

    .line 204
    .local v6, "charHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v7, v4

    .line 205
    .local v7, "yPosition":F
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v4, v4, v22

    int-to-float v8, v4

    .line 206
    .local v8, "charLength":F
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    if-ge v12, v15, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/PasswordTextView$CharState;

    .local v3, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    move-object/from16 v4, p1

    .line 208
    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/PasswordTextView$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v10

    .line 210
    .local v10, "charWidth":F
    add-float/2addr v5, v10

    .line 206
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 184
    .end local v3    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    .end local v5    # "currentDrawPosition":F
    .end local v6    # "charHeight":I
    .end local v7    # "yPosition":F
    .end local v8    # "charLength":F
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "charWidth":F
    .end local v15    # "length":I
    .end local v20    # "totalDrawingWidth":F
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 308
    const-class v0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 305
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 326
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 328
    const-class v0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 331
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 337
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 325
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 713
    const/4 v3, 0x0

    .line 714
    .local v3, "maxNumWidth":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 715
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    .line 716
    .local v1, "charLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    if-ge v2, v5, :cond_0

    .line 717
    iget v5, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    add-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 721
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v5, p2}, Lcom/android/keyguard/PasswordTextView;->getDefaultSize(II)I

    move-result v5

    .line 720
    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView;->setMeasuredDimension(II)V

    .line 712
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 316
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 318
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v3, 0x1

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isShown()Z

    move-result v1

    .line 288
    if-eqz v1, :cond_2

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    const/4 p1, 0x0

    .line 294
    .end local p1    # "beforeText":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 295
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 296
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 297
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 298
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 299
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 287
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    return-void
.end method

.method public setMaxNum(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 697
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    if-eq v0, p1, :cond_0

    .line 698
    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    .line 699
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->requestLayout()V

    .line 700
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    .line 696
    :cond_0
    return-void
.end method

.method public setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "solid"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hollow"    # Landroid/graphics/drawable/Drawable;
    .param p3, "size"    # I

    .prologue
    .line 728
    if-gtz p3, :cond_1

    .line 729
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 730
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 729
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 731
    .local v0, "circleSize":I
    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 734
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 733
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 732
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 736
    :cond_0
    iget v1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    add-int p3, v0, v1

    .line 738
    .end local v0    # "circleSize":I
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_4

    .line 739
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    .line 740
    iput-object p2, p0, Lcom/android/keyguard/PasswordTextView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    .line 741
    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    .line 742
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->requestLayout()V

    .line 743
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    .line 727
    :cond_3
    return-void

    .line 738
    :cond_4
    iget v1, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    if-eq p3, v1, :cond_3

    goto :goto_0
.end method
