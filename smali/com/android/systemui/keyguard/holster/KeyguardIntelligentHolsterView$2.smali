.class Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardIntelligentHolsterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$2;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.meizu.media.music.back"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string/jumbo v1, "KeyguardIntelligentHolsterView"

    const-string/jumbo v2, "yingchun onReceive com.meizu.media.music.back"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string/jumbo v1, "music_extra"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, "type":I
    if-ne v0, v3, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$2;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get3(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 204
    .end local v0    # "type":I
    :cond_0
    return-void
.end method
