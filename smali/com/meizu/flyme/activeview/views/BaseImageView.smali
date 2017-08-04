.class public Lcom/meizu/flyme/activeview/views/BaseImageView;
.super Landroid/widget/ImageView;
.source "BaseImageView.java"


# instance fields
.field private mBlurLevel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/BaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/activeview/views/BaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/meizu/flyme/activeview/views/BaseImageView;->mBlurLevel:F

    .line 34
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/BaseImageView;->initGLBlurDrawable()V

    .line 35
    return-void
.end method

.method private initGLBlurDrawable()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method


# virtual methods
.method public getBlurLevel()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/meizu/flyme/activeview/views/BaseImageView;->mBlurLevel:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    return-void
.end method

.method public setBlurLevel(F)V
    .locals 0
    .param p1, "blurLevel"    # F

    .prologue
    .line 69
    return-void
.end method
