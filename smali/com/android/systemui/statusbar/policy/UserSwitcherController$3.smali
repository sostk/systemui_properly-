.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final USER_SETTINGS_INTENT:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    .line 478
    return-void
.end method


# virtual methods
.method public cleanupDetailView()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 489
    instance-of v1, p2, Lcom/android/systemui/qs/tiles/UserDetailView;

    if-nez v1, :cond_0

    .line 490
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/android/systemui/qs/tiles/UserDetailView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;

    move-result-object v0

    .line 491
    .local v0, "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/UserDetailView;->createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 495
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UserDetailView;->refreshAdapter()V

    .line 496
    return-object v0

    .end local v0    # "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    :cond_0
    move-object v0, p2

    .line 493
    check-cast v0, Lcom/android/systemui/qs/tiles/UserDetailView;

    .restart local v0    # "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method
