.class Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->initSoundPool(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)V
    .locals 0

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    .line 1875
    return-void
.end method
