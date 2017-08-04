.class Lcom/android/systemui/statusbar/BaseStatusBar$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$v:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$v"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$v:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1244
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$v:Lcom/android/systemui/statusbar/NotificationGuts;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$v:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$v:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowSetting(Z)V

    .line 1243
    :cond_0
    return-void
.end method
