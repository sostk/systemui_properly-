.class public Lcom/meizu/sharewidget/adapter/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilterLastUsed:Z

.field private mIconDpi:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialIntents:[Landroid/content/Intent;

.field private mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/sharewidget/utils/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "launchedFromUid"    # I
    .param p5, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/sharewidget/utils/DisplayResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/sharewidget/utils/DisplayResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v1, -0x1

    .line 47
    iput v1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mLastChosenPosition:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mContext:Landroid/content/Context;

    .line 53
    iget-object v1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 54
    iput-object p3, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mList:Ljava/util/List;

    .line 55
    iget-object v1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mIconDpi:I

    .line 57
    iput-object p2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mIntent:Landroid/content/Intent;

    .line 58
    iput p4, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mLaunchedFromUid:I

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 142
    :try_start_0
    iget v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .line 144
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getItem(I)Lcom/meizu/sharewidget/utils/DisplayResolveInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->getItem(I)Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 105
    return-wide v0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 166
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->getItem(I)Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-result-object v0

    .line 71
    .local v0, "info":Lcom/meizu/sharewidget/utils/DisplayResolveInfo;
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;

    .line 83
    .local v1, "viewHolder":Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;
    :goto_0
    iget-object v2, v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 87
    :goto_1
    iget-boolean v2, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->isTransform:Z

    if-eqz v2, :cond_2

    .line 91
    :goto_2
    iget-object v2, v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mStyle:I

    sget v3, Lcom/meizu/sharewidget/R$style;->Widget_Flyme_ShareView_Night:I

    if-eq v2, v3, :cond_3

    .line 96
    iget-object v2, v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->container:Landroid/view/View;

    sget v3, Lcom/meizu/sharewidget/R$drawable;->gridview_selector:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    iget-object v2, v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 100
    :goto_3
    return-object p2

    .line 72
    .end local v1    # "viewHolder":Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/meizu/sharewidget/R$layout;->share_grid_item:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;

    invoke-direct {v1, p2}, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    .restart local v1    # "viewHolder":Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    iget v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mStyle:I

    invoke-static {p2, v2}, Lcom/meizu/sharewidget/utils/ColorUiUtil;->changeStyle(Landroid/view/View;I)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v2}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 88
    :cond_2
    iget-object v2, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->isTransform:Z

    goto :goto_2

    .line 93
    :cond_3
    iget-object v2, v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->container:Landroid/view/View;

    sget v3, Lcom/meizu/sharewidget/R$drawable;->gridview_selector_dark:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    iget-object v2, v1, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3
.end method

.method public intentForPosition(IZ)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 154
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-object v1, v3

    .line 156
    .local v1, "dri":Lcom/meizu/sharewidget/utils/DisplayResolveInfo;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    .line 158
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    iget-object v3, v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 160
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    return-object v2

    .line 154
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "dri":Lcom/meizu/sharewidget/utils/DisplayResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->getItem(I)Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-result-object v1

    goto :goto_0

    .line 156
    .restart local v1    # "dri":Lcom/meizu/sharewidget/utils/DisplayResolveInfo;
    :cond_1
    iget-object v3, v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 120
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    .local v1, "iconRes":I
    if-nez v1, :cond_4

    .line 136
    .end local v1    # "iconRes":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 117
    :cond_2
    return-object v0

    .line 120
    :cond_3
    :try_start_1
    iget v2, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v2, v3}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    return-object v0

    .line 128
    .restart local v1    # "iconRes":I
    :cond_4
    iget-object v2, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    return-object v0

    .line 135
    .end local v1    # "iconRes":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 150
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    :goto_0
    iget-object v0, v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->getItem(I)Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public setStyleMode(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->mStyle:I

    .line 183
    return-void
.end method
