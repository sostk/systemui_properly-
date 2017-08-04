.class Lcom/android/systemui/qs/QSTileView$1;
.super Ljava/lang/Object;
.source "QSTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTileView;->recreateLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSTileView;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView$1;->this$0:Lcom/android/systemui/qs/QSTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView$1;->this$0:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileView;->-get0(Lcom/android/systemui/qs/QSTileView;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
