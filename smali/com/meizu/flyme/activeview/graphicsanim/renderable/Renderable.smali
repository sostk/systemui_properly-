.class public Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
.super Ljava/lang/Object;
.source "Renderable.java"


# static fields
.field public static final ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final ATTR_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final ATTR_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final ATTR_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final ATTR_X:Ljava/lang/String; = "x"

.field public static final ATTR_Y:Ljava/lang/String; = "y"

.field public static CLASS_NAME:Ljava/lang/String;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mID:Ljava/lang/String;

.field protected mScaleX:F

.field protected mScaleY:F

.field protected mTranslationX:F

.field protected mTranslationY:F

.field protected mX:F

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FF)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mScaleX:F

    .line 37
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mScaleY:F

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mScaleX:F

    .line 37
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mScaleY:F

    .line 40
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->init()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->updateAttributes(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    iput-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 66
    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mTranslationY:F

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mX:F

    .line 48
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mY:F

    .line 49
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public printArray(Ljava/lang/String;[F)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # [F

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    .line 140
    if-lt v0, v2, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 141
    :cond_0
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", "

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mID:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mScaleX:F

    .line 98
    iput p2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mScaleY:F

    .line 99
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0
    .param p1, "translationX"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mTranslationX:F

    .line 86
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mTranslationY:F

    .line 78
    return-void
.end method

.method public setTranslationY(Ljava/lang/Float;)V
    .locals 1
    .param p1, "translationY"    # Ljava/lang/Float;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mTranslationY:F

    .line 70
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 89
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mX:F

    .line 90
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mY:F

    .line 94
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "deltaTime"    # F

    .prologue
    .line 121
    return-void
.end method

.method public update(FF)V
    .locals 0
    .param p1, "deltaTime"    # F
    .param p2, "wind"    # F

    .prologue
    .line 117
    return-void
.end method

.method public updateAttributes(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "id"

    .line 59
    iget-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mID:Ljava/lang/String;

    const-string/jumbo v0, "x"

    .line 60
    iget v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mX:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mX:F

    const-string/jumbo v0, "y"

    .line 61
    iget v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mY:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->mY:F

    goto :goto_0
.end method
