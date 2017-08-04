.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;
.super Ljava/lang/Object;
.source "MiniHeadsupComponent.java"

# interfaces
.implements Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;-><init>(Landroid/content/Context;Lcom/flyme/systemui/statusbar/policy/GameModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCallBack()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->-wrap0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V

    .line 51
    return-void
.end method
