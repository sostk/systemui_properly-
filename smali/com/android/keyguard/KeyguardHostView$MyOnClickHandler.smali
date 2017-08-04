.class Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnClickHandler"
.end annotation


# instance fields
.field mKeyguardHostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 1
    .param p1, "hostView"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 519
    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    .line 520
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;->mKeyguardHostView:Ljava/lang/ref/WeakReference;

    .line 519
    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 527
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;->mKeyguardHostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    .line 528
    .local v0, "hostView":Lcom/android/keyguard/KeyguardHostView;
    if-nez v0, :cond_0

    .line 529
    const/4 v1, 0x0

    return v1

    .line 531
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    new-instance v1, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler$1;-><init>(Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 554
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->-get4(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->-get4(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 559
    :goto_0
    return v2

    .line 557
    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss()Z

    goto :goto_0

    .line 561
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method
