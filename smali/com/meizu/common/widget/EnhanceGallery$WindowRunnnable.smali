.class Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 2700
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p2, "x1"    # Lcom/meizu/common/widget/EnhanceGallery$1;

    .prologue
    .line 2700
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1900(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->mOriginalAttachCount:I

    .line 2705
    return-void
.end method

.method public sameWindow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2708
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceGallery;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$2000(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
