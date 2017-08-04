.class public Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;
.super Ljava/lang/Object;
.source "AbstractBlurRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field private mFilterColor:I

.field private mIntensity:F

.field private mInvalidate:Z

.field private mLevel:F

.field private mPassCount:I

.field private mRadius:I

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mLevel:F

    const/4 v0, 0x4

    .line 130
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mRadius:I

    const v0, 0x3d75c28f    # 0.06f

    .line 131
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mScale:F

    const/4 v0, 0x2

    .line 132
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mPassCount:I

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mFilterColor:I

    .line 134
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mIntensity:F

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    .line 138
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z
    .locals 1
    .param p1, "p"    # Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    .line 208
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getLevel()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->setLevel(F)V

    .line 209
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getRadius()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->setRadius(I)V

    .line 210
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->setScale(F)V

    .line 211
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getPassCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->setPassCount(I)V

    .line 212
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->setIntensity(F)V

    .line 213
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getFilterColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->setFilterColor(I)V

    .line 214
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    return v0
.end method

.method public dump()V
    .locals 3

    .prologue
    const-string/jumbo v0, "glrenderer"

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "glrenderer"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "glrenderer"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "glrenderer"

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mPassCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "glrenderer"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mIntensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public getFilterColor()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mFilterColor:I

    return v0
.end method

.method public getIntensity()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mIntensity:F

    return v0
.end method

.method public getLevel()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mLevel:F

    return v0
.end method

.method public getPassCount()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mPassCount:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mRadius:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mScale:F

    return v0
.end method

.method public setFilterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 188
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mFilterColor:I

    if-ne v0, p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mFilterColor:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    goto :goto_0
.end method

.method public setIntensity(F)V
    .locals 0
    .param p1, "intensity"    # F

    .prologue
    .line 199
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mIntensity:F

    .line 200
    return-void
.end method

.method public setLevel(F)V
    .locals 2
    .param p1, "level"    # F

    .prologue
    .line 141
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mLevel:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3ba3d70a    # 0.005f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 142
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mLevel:F

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    .line 145
    :cond_0
    return-void
.end method

.method public setPassCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 177
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mPassCount:I

    if-ne v0, p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mPassCount:I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    goto :goto_0
.end method

.method public setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mRadius:I

    if-ne v0, p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mRadius:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    const v1, 0x3a83126f    # 0.001f

    const v0, 0x3f8147ae    # 1.01f

    .line 164
    invoke-static {p1, v1, v0}, Lcom/meizu/common/renderer/RendererUtils;->clip(FFF)F

    move-result p1

    .line 165
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mScale:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 166
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mScale:F

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->mInvalidate:Z

    .line 169
    :cond_0
    return-void
.end method
