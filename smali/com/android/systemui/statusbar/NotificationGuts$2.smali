.class Lcom/android/systemui/statusbar/NotificationGuts$2;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationGuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 115
    .local v0, "select":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-get5(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    return-void

    .line 114
    .end local v0    # "select":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "select":Z
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method
