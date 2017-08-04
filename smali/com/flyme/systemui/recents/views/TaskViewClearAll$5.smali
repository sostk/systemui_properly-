.class Lcom/flyme/systemui/recents/views/TaskViewClearAll$5;
.super Ljava/lang/Object;
.source "TaskViewClearAll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskViewClearAll;->startAnimationWhenTaskRemoved()V
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
    .line 215
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$5;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$5;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mDuringTaskRemoved:Z

    .line 217
    return-void
.end method
