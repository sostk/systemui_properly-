.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    .line 54
    return-void
.end method
