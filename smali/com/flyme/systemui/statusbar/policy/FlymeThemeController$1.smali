.class Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeThemeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.meizu.font.change"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->-get0(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 42
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->-get0(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {v1, v3, v4}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshThemeFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    goto :goto_0

    .line 45
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "viewGroup$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->clearAppCache()V

    .line 46
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->-get0(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "viewGroup$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 47
    .restart local v1    # "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshResource(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 38
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
