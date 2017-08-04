.class Lcom/meizu/media/music/KeyguardMusicView$2;
.super Ljava/lang/Object;
.source "KeyguardMusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicView;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicView;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 279
    const/4 v0, -0x1

    .line 280
    .local v0, "keyCode":I
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get8(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 281
    const/16 v0, 0x58

    .line 282
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap2(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 283
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2, v4}, Lcom/meizu/media/music/KeyguardMusicView;->-set1(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 284
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2, v5}, Lcom/meizu/media/music/KeyguardMusicView;->-set3(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 285
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2, v4}, Lcom/meizu/media/music/KeyguardMusicView;->-set4(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 315
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/media/music/KeyguardMusicController;->sendMediaButtonClick(I)V

    .line 278
    :cond_1
    return-void

    .line 286
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get6(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 287
    const/16 v0, 0x57

    .line 288
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap2(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 289
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2, v4}, Lcom/meizu/media/music/KeyguardMusicView;->-set1(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 290
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2, v5}, Lcom/meizu/media/music/KeyguardMusicView;->-set4(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 291
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2, v4}, Lcom/meizu/media/music/KeyguardMusicView;->-set3(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    goto :goto_0

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get7(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 293
    const/16 v0, 0x55

    goto :goto_0

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get4(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_6

    .line 295
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get4(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->ic_media_no_collection:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/meizu/media/music/KeyguardMusicController;->setCollected(Z)V

    goto :goto_0

    .line 299
    :cond_5
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get4(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->ic_media_collection:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/meizu/media/music/KeyguardMusicController;->setCollected(Z)V

    goto :goto_0

    .line 302
    :cond_6
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get5(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->setPlayMode()V

    .line 304
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getPlayMode()I

    move-result v1

    .line 306
    .local v1, "playmode":I
    if-nez v1, :cond_7

    .line 307
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get5(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->ic_media_loop:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 308
    :cond_7
    if-ne v1, v4, :cond_8

    .line 309
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get5(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->ic_media_single_loop:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 310
    :cond_8
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$2;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get5(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->ic_media_random_loop:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
