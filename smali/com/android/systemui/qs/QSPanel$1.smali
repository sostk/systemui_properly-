.class Lcom/android/systemui/qs/QSPanel$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
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
    .line 858
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get4(Lcom/android/systemui/qs/QSPanel;)Lcom/flyme/systemui/qs/DetailScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/qs/DetailScrollView;->removeAllViews()V

    .line 861
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->-wrap8(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 862
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->-set0(Lcom/android/systemui/qs/QSPanel;Z)Z

    .line 859
    return-void
.end method
