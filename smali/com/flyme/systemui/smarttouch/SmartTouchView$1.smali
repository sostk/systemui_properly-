.class Lcom/flyme/systemui/smarttouch/SmartTouchView$1;
.super Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchView;->bindAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;Lcom/flyme/systemui/smarttouch/SmartTouchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouchView;
    .param p2, "this$0_1"    # Lcom/flyme/systemui/smarttouch/SmartTouchView;

    .prologue
    .line 173
    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->-get1(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->-set1(Lcom/flyme/systemui/smarttouch/SmartTouchView;Lcom/flyme/systemui/smarttouch/SmartTouchView$State;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 177
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setImageResource(I)V

    .line 175
    return-void
.end method
