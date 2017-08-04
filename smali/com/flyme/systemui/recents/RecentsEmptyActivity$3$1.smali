.class Lcom/flyme/systemui/recents/RecentsEmptyActivity$3$1;
.super Ljava/lang/Object;
.source "RecentsEmptyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$3$1;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 175
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->-wrap0()V

    .line 174
    return-void
.end method
