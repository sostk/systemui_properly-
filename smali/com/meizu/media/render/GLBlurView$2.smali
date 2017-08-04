.class Lcom/meizu/media/render/GLBlurView$2;
.super Ljava/lang/Object;
.source "GLBlurView.java"

# interfaces
.implements Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/render/GLBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/render/GLBlurView;


# direct methods
.method constructor <init>(Lcom/meizu/media/render/GLBlurView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/render/GLBlurView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/meizu/media/render/GLBlurView$2;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawEndFrame()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onDrawFirstFrame()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
