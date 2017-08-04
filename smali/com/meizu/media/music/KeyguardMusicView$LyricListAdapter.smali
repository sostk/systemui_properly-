.class Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyguardMusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicView;


# direct methods
.method public constructor <init>(Lcom/meizu/media/music/KeyguardMusicView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicView;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 758
    iput-object p2, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->mContext:Landroid/content/Context;

    .line 757
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    .line 778
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 777
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 785
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    move-object v1, p2

    .line 795
    check-cast v1, Lcom/meizu/media/music/MarqueeTextView;

    .line 796
    .local v1, "tv":Lcom/meizu/media/music/MarqueeTextView;
    if-nez v1, :cond_0

    .line 797
    new-instance v1, Lcom/meizu/media/music/MarqueeTextView;

    .end local v1    # "tv":Lcom/meizu/media/music/MarqueeTextView;
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/media/music/MarqueeTextView;-><init>(Landroid/content/Context;)V

    .line 798
    .restart local v1    # "tv":Lcom/meizu/media/music/MarqueeTextView;
    invoke-virtual {v1, v5}, Lcom/meizu/media/music/MarqueeTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 799
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/meizu/media/music/MarqueeTextView;->setGravity(I)V

    .line 800
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->lyric_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/music/MarqueeTextView;->setTextColor(I)V

    .line 801
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->lyric_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/meizu/media/music/MarqueeTextView;->setTextSize(IF)V

    .line 802
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 803
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v3}, Lcom/meizu/media/music/KeyguardMusicView;->-get13(Lcom/meizu/media/music/KeyguardMusicView;)I

    move-result v3

    .line 802
    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/meizu/media/music/MarqueeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    invoke-virtual {v1, v5}, Lcom/meizu/media/music/MarqueeTextView;->setSingleLine(Z)V

    .line 806
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/music/MarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 808
    invoke-virtual {p0, p1}, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 809
    .local v0, "lrc":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/meizu/media/music/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public setLrcContent(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p1, "content":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 763
    if-eqz p1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 766
    :cond_0
    const-string/jumbo v0, "KeyguardMusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLrcContent mLrcList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->notifyDataSetChanged()V

    .line 761
    return-void
.end method
