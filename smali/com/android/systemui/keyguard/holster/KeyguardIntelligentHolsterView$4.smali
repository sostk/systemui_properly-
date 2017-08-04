.class Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;
.super Landroid/os/AsyncTask;
.source "KeyguardIntelligentHolsterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-wrap2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    const-string/jumbo v1, "com.meizu.media.music.appwidget.MusicAppWidgetProvider_window"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-wrap0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-wrap1(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    .line 434
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 430
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get6(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "integer"    # Ljava/lang/Object;

    .prologue
    .line 438
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "integer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
