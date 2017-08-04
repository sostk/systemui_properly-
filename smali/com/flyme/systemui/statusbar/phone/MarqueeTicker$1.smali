.class Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;
.super Ljava/lang/Object;
.source "MarqueeTicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->-get0(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->-get0(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mSegment:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    iget-boolean v0, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->-wrap1(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    .line 172
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->-wrap2(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->-wrap0(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    goto :goto_0
.end method
