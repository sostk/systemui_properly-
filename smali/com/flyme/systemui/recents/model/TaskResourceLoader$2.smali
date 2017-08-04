.class Lcom/flyme/systemui/recents/model/TaskResourceLoader$2;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/model/TaskResourceLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/model/TaskResourceLoader;

.field final synthetic val$t:Lcom/flyme/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/model/TaskResourceLoader;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/model/TaskResourceLoader;
    .param p2, "val$t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader$2;->this$0:Lcom/flyme/systemui/recents/model/TaskResourceLoader;

    iput-object p2, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader$2;->val$t:Lcom/flyme/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader$2;->val$t:Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/Task;->notifyTaskDataLoaded()V

    .line 302
    return-void
.end method
