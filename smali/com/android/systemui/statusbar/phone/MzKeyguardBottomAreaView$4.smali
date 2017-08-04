.class Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;
.super Ljava/lang/Object;
.source "MzKeyguardBottomAreaView.java"

# interfaces
.implements Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardNotOccluded()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAlpha(F)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 705
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 704
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 701
    return-void
.end method

.method public onNotificationChange(Z)V
    .locals 0
    .param p1, "hasNotifications"    # Z

    .prologue
    .line 710
    return-void
.end method

.method public onShowWallpaperText(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 720
    return-void
.end method

.method public onWallpaperFunctionEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 715
    return-void
.end method

.method public onWallpaperTextChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 696
    return-void
.end method
