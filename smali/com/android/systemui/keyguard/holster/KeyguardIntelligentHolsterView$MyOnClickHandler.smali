.class Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "KeyguardIntelligentHolsterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnClickHandler"
.end annotation


# instance fields
.field mThis:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 1
    .param p1, "hostView"    # Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;->mThis:Ljava/lang/ref/WeakReference;

    .line 113
    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
