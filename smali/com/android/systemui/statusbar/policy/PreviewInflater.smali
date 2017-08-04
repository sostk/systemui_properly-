.class public Lcom/android/systemui/statusbar/policy/PreviewInflater;
.super Ljava/lang/Object;
.source "PreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    return-void
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 81
    new-instance v1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)V

    .line 82
    .local v1, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 84
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/high16 v6, 0x10000

    .line 83
    invoke-virtual {v3, p1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 86
    return-object v7

    .line 90
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 89
    const v6, 0x10080

    .line 88
    invoke-virtual {v3, p1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 91
    .local v4, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    return-object v7

    .line 94
    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_3

    .line 95
    :cond_2
    return-object v7

    .line 97
    :cond_3
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 98
    :cond_4
    return-object v7

    .line 100
    :cond_5
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.android.keyguard.layout"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, "layoutId":I
    if-nez v2, :cond_6

    .line 102
    return-object v7

    .line 104
    :cond_6
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 105
    iput v2, v1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    .line 106
    return-object v1
.end method

.method private inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 7
    .param p1, "widgetInfo"    # Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "widgetView":Landroid/view/View;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    .line 69
    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    .line 68
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "appContext":Landroid/content/Context;
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    check-cast v1, Landroid/view/LayoutInflater;

    .line 72
    .local v1, "appInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    iget v4, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "appInflater":Landroid/view/LayoutInflater;
    .end local v3    # "widgetView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 74
    .restart local v3    # "widgetView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PreviewInflater"

    const-string/jumbo v5, "Error creating widget view"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 113
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    .line 112
    invoke-virtual {v1, p1, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 115
    return v3

    .line 118
    :cond_0
    const v4, 0x10080

    .line 117
    invoke-virtual {v1, p1, v4, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 120
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    :cond_1
    return v3
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p0, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 130
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 130
    if-eqz v2, :cond_0

    .line 132
    const/4 v2, 0x0

    return v2

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v1

    .line 53
    .local v1, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    if-nez v1, :cond_0

    .line 54
    return-object v4

    .line 56
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_1

    .line 58
    return-object v4

    .line 60
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    .local v0, "container":Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    .line 62
    return-object v0
.end method
