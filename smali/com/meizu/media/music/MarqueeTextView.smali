.class public Lcom/meizu/media/music/MarqueeTextView;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/music/MarqueeTextView$1;
    }
.end annotation


# instance fields
.field private mCurrentScrollInterval:I

.field private mCurrentScrollPosition:I

.field private mEndPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstDraw:Z

.field private mIsScrolling:Z

.field private mScrollTickerRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/CharSequence;

.field private mTextViewWidth:I

.field private mTextWidth:I


# direct methods
.method static synthetic -get0(Lcom/meizu/media/music/MarqueeTextView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollInterval:I

    return v0
.end method

.method static synthetic -get1(Lcom/meizu/media/music/MarqueeTextView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollPosition:I

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/media/music/MarqueeTextView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mEndPosition:I

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/media/music/MarqueeTextView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsScrolling:Z

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/media/music/MarqueeTextView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/meizu/media/music/MarqueeTextView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextViewWidth:I

    return v0
.end method

.method static synthetic -get6(Lcom/meizu/media/music/MarqueeTextView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/media/music/MarqueeTextView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/media/music/MarqueeTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/media/music/MarqueeTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/MarqueeTextView;->getTextWidth()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollInterval:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsScrolling:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsFirstDraw:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/meizu/media/music/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/music/MarqueeTextView$1;-><init>(Lcom/meizu/media/music/MarqueeTextView;)V

    iput-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method private getTextWidth()V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/meizu/media/music/MarqueeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 92
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/meizu/media/music/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextWidth:I

    .line 94
    invoke-virtual {p0}, Lcom/meizu/media/music/MarqueeTextView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextViewWidth:I

    .line 90
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextWidth:I

    iget v1, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextViewWidth:I

    if-le v0, v1, :cond_0

    .line 176
    iput-boolean v2, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsScrolling:Z

    .line 177
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/MarqueeTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 178
    iput v2, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollPosition:I

    .line 179
    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollPosition:I

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/music/MarqueeTextView;->scrollTo(II)V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-boolean v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsFirstDraw:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/meizu/media/music/MarqueeTextView;->getTextWidth()V

    .line 75
    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextWidth:I

    iget v1, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextViewWidth:I

    if-le v0, v1, :cond_1

    .line 76
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/MarqueeTextView;->setGravity(I)V

    .line 77
    invoke-virtual {p0, v2, v2}, Lcom/meizu/media/music/MarqueeTextView;->scrollTo(II)V

    .line 81
    :goto_0
    iput v2, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollPosition:I

    .line 82
    iget v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollPosition:I

    iget v1, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/media/music/MarqueeTextView;->mTextViewWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x12

    iput v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mEndPosition:I

    .line 83
    iput-boolean v2, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsFirstDraw:Z

    .line 68
    :cond_0
    return-void

    .line 79
    :cond_1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/MarqueeTextView;->setGravity(I)V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 168
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/meizu/media/music/MarqueeTextView;->mText:Ljava/lang/CharSequence;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsFirstDraw:Z

    .line 165
    :cond_0
    return-void
.end method

.method public setScrollState(Z)V
    .locals 1
    .param p1, "scrollState"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsScrolling:Z

    .line 159
    iget-boolean v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsScrolling:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/MarqueeTextView;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public startScrollSoon()V
    .locals 4

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mIsScrolling:Z

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mCurrentScrollPosition:I

    .line 140
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/MarqueeTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 141
    iget-object v0, p0, Lcom/meizu/media/music/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/media/music/MarqueeTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method

.method public stopScroll()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/meizu/media/music/MarqueeTextView;->reset()V

    .line 153
    return-void
.end method
