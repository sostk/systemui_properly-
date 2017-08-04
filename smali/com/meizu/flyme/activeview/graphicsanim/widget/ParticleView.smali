.class public Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
.super Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;
.source "ParticleView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V
    .locals 0
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
    .line 27
    .local p3, "Attrsbundle":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setRenderables(Ljava/util/List;)V
    .locals 5
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
    .line 32
    .local p1, "attrsBundle":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "filterBundle":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 33
    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 44
    :goto_1
    return-void

    .line 34
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "className"

    .line 35
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "className":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 33
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_2
    sget-object v4, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 42
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "className":Ljava/lang/String;
    :cond_3
    invoke-super {p0, v2}, Lcom/meizu/flyme/activeview/graphicsanim/widget/BaseGraphicsView;->setRenderables(Ljava/util/List;)V

    goto :goto_1
.end method
