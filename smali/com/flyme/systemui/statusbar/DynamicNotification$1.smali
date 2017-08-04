.class final Lcom/flyme/systemui/statusbar/DynamicNotification$1;
.super Ljava/lang/Object;
.source "DynamicNotification.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification;->dealwithHeadsupcontent(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
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
    .line 152
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$1;->val$view:Landroid/view/View;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$1;->target:Ljava/lang/ref/WeakReference;

    .line 152
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$1;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$1;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 163
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 164
    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    .line 165
    const-string/jumbo v0, "DynamicNotification"

    const-string/jumbo v1, "restart animation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 170
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 156
    return-void
.end method
