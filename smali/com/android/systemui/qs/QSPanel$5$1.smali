.class Lcom/android/systemui/qs/QSPanel$5$1;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel$5;->onAnnouncementRequested(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSPanel$5;

.field final synthetic val$str:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel$5;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/QSPanel$5;
    .param p2, "val$str"    # Ljava/lang/CharSequence;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$5$1;->this$1:Lcom/android/systemui/qs/QSPanel$5;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$5$1;->val$str:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5$1;->this$1:Lcom/android/systemui/qs/QSPanel$5;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5$1;->val$str:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 466
    return-void
.end method
