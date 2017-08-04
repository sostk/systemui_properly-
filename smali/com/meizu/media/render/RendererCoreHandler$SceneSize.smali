.class public Lcom/meizu/media/render/RendererCoreHandler$SceneSize;
.super Ljava/lang/Object;
.source "RendererCoreHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/render/RendererCoreHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SceneSize"
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/meizu/media/render/RendererCoreHandler;

.field width:I


# direct methods
.method public constructor <init>(Lcom/meizu/media/render/RendererCoreHandler;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/render/RendererCoreHandler;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;->this$0:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p2, p0, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;->width:I

    .line 33
    iput p3, p0, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;->height:I

    .line 31
    return-void
.end method
