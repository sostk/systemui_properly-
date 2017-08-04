.class Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoudPoolHelper"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsFinishedLoad:Z

.field public mSoundPool:Landroid/media/SoundPool;

.field public mVoiceID:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/ScrollTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/ScrollTextView$1;

    .prologue
    .line 1843
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public initSoundPool(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1850
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mContext:Landroid/content/Context;

    .line 1851
    iput-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    .line 1856
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 1865
    new-instance v2, Landroid/media/SoundPool;

    invoke-direct {v2, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 1868
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    new-instance v3, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;-><init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)V

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1879
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/meizu/common/R$raw;->mc_picker_scrolled:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    return v2

    .line 1857
    :cond_0
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 1858
    .local v1, "builder":Landroid/media/SoundPool$Builder;
    invoke-virtual {v1, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 1860
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1861
    .local v0, "attrBuilder":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 1862
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 1863
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0
.end method

.method public onAttachedToWindow(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1898
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    if-eqz v0, :cond_0

    .line 1901
    :goto_0
    return-void

    .line 1899
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->initSoundPool(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mVoiceID:I

    goto :goto_0
.end method

.method public play()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1883
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    if-nez v0, :cond_1

    .line 1886
    :cond_0
    :goto_0
    return-void

    .line 1883
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mVoiceID:I

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1889
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    if-nez v0, :cond_0

    .line 1895
    :goto_0
    return-void

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mVoiceID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 1891
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1892
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    const/4 v0, 0x0

    .line 1893
    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mContext:Landroid/content/Context;

    goto :goto_0
.end method
