.class Lcom/flyme/systemui/recents/views/TaskViewClearAll$1;
.super Ljava/lang/Object;
.source "TaskViewClearAll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/TaskViewClearAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$1;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$1;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->updateMemCircle()V

    .line 43
    return-void
.end method
