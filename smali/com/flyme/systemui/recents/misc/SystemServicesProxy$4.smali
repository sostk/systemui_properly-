.class Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killAllTasksAsync(Landroid/content/Context;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isDemo:Z

.field final synthetic val$targetID:[I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;[IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$targetID"    # [I
    .param p4, "val$isDemo"    # Z

    .prologue
    .line 377
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->val$targetID:[I

    iput-boolean p4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->val$isDemo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->val$targetID:[I

    iget-boolean v3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;->val$isDemo:Z

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->-wrap1(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Ljava/lang/Runnable;[IZ)V

    .line 379
    return-void
.end method
