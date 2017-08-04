.class public Lcom/meizu/common/drawble/BlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/drawble/BlurDrawable$1;,
        Lcom/meizu/common/drawble/BlurDrawable$BlurState;
    }
.end annotation


# static fields
.field public static final DEFAULT_BLUR_COLOR:I = -0x26000001

.field public static final DEFAULT_BLUR_COLOR_MODE:Landroid/graphics/PorterDuff$Mode;

.field public static final DEFAULT_BLUR_LEVEL:F = 0.9f

.field public static final sDrawBlurRectMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mMutated:Z

.field private mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "state_"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/meizu/common/drawble/BlurDrawable;->DEFAULT_BLUR_COLOR_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 26
    invoke-static {}, Lcom/meizu/common/drawble/BlurDrawable;->getDrawBlurRectMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/meizu/common/drawble/BlurDrawable;-><init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;)V

    .line 33
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "level"    # F

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/meizu/common/drawble/BlurDrawable;-><init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/meizu/common/drawble/BlurDrawable;->setBlurLevel(F)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 46
    new-instance v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    invoke-direct {v0, p1}, Lcom/meizu/common/drawble/BlurDrawable$BlurState;-><init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;)V

    iput-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    .line 47
    if-eqz p1, :cond_0

    .line 50
    :goto_0
    return-void

    :cond_0
    const v0, -0x26000001

    .line 48
    sget-object v1, Lcom/meizu/common/drawble/BlurDrawable;->DEFAULT_BLUR_COLOR_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/drawble/BlurDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;Lcom/meizu/common/drawble/BlurDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/drawble/BlurDrawable$BlurState;
    .param p2, "x1"    # Lcom/meizu/common/drawble/BlurDrawable$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/common/drawble/BlurDrawable;-><init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;)V

    return-void
.end method

.method static synthetic access$000(IIF)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 16
    invoke-static {p0, p1, p2}, Lcom/meizu/common/drawble/BlurDrawable;->getUseColor(IIF)I

    move-result v0

    return v0
.end method

.method private static getDrawBlurRectMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    :try_start_0
    const-class v1, Landroid/graphics/Canvas;

    const-string/jumbo v2, "drawBlurRect"

    const/4 v3, 0x3

    .line 186
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 188
    return-object v1
.end method

.method private static getUseColor(IIF)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "alpha"    # I
    .param p2, "level"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v1, -0x1000000

    .line 206
    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v0, v1

    .line 207
    .local v0, "a":F
    sub-float v1, v2, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 208
    int-to-float v1, p1

    mul-float/2addr v1, v0

    div-float v0, v1, v2

    .line 209
    float-to-int v1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private updateUseColor()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 193
    sget-object v1, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 202
    return v4

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v1, v1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mBaseColor:I

    iget-object v2, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v2, v2, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mAlpha:I

    iget-object v3, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v3, v3, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    invoke-static {v1, v2, v3}, Lcom/meizu/common/drawble/BlurDrawable;->getUseColor(IIF)I

    move-result v0

    .line 195
    .local v0, "useColor":I
    iget-object v1, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v1, v1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mUseColor:I

    if-ne v1, v0, :cond_1

    .line 200
    const/4 v1, 0x0

    return v1

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iput v0, v1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mUseColor:I

    .line 197
    iget-object v1, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v1, v1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    return v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    sget-object v1, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v2, v2, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    :try_start_0
    sget-object v1, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v4, v4, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v4, v4, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v2, v2, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBlurLevel()F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v1, v1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mChangingConfigurations:I

    .line 181
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, -0x3

    .line 175
    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, -0x2

    .line 172
    return v0

    :sswitch_1
    const/4 v0, -0x1

    .line 170
    return v0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mMutated:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object p0

    .line 64
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 65
    new-instance v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v1, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    invoke-direct {v0, v1}, Lcom/meizu/common/drawble/BlurDrawable$BlurState;-><init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;)V

    iput-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mMutated:Z

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mAlpha:I

    if-ne v0, p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iput p1, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mAlpha:I

    .line 125
    invoke-direct {p0}, Lcom/meizu/common/drawble/BlurDrawable;->updateUseColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 129
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->invalidateSelf()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public setBlurLevel(F)V
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iput p1, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    .line 101
    invoke-direct {p0}, Lcom/meizu/common/drawble/BlurDrawable;->updateUseColor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 146
    sget-object v0, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 154
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mBaseColor:I

    if-eq v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iput p1, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mBaseColor:I

    .line 149
    invoke-direct {p0}, Lcom/meizu/common/drawble/BlurDrawable;->updateUseColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 141
    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->invalidateSelf()V

    .line 142
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable;->mState:Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    iget-object v0, v0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 163
    invoke-virtual {p0}, Lcom/meizu/common/drawble/BlurDrawable;->invalidateSelf()V

    .line 164
    return-void
.end method
