.class Lcom/flyme/systemui/recents/FlymeRecents$5;
.super Ljava/lang/Object;
.source "FlymeRecents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/FlymeRecents;
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
    .line 285
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$5;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$5;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->toggleRecents()V

    .line 287
    return-void
.end method
