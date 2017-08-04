.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideAlwaysTextAndIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$finalInfo:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$finalInfo"    # Landroid/os/Bundle;

    .prologue
    .line 6829
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->val$finalInfo:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 6838
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v2, 0x7f06000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6839
    .local v0, "animIn":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get45(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6840
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->val$finalInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 6841
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->val$finalInfo:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Bundle;)V

    .line 6837
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 6834
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 6831
    return-void
.end method
