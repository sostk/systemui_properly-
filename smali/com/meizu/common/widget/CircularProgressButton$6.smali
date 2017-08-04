.class Lcom/meizu/common/widget/CircularProgressButton$6;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$6;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$6;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton;->removeIcon()V

    .line 977
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$6;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$6;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$500(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$6;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 979
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$6;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 983
    return-void
.end method
