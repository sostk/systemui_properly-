.class abstract Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CallBackAnimationDrawable"
.end annotation


# instance fields
.field private nowFrame:I

.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouchView;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 193
    const/4 v0, 0x2

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    .line 191
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    goto :goto_0
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public run()V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 202
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v0

    iget v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->-set0(Lcom/flyme/systemui/smarttouch/SmartTouchView;I)I

    .line 203
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 204
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    .line 200
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->onFinished()V

    goto :goto_0
.end method
