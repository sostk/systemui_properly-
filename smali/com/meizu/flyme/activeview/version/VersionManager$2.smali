.class Lcom/meizu/flyme/activeview/version/VersionManager$2;
.super Ljava/lang/Object;
.source "VersionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/version/VersionManager;->onCheckEnd(ILcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/version/VersionManager;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/version/VersionManager;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$2;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$2;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$2;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    move-result-object v0

    const-string/jumbo v1, "2.0.0"

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
