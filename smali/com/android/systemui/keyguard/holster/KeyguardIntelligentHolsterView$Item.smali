.class public Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;
.super Ljava/lang/Object;
.source "KeyguardIntelligentHolsterView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$LabelledItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field appWidgetPreviewId:I

.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field iconId:I

.field label:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->label:Ljava/lang/CharSequence;

    .line 513
    return-void
.end method


# virtual methods
.method getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 534
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :cond_1
    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method
