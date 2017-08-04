.class Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;
.super Ljava/lang/Object;
.source "ScreenRecordControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->takeScreenRecord(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 57
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->val$enabled:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)Z

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    .line 59
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->running(Z)V

    goto :goto_0
.end method
