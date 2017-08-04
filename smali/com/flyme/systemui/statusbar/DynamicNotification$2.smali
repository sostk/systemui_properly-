.class final Lcom/flyme/systemui/statusbar/DynamicNotification$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DynamicNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification;->dealwithHeadsupcontent(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "val$view"    # Landroid/view/View;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->val$view:Landroid/view/View;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->target:Ljava/lang/ref/WeakReference;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->isCancel:Z

    .line 183
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->isCancel:Z

    .line 188
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->isCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$2;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 196
    const-string/jumbo v0, "DynamicNotification"

    const-string/jumbo v1, "restart animator"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method
