.class final Lcom/meizu/common/drawble/BlurDrawable$BlurState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/drawble/BlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlurState"
.end annotation


# instance fields
.field mAlpha:I

.field mBaseColor:I

.field mChangingConfigurations:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mLevel:F

.field mPaint:Landroid/graphics/Paint;

.field mUseColor:I


# direct methods
.method constructor <init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;)V
    .locals 4
    .param p1, "state"    # Lcom/meizu/common/drawble/BlurDrawable$BlurState;

    .prologue
    const/16 v3, 0xff

    const v2, -0x26000001

    const v1, 0x3f666666    # 0.9f

    .line 221
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 213
    iput v1, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    .line 215
    iput v3, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mAlpha:I

    .line 216
    iput v2, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mBaseColor:I

    .line 217
    invoke-static {v2, v3, v1}, Lcom/meizu/common/drawble/BlurDrawable;->access$000(IIF)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mUseColor:I

    .line 222
    if-nez p1, :cond_0

    .line 227
    sget-object v0, Lcom/meizu/common/drawble/BlurDrawable;->sDrawBlurRectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v0, p1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    iput v0, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mLevel:F

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    .line 225
    iget v0, p1, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mChangingConfigurations:I

    iput v0, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mChangingConfigurations:I

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/meizu/common/drawble/BlurDrawable$BlurState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/meizu/common/drawble/BlurDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/drawble/BlurDrawable;-><init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;Lcom/meizu/common/drawble/BlurDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 240
    new-instance v0, Lcom/meizu/common/drawble/BlurDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/drawble/BlurDrawable;-><init>(Lcom/meizu/common/drawble/BlurDrawable$BlurState;Lcom/meizu/common/drawble/BlurDrawable$1;)V

    return-object v0
.end method
