.class Lcom/flyme/systemui/recents/FlymeRecents$8;
.super Ljava/lang/Object;
.source "FlymeRecents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/FlymeRecents;->toggleRecents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$8;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$8;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->startEnterAnimation()V

    .line 457
    return-void
.end method
