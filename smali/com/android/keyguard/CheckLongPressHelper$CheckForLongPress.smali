.class Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CheckLongPressHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/CheckLongPressHelper;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/keyguard/CheckLongPressHelper;->-get1(Lcom/android/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/keyguard/CheckLongPressHelper;->-get1(Lcom/android/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/keyguard/CheckLongPressHelper;->-get0(Lcom/android/keyguard/CheckLongPressHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/keyguard/CheckLongPressHelper;->-get1(Lcom/android/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/keyguard/CheckLongPressHelper;->-get1(Lcom/android/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/keyguard/CheckLongPressHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/CheckLongPressHelper;->-set0(Lcom/android/keyguard/CheckLongPressHelper;Z)Z

    goto :goto_0
.end method
