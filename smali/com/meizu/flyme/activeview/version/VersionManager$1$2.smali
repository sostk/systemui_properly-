.class Lcom/meizu/flyme/activeview/version/VersionManager$1$2;
.super Ljava/lang/Object;
.source "VersionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/version/VersionManager$1;->onFail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/version/VersionManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$2;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iput-object p2, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$2;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$2;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    move-result-object v0

    const-string/jumbo v1, "2.0.0"

    iget-object v2, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$2;->val$filePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
