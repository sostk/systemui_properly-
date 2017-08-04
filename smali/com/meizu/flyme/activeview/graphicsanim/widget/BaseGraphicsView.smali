.class public Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;
.super Landroid/view/View;
.source "BaseGraphicsView.java"


# instance fields
.field private mAnimationPaused:Z

.field private mAnimationStarted:Z

.field mFrameRateCounter:Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;

.field protected mRenderables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "attrsBundle":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mRenderables:Ljava/util/List;

    .line 25
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    .line 27
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationPaused:Z

    .line 29
    new-instance v0, Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;

    invoke-direct {v0}, Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mFrameRateCounter:Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;

    .line 47
    invoke-virtual {p0, p3}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->setRenderables(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method private addRenderable(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "renderableAttrs"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 57
    .local v1, "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    if-nez p1, :cond_1

    .line 72
    .end local v1    # "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    :cond_1
    const-string/jumbo v2, "className"

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 62
    sget-object v2, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 64
    sget-object v2, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    .end local v1    # "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    :goto_1
    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mRenderables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .restart local v1    # "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    :cond_2
    return-void

    .line 63
    :cond_3
    new-instance v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;

    .end local v1    # "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    invoke-direct {v1, p1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;-><init>(Landroid/os/Bundle;)V

    .local v1, "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    goto :goto_1

    .line 65
    .local v1, "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    :cond_4
    new-instance v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;

    .end local v1    # "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    invoke-direct {v1, p1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;-><init>(Landroid/os/Bundle;)V

    .local v1, "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    goto :goto_1
.end method


# virtual methods
.method public isPaused()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationPaused:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-boolean v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    if-nez v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mFrameRateCounter:Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;

    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;->timeStep()F

    move-result v0

    .line 81
    .local v0, "deltaTime":F
    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mRenderables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 89
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationPaused:Z

    if-nez v3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->invalidate()V

    goto :goto_0

    .line 81
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;

    .line 82
    .local v2, "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->getAlpha()F

    move-result v3

    const v5, 0x358637bd    # 1.0E-6f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {v2, p1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {v2, v0}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->update(F)V

    goto :goto_1

    :cond_4
    move v3, v4

    .line 82
    goto :goto_2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationPaused:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationPaused:Z

    .line 126
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->invalidate()V

    goto :goto_0
.end method

.method public setRenderables(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "attrsBundle":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p1, :cond_1

    .line 171
    :cond_0
    return-void

    .line 154
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x0

    .line 155
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 156
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 155
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "id"

    .line 158
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    invoke-virtual {p0, v2, v0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->updateRenderable(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->addRenderable(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    .line 101
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 100
    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationStarted:Z

    .line 110
    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mAnimationPaused:Z

    .line 112
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->invalidate()V

    .line 113
    return-void
.end method

.method public updateRenderable(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 181
    if-nez p2, :cond_1

    .line 191
    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    .line 182
    .local v0, "j":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mRenderables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->mRenderables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;

    .line 184
    .local v1, "renderable":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v1, p2}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->updateAttributes(Landroid/os/Bundle;)V

    .line 187
    const/4 v2, 0x1

    return v2
.end method
