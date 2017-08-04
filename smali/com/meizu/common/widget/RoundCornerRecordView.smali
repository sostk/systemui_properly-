.class public Lcom/meizu/common/widget/RoundCornerRecordView;
.super Landroid/widget/ImageView;
.source "RoundCornerRecordView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/RoundCornerRecordView$1;,
        Lcom/meizu/common/widget/RoundCornerRecordView$IconType;,
        Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    }
.end annotation


# static fields
.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final PHONE_COLUMN_INDEX:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RoundCornerRecordView"

.field private static final sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field private static final sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field private static sStartActivity:Z

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mBadgeText:Ljava/lang/String;

.field private mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeTextPaint:Landroid/graphics/Paint;

.field private mBadgeTextShadowColor:I

.field private mBadgeTextShadowRadius:I

.field private mBadgeTextSize:I

.field private mBgColor:I

.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mContactId:J

.field private mContactPhone:Ljava/lang/String;

.field private mCoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultColor:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDstContactBmp:Landroid/graphics/Bitmap;

.field private mExtras:Landroid/os/Bundle;

.field private mHasShadow:Z

.field private mIconText:Ljava/lang/CharSequence;

.field private mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field private mIsClickToCall:Z

.field private mIsUseStyle:Z

.field private mListCallIcon:Landroid/graphics/drawable/Drawable;

.field private mLongClick:Z

.field private mOffsetBottom:I

.field private mOffsetRight:I

.field private mOldContactId:J

.field private mOldExtras:Landroid/os/Bundle;

.field private mOldPhone:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mRectView:Landroid/graphics/Rect;

.field private mRecycle:Z

.field private mRecycleOnDetached:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseCallIcon:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    sput-boolean v3, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sSyncKeyLock:Ljava/lang/Object;

    const/4 v0, 0x6

    .line 171
    new-array v0, v0, [Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/16 v0, 0xb

    .line 180
    new-array v0, v0, [Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 70
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 72
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 73
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 75
    iput v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 76
    iput v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 77
    iput v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 78
    iput v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 79
    iput-boolean v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 83
    iput-boolean v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    .line 84
    iput-boolean v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    .line 85
    iput-boolean v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mLongClick:Z

    const/4 v3, -0x1

    .line 110
    iput v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    .line 115
    iput-boolean v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    .line 122
    iput-boolean v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    .line 205
    sget-object v3, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge_mcBorderType:I

    sget-object v4, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    iget v4, v4, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->borderTypeInt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 212
    .local v1, "borderTypeIndex":I
    sget v3, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge_mcIconType:I

    sget-object v4, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    iget v4, v4, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->iconTypeInt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 216
    .local v2, "iconTypeIndex":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_round_colorfulbg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultColor:I

    .line 217
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView;->sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/RoundCornerRecordView;->setBorderType(Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;)V

    .line 221
    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView;->sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/RoundCornerRecordView;->setIconType(Lcom/meizu/common/widget/RoundCornerRecordView$IconType;)V

    .line 223
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->init()V

    .line 224
    return-void
.end method

.method private drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 767
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 773
    :goto_0
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 774
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 777
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_1

    .line 786
    :goto_1
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 787
    iget v6, p2, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    .line 788
    .local v0, "baseX":F
    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 789
    .local v1, "baseY":F
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 790
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v3, v6, v7

    .line 791
    .local v3, "fontTotalHeight":F
    div-float v6, v3, v10

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v5, v6, v7

    .line 792
    .local v5, "offY":F
    add-float v6, v1, v5

    sub-float v4, v6, v10

    .line 793
    .local v4, "newY":F
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    iget-object v7, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 794
    return-void

    .line 768
    .end local v0    # "baseX":F
    .end local v1    # "baseY":F
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v3    # "fontTotalHeight":F
    .end local v4    # "newY":F
    .end local v5    # "offY":F
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_default:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 778
    :cond_1
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    .line 779
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 780
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 781
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 782
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowColor:I

    invoke-virtual {v6, v7, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method private drawContactDrawable()V
    .locals 15

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 640
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v6, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 645
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/RoundCornerRecordView;->isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 650
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 651
    .local v11, "dstWidth":I
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 652
    .local v10, "dstHeight":I
    iget-boolean v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    if-nez v6, :cond_3

    .line 657
    :goto_0
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 658
    .local v0, "contactBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 659
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "height":I
    const/4 v1, 0x0

    .local v1, "cropLeft":I
    const/4 v2, 0x0

    .line 663
    .local v2, "cropTop":I
    if-ne v3, v4, :cond_4

    .line 675
    :goto_1
    int-to-float v6, v11

    int-to-float v14, v3

    div-float v13, v6, v14

    .line 676
    .local v13, "scaleWidth":F
    int-to-float v6, v10

    int-to-float v14, v4

    div-float v12, v6, v14

    .line 677
    .local v12, "scaleHeight":F
    move-object v7, v0

    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/high16 v6, 0x3f800000    # 1.0f

    .line 680
    cmpl-float v6, v13, v6

    if-nez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v12, v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_6

    .line 681
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 682
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 683
    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 687
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_2
    invoke-direct {p0, v7}, Lcom/meizu/common/widget/RoundCornerRecordView;->getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 688
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v14, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-direct {v8, v6, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 689
    .local v8, "contactIcon":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    if-ne v7, v0, :cond_7

    .line 696
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    iget-boolean v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-nez v6, :cond_8

    .line 701
    .end local v0    # "contactBmp":Landroid/graphics/Bitmap;
    :goto_4
    return-void

    .line 641
    .end local v1    # "cropLeft":I
    .end local v2    # "cropTop":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v8    # "contactIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "dstHeight":I
    .end local v11    # "dstWidth":I
    .end local v12    # "scaleHeight":F
    .end local v13    # "scaleWidth":F
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 646
    :cond_2
    return-void

    .line 653
    .restart local v10    # "dstHeight":I
    .restart local v11    # "dstWidth":I
    :cond_3
    iget v11, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 654
    iget v10, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    goto :goto_0

    .line 665
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "contactBmp":Landroid/graphics/Bitmap;
    .restart local v1    # "cropLeft":I
    .restart local v2    # "cropTop":I
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    :cond_4
    if-gt v4, v3, :cond_5

    .line 669
    sub-int v6, v3, v4

    div-int/lit8 v1, v6, 0x2

    .line 670
    move v3, v4

    goto :goto_1

    .line 666
    :cond_5
    sub-int v6, v4, v3

    div-int/lit8 v2, v6, 0x2

    .line 667
    move v4, v3

    goto :goto_1

    .line 680
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "scaleHeight":F
    .restart local v13    # "scaleWidth":F
    :cond_6
    if-nez v2, :cond_0

    goto :goto_2

    .line 692
    .restart local v8    # "contactIcon":Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    .line 693
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 697
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 699
    .local v0, "contactBmp":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    goto :goto_4
.end method

.method private drawSmallIcon(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 733
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-eq v1, v3, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 734
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    iget v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetBottom:I

    sub-int v8, v1, v3

    .line 736
    .local v8, "offset":I
    new-instance v9, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    iget-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v8

    invoke-direct {v9, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 740
    .local v9, "rectIc":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 741
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 744
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    if-ne v1, v3, :cond_3

    .line 747
    :cond_2
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 748
    .local v2, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    .line 751
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 752
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/meizu/common/R$color;->white:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 753
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 756
    .local v0, "textLayout":Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 757
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 759
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v10, v10, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 760
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 761
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 744
    .end local v0    # "textLayout":Landroid/text/StaticLayout;
    .end local v2    # "textPaint":Landroid/text/TextPaint;
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    if-eq v1, v3, :cond_2

    goto/16 :goto_0
.end method

.method private getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_small_picture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 705
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 707
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 708
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 709
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 711
    .local v4, "rectF":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 720
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_2

    .line 725
    :goto_1
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 726
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 727
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 728
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 729
    return-object v1

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_cover:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 714
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v5, :cond_0

    .line 715
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 716
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 721
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_2
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setDuplicateParentStateEnabled(Z)V

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    .line 232
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    return-void
.end method

.method private isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 356
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    return v2

    .line 358
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 868
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 869
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawableState()[I

    move-result-object v1

    .line 871
    .local v1, "states":[I
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 872
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 874
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    goto :goto_0
.end method

.method public getBorderType()Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    return-object v0
.end method

.method public getIconType()Lcom/meizu/common/widget/RoundCornerRecordView$IconType;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 894
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 895
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    if-nez v0, :cond_0

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    .line 900
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 896
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 798
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_4

    .line 800
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 801
    .local v2, "oldDstContactBmp":Landroid/graphics/Bitmap;
    iput-object v7, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 802
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->drawContactDrawable()V

    .line 804
    if-nez v2, :cond_5

    .line 810
    .end local v2    # "oldDstContactBmp":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 811
    .local v4, "tmpPaint":Landroid/graphics/Paint;
    iget v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 813
    .local v1, "drawRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v6, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-eq v5, v6, :cond_6

    .line 817
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 820
    :goto_1
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 821
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 825
    .local v3, "saveCount":I
    iget-boolean v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    if-nez v5, :cond_7

    .line 829
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_8

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 834
    .local v0, "contact":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 835
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 839
    .end local v0    # "contact":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-boolean v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    if-nez v5, :cond_9

    .line 845
    :goto_3
    iget-boolean v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-nez v5, :cond_a

    .line 854
    :cond_3
    :goto_4
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_b

    .line 862
    :goto_5
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 863
    iput-boolean v10, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    .line 864
    return-void

    .line 798
    .end local v1    # "drawRect":Landroid/graphics/Rect;
    .end local v3    # "saveCount":I
    .end local v4    # "tmpPaint":Landroid/graphics/Paint;
    :cond_4
    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-ne v6, v5, :cond_0

    goto :goto_0

    .line 805
    .restart local v2    # "oldDstContactBmp":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 814
    .end local v2    # "oldDstContactBmp":Landroid/graphics/Bitmap;
    .restart local v1    # "drawRect":Landroid/graphics/Rect;
    .restart local v4    # "tmpPaint":Landroid/graphics/Paint;
    :cond_6
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    sub-int/2addr v8, v9

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 825
    .restart local v3    # "saveCount":I
    :cond_7
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 826
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 827
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 829
    :cond_8
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 830
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/RoundCornerRecordView;->drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 840
    :cond_9
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 841
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 845
    :cond_a
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 846
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 850
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 855
    :cond_b
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 856
    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 935
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/RoundCornerRecordView;

    .line 936
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 937
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 387
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 390
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 374
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    if-nez v2, :cond_0

    .line 381
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 382
    return-void

    .line 375
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 376
    .local v1, "width":I
    iget v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 377
    .local v0, "height":I
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 378
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-nez v0, :cond_0

    .line 913
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 911
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 905
    :cond_2
    sget-boolean v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mContactPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldPhone:Ljava/lang/String;

    .line 907
    iget-wide v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mContactId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldContactId:J

    .line 908
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldExtras:Landroid/os/Bundle;

    .line 909
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 880
    if-nez p1, :cond_0

    .line 885
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    .line 886
    return-void

    .line 881
    :cond_0
    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    .line 883
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycleOnDetached(Z)V
    .locals 0
    .param p1, "recycle"    # Z

    .prologue
    .line 889
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    .line 890
    return-void
.end method

.method public setBackgroundColorId(Ljava/lang/String;)V
    .locals 4
    .param p1, "colorId"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$array;->mc_colorful_round:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, "colorArray":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    rem-int v1, v2, v3

    .line 240
    .local v1, "index":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 242
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    return-void

    .line 241
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    goto :goto_0
.end method

.method public setBorderType(Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;)V
    .locals 4
    .param p1, "borderType"    # Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .prologue
    const/4 v3, 0x0

    .line 475
    if-eqz p1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-eq v1, p1, :cond_1

    .line 483
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 484
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 486
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    .local v0, "oldDefDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 492
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_box:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 494
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_text_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowRadius:I

    .line 496
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_badge_text_shadow_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowColor:I

    .line 499
    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 568
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 569
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 570
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 571
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_small_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    .line 575
    :goto_1
    return-void

    .line 476
    .end local v0    # "oldDefDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 480
    :cond_1
    return-void

    .line 489
    .restart local v0    # "oldDefDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 501
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_list_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 503
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 505
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 507
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 509
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 511
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 513
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto :goto_1

    .line 518
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_sms_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 520
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_sms_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 522
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 524
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 526
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 528
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 530
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_1

    .line 535
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_small_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 537
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_small_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 539
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_small_picture_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 541
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_small_picture_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 543
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 545
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 547
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_small_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_1

    .line 553
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_contact_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 555
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_border_contact_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 557
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_picture_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 559
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_contact_picture_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 561
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 562
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 563
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setClickToCall(Z)V
    .locals 1
    .param p1, "clickToCall"    # Z

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-ne v0, p1, :cond_0

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    .line 587
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    goto :goto_0
.end method

.method public setContactBadgeText(Ljava/lang/String;)V
    .locals 5
    .param p1, "badgeText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 622
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 626
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "firstLetter":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v0, v3

    .local v0, "c":C
    const/16 v3, 0x61

    .line 629
    if-le v3, v0, :cond_3

    .line 632
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    .line 635
    .end local v0    # "c":C
    .end local v1    # "firstLetter":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    .line 636
    return-void

    :cond_1
    const-string/jumbo v3, ""

    .line 620
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    goto :goto_1

    .restart local v2    # "text":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, ""

    .line 624
    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    goto :goto_1

    .restart local v0    # "c":C
    .restart local v1    # "firstLetter":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x7a

    .line 629
    if-gt v0, v3, :cond_0

    .line 630
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setHasShadow(Z)V
    .locals 1
    .param p1, "hasShadow"    # Z

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    if-ne v0, p1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 610
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    .line 611
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    goto :goto_0
.end method

.method public setIconText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    .line 398
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    goto :goto_0
.end method

.method public setIconType(Lcom/meizu/common/widget/RoundCornerRecordView$IconType;)V
    .locals 3
    .param p1, "iconType"    # Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .prologue
    const/4 v2, 0x0

    .line 408
    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    if-eq v0, p1, :cond_1

    .line 416
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 417
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 459
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 462
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    .line 463
    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 413
    :cond_1
    return-void

    .line 419
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_outgoing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 424
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_incoming:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 429
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_missed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 434
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_reject:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 439
    :pswitch_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_ringing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 444
    :pswitch_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_record:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 449
    :pswitch_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_record_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 454
    :pswitch_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_voicemail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 311
    if-eqz p1, :cond_0

    .line 314
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z

    .prologue
    const/4 v0, 0x0

    .line 301
    if-eqz p1, :cond_0

    .line 304
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    iput-boolean p2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 323
    .local v1, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 326
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 329
    .local v0, "bmp":Landroid/graphics/Bitmap;
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_3

    .line 333
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 338
    :cond_0
    :goto_2
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-nez v2, :cond_5

    .line 341
    .end local v1    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_3
    iput-boolean v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    .line 342
    return-void

    .line 324
    .restart local v1    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 330
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 333
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    iput-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 338
    :cond_5
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 339
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3
.end method

.method public setImageResource(I)V
    .locals 6
    .param p1, "resId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 247
    if-eqz p1, :cond_3

    .line 250
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 251
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 254
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 255
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_4

    .line 259
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 264
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-nez v3, :cond_6

    .line 267
    .end local v2    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    iput-boolean v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    .line 269
    :goto_3
    return-void

    .line 248
    :cond_3
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 255
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 256
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 259
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_1

    .line 260
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    iput-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 264
    :cond_6
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 265
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 273
    if-eqz p1, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 277
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    const/4 v0, 0x0

    .line 280
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 281
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_4

    .line 285
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 290
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-nez v3, :cond_6

    .line 293
    .end local v2    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    iput-boolean v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    .line 295
    :goto_3
    return-void

    .line 274
    :cond_3
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 281
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 282
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 285
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_1

    .line 286
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    iput-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 290
    :cond_6
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 291
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 922
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 923
    return-void

    .line 919
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    return-void
.end method

.method public setRecordClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 931
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 369
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSubtitle:Ljava/lang/CharSequence;

    .line 603
    return-void
.end method

.method public setTilte(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mTitle:Ljava/lang/CharSequence;

    .line 596
    return-void
.end method
