.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;
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
    .line 137
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-get0(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 142
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method
