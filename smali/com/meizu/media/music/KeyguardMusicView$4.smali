.class Lcom/meizu/media/music/KeyguardMusicView$4;
.super Ljava/lang/Object;
.source "KeyguardMusicView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHighlightIndex:I

.field private mTime:I

.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicView;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicView;

    .prologue
    const/4 v0, -0x1

    .line 887
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->mHighlightIndex:I

    .line 890
    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->mTime:I

    .line 887
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v10, 0x0

    .line 900
    add-int/lit8 v7, p3, 0x1

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p2

    add-int/lit8 v3, v7, -0x1

    .line 901
    .local v3, "highlightIndex":I
    const-string/jumbo v7, "KeyguardMusicView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mHighlightIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->mHighlightIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 902
    const-string/jumbo v9, ", highlightIndex = "

    .line 901
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget v7, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->mHighlightIndex:I

    if-eq v7, v3, :cond_3

    .line 904
    iput v3, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->mHighlightIndex:I

    .line 905
    sub-int v5, v3, p2

    .line 906
    .local v5, "index":I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 907
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 908
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 909
    .local v0, "child":Landroid/widget/TextView;
    if-ne v4, v5, :cond_2

    .line 910
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 911
    instance-of v7, v0, Lcom/meizu/media/music/MarqueeTextView;

    if-eqz v7, :cond_1

    .line 913
    :try_start_0
    iget-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap0(Lcom/meizu/media/music/KeyguardMusicView;Landroid/graphics/Typeface;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 914
    const-string/jumbo v7, "system/fonts/Roboto-Regular.ttf"

    invoke-static {v7}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 916
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 917
    .local v6, "tp":Landroid/text/TextPaint;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .end local v6    # "tp":Landroid/text/TextPaint;
    :goto_1
    iget-object v8, p0, Lcom/meizu/media/music/KeyguardMusicView$4;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    move-object v7, v0

    check-cast v7, Lcom/meizu/media/music/MarqueeTextView;

    invoke-static {v8, v7}, Lcom/meizu/media/music/KeyguardMusicView;->-set0(Lcom/meizu/media/music/KeyguardMusicView;Lcom/meizu/media/music/MarqueeTextView;)Lcom/meizu/media/music/MarqueeTextView;

    .line 922
    check-cast v0, Lcom/meizu/media/music/MarqueeTextView;

    .end local v0    # "child":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/meizu/media/music/MarqueeTextView;->startScrollSoon()V

    .line 907
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 918
    .restart local v0    # "child":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 919
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 925
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 926
    instance-of v7, v0, Lcom/meizu/media/music/MarqueeTextView;

    if-eqz v7, :cond_1

    .line 927
    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v7, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 928
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 929
    .restart local v6    # "tp":Landroid/text/TextPaint;
    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 930
    check-cast v0, Lcom/meizu/media/music/MarqueeTextView;

    .end local v0    # "child":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/meizu/media/music/MarqueeTextView;->stopScroll()V

    goto :goto_2

    .line 899
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "tp":Landroid/text/TextPaint;
    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 893
    return-void
.end method
