.class Lcom/android/systemui/statusbar/phone/PanelView$6$1;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PanelView$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PanelView$6;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PanelView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(Z)V

    .line 189
    return-void
.end method
