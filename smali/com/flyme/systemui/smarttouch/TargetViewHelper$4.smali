.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;->animateOnUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-get1(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->LEFT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-wrap0(Lcom/flyme/systemui/smarttouch/TargetViewHelper;Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    .line 100
    :cond_0
    return-void
.end method
