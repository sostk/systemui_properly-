.class Lcom/flyme/systemui/recents/views/RecentsView$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView;->bindClearAll(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$1;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$1;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->onClearAll()V

    .line 359
    return-void
.end method
