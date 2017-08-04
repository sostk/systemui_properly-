.class Lcom/flyme/systemui/recents/views/TaskView$2;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskView$2;->this$0:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView$2;->this$0:Lcom/flyme/systemui/recents/views/TaskView;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView$2;->this$0:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V

    .line 190
    return-void
.end method
