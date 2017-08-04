.class public Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;
.super Ljava/lang/Object;
.source "KeyguardWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$LabelledItem;,
        Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$LabelledItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field mItemConstructor:Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;, "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader<TItem;>;"
    .local p3, "itemConstructor":Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;, "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->mItemConstructor:Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;

    .line 20
    return-void
.end method


# virtual methods
.method protected getItems(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;, "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader<TItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const-string/jumbo v2, "categoryFilter"

    .line 31
    const/4 v3, 0x1

    .line 30
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "categoryFilter":I
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->putInstalledAppWidgets(Ljava/util/List;I)V

    .line 35
    return-object v1
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 8
    .param p4, "categoryFilter"    # I
    .param p5, "ignoreFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List",
            "<TItem;>;IZ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;, "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader<TItem;>;"
    .local p1, "appWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, "customExtras":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v5, 0x0

    .line 46
    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 48
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 51
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez p5, :cond_1

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v4, p4

    if-nez v4, :cond_1

    .line 48
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->mItemConstructor:Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;

    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->mContext:Landroid/content/Context;

    .line 56
    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 55
    :goto_2
    invoke-interface {v6, v7, v1, v4}, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$LabelledItem;

    .line 58
    .local v2, "item":Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$LabelledItem;, "TItem;"
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "item":Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$LabelledItem;, "TItem;"
    :cond_2
    move-object v4, v5

    .line 56
    goto :goto_2

    .line 45
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    return-void
.end method

.method putInstalledAppWidgets(Ljava/util/List;I)V
    .locals 6
    .param p2, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;, "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 37
    return-void
.end method
