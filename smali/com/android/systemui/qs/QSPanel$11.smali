.class Lcom/android/systemui/qs/QSPanel$11;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/flyme/systemui/qs/DetailScrollView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->setDetailWrapper(Landroid/view/View;)V
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
    .line 1162
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$11;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomOverscrolled()V
    .locals 0

    .prologue
    .line 1164
    return-void
.end method

.method public onEmptySpaceClicked()V
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$11;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 1170
    return-void
.end method
