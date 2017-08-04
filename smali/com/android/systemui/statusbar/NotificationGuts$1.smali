.class Lcom/android/systemui/statusbar/NotificationGuts$1;
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
    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-wrap0(Lcom/android/systemui/statusbar/NotificationGuts;)I

    move-result v0

    .line 72
    .local v0, "appUid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-get6(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetViewState()V

    .line 74
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-get0(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-get1(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->-set0(Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 69
    .end local v0    # "appUid":I
    :cond_0
    return-void

    .line 78
    .restart local v0    # "appUid":I
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-get2(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-get3(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-get4(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
