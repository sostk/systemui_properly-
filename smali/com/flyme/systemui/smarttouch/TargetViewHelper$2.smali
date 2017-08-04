.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;
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
    .line 165
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-get0(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method
