.class Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const v5, 0x3d8f5c29    # 0.07f

    const/4 v4, 0x0

    .line 148
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get7(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get6(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-wrap0(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get7(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v2

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get6(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 157
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2, v4}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-set2(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;Z)Z

    .line 158
    return-void

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get7(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v2

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get6(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    sub-int v1, v2, v3

    .line 163
    .local v1, "endPosition":I
    add-int/lit8 v0, v1, -0x64

    .line 167
    .local v0, "endPhase":I
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-set0(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get1(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-set1(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    .line 192
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get3(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 194
    return-void

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v2

    .line 162
    const/16 v3, 0x64

    .line 173
    if-ge v2, v3, :cond_4

    .line 174
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    rsub-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-set0(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_0

    .line 177
    :cond_4
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 178
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-set0(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_0

    .line 182
    :cond_5
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2, v6}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-set0(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_0

    .line 201
    :cond_6
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v2

    if-le v2, v1, :cond_7

    .line 202
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2, v4}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-set2(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;Z)Z

    .line 212
    :cond_7
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get2(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get4(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get5(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v4}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get0(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void
.end method
