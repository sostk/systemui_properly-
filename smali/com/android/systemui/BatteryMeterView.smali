.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private final mChargeColor:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mCriticalLevel:I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mPowerSaveEnabled:Z

.field private final mShapePath:Landroid/graphics/Path;

.field mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field mTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 70
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 72
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 73
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 74
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 76
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    .line 77
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    .line 78
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    .line 463
    new-instance v8, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 204
    .local v7, "res":Landroid/content/res/Resources;
    sget-object v8, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    .line 205
    const/4 v9, 0x0

    .line 204
    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 207
    .local v1, "atts":Landroid/content/res/TypedArray;
    const v8, 0x7f0a00c5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 206
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 208
    .local v4, "frameColor":I
    const v8, 0x7f0d0013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 209
    .local v6, "levels":Landroid/content/res/TypedArray;
    const v8, 0x7f0d0014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 211
    .local v2, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 212
    .local v0, "N":I
    mul-int/lit8 v8, v0, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 213
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 214
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aput v10, v8, v9

    .line 215
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    aput v10, v8, v9

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "status_bar_show_battery_percent"

    const/4 v10, 0x0

    .line 220
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 222
    const v8, 0x7f090253

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 223
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 224
    const v9, 0x10e0052

    .line 223
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 226
    const v9, 0x7f110002

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 225
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 228
    const v9, 0x7f110003

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 227
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 230
    const v9, 0x7f110004

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 229
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    .line 232
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 233
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 235
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 238
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 239
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 240
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 241
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 244
    const-string/jumbo v8, "sans-serif-condensed"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 245
    .local v3, "font":Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 246
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 248
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 249
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    const-string/jumbo v8, "sans-serif"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 251
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 252
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 256
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 257
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v9, 0x7f0a00c7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    invoke-static {v7}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    .line 200
    return-void

    .line 220
    .end local v3    # "font":Landroid/graphics/Typeface;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 303
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    return v3

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 308
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    .line 309
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 310
    if-gt p1, v2, :cond_1

    return v0

    .line 307
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 312
    .end local v2    # "thresh":I
    :cond_2
    return v0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 278
    const v5, 0x7f0d0015

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 279
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 280
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 281
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 282
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 280
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 284
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 285
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 286
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 287
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 285
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 289
    :cond_1
    return-object v4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 467
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 469
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget v3, v3, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    iput v3, v2, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    .line 470
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget-boolean v3, v3, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 474
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "level":Ljava/lang/String;
    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 478
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    .line 480
    :cond_3
    if-eqz v1, :cond_4

    .line 481
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    .line 483
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    move-object/from16 v26, v0

    .line 318
    .local v26, "tracker":Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
    :goto_0
    move-object/from16 v0, v26

    iget v0, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    move/from16 v19, v0

    .line 320
    .local v19, "level":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_1

    return-void

    .line 317
    .end local v19    # "level":I
    .end local v26    # "tracker":Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    move-object/from16 v26, v0

    .restart local v26    # "tracker":Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
    goto :goto_0

    .line 322
    .restart local v19    # "level":I
    :cond_1
    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v16, v3, v5

    .line 323
    .local v16, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v25

    .line 324
    .local v25, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v23

    .line 325
    .local v23, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v24

    .line 326
    .local v24, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v21

    .line 327
    .local v21, "pb":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    sub-int v3, v3, v25

    sub-int v17, v3, v21

    .line 328
    .local v17, "height":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    sub-int v3, v3, v23

    sub-int v27, v3, v24

    .line 330
    .local v27, "width":I
    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    mul-float/2addr v3, v5

    float-to-int v15, v3

    .line 332
    .local v15, "buttonHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v27

    int-to-float v9, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v25

    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 337
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v0, v27

    int-to-float v6, v0

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 338
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 339
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3e800000    # 0.25f

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v9, v9, v30

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    int-to-float v0, v15

    move/from16 v31, v0

    add-float v30, v30, v31

    .line 336
    move/from16 v0, v30

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    int-to-float v6, v15

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    const/16 v3, 0x60

    move/from16 v0, v19

    if-lt v0, v3, :cond_5

    .line 357
    const/high16 v16, 0x3f800000    # 1.0f

    .line 362
    :cond_2
    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v16, v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    .line 366
    .local v20, "levelTop":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 377
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    if-eqz v3, :cond_8

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40900000    # 4.5f

    div-float/2addr v5, v6

    add-float v11, v3, v5

    .line 380
    .local v11, "bl":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float v14, v3, v5

    .line 381
    .local v14, "bt":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    sub-float v13, v3, v5

    .line 382
    .local v13, "br":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    sub-float v10, v3, v5

    .line 383
    .local v10, "bb":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v14

    if-eqz v3, :cond_7

    .line 385
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v14, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    .line 389
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v30, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    .line 387
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 390
    const/16 v18, 0x2

    .local v18, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_b

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    aget v6, v6, v18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    .line 393
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    add-int/lit8 v30, v18, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    .line 391
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    add-int/lit8 v18, v18, 0x2

    goto :goto_4

    .line 354
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    .end local v18    # "i":I
    .end local v20    # "levelTop":F
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v3

    goto/16 :goto_1

    .line 358
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-gt v0, v3, :cond_2

    .line 359
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 363
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v16

    mul-float/2addr v5, v6

    add-float v20, v3, v5

    .restart local v20    # "levelTop":F
    goto/16 :goto_3

    .line 384
    .restart local v10    # "bb":F
    .restart local v11    # "bl":F
    .restart local v13    # "br":F
    .restart local v14    # "bt":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_3

    .line 400
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v12, v3, v5

    .line 401
    .local v12, "boltPct":F
    const/4 v3, 0x0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 402
    const v3, 0x3e99999a    # 0.3f

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_c

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 412
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v12    # "boltPct":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    :cond_8
    :goto_6
    const/16 v22, 0x0

    .line 413
    .local v22, "pctOpaque":Z
    const/4 v7, 0x0

    .local v7, "pctX":F
    const/4 v8, 0x0

    .line 414
    .local v8, "pctY":F
    const/4 v4, 0x0

    .line 415
    .local v4, "pctText":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-le v0, v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v3, :cond_9

    .line 416
    move-object/from16 v0, v26

    iget v3, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_d

    .line 435
    .end local v4    # "pctText":Ljava/lang/String;
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v20

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 444
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    if-nez v3, :cond_a

    .line 445
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-gt v0, v3, :cond_10

    .line 447
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v28, v3, v5

    .line 448
    .local v28, "x":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef5c28f    # 0.48f

    mul-float v29, v3, v5

    .line 449
    .local v29, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 316
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_a
    :goto_8
    return-void

    .line 395
    .end local v7    # "pctX":F
    .end local v8    # "pctY":F
    .end local v22    # "pctOpaque":Z
    .restart local v10    # "bb":F
    .restart local v11    # "bl":F
    .restart local v13    # "br":F
    .restart local v14    # "bt":F
    .restart local v18    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    .line 397
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v30, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    .line 395
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 407
    .end local v18    # "i":I
    .restart local v12    # "boltPct":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_6

    .line 417
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v12    # "boltPct":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    .restart local v4    # "pctText":Ljava/lang/String;
    .restart local v7    # "pctX":F
    .restart local v8    # "pctY":F
    .restart local v22    # "pctOpaque":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    int-to-float v6, v0

    .line 420
    move-object/from16 v0, v26

    iget v3, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    const/16 v9, 0x64

    if-ne v3, v9, :cond_e

    const v3, 0x3ec28f5c    # 0.38f

    .line 418
    :goto_9
    mul-float/2addr v3, v6

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    .line 422
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v7, v3, v5

    .line 424
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef0a3d7    # 0.47f

    mul-float v8, v3, v5

    .line 425
    cmpl-float v3, v20, v8

    if-lez v3, :cond_f

    const/16 v22, 0x1

    .line 426
    :goto_a
    if-nez v22, :cond_9

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_7

    .line 420
    .local v4, "pctText":Ljava/lang/String;
    :cond_e
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_9

    .line 425
    .local v4, "pctText":Ljava/lang/String;
    :cond_f
    const/16 v22, 0x0

    goto :goto_a

    .line 450
    .end local v4    # "pctText":Ljava/lang/String;
    :cond_10
    if-eqz v22, :cond_a

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->addCallback(Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 164
    return-void
.end method

.method public onBatteryLevelChanged(IZI)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "status"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0902a4

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 494
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 267
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->removeCallback(Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 182
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    .line 272
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 294
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 295
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 296
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    .line 293
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 261
    return-void
.end method

.method public setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .line 488
    return-void
.end method
