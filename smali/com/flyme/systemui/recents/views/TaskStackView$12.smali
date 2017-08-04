.class Lcom/flyme/systemui/recents/views/TaskStackView$12;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;->clipTaskViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flyme/systemui/recents/views/TaskView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$12;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/views/TaskView;)I
    .locals 2
    .param p1, "lhs"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "rhs"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 1609
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p2}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v1

    iget v1, v1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1610
    const/4 v0, 0x1

    return v0

    .line 1612
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 1608
    check-cast p1, Lcom/flyme/systemui/recents/views/TaskView;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/systemui/recents/views/TaskView;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/recents/views/TaskStackView$12;->compare(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/views/TaskView;)I

    move-result v0

    return v0
.end method
