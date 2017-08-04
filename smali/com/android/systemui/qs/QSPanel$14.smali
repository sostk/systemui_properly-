.class Lcom/android/systemui/qs/QSPanel$14;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$14;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$14;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$14;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->-get9(Lcom/android/systemui/qs/QSPanel;)I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Lcom/android/systemui/qs/QSPanel;->-wrap10(Lcom/android/systemui/qs/QSPanel;ZIZ)V

    .line 1323
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1328
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1319
    return-void
.end method
