.class Lcom/flyme/systemui/recents/views/TaskStackView$3;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/flyme/systemui/recents/model/TaskStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$3;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView$3;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 159
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView$3;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 161
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->startNoUserInteractionAnimation()V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method
