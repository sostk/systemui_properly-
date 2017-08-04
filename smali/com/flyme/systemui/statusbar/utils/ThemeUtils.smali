.class public Lcom/flyme/systemui/statusbar/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;
    }
.end annotation


# static fields
.field private static mResourceField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageViewResourceId(Landroid/widget/ImageView;)I
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 41
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->getResourceField()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 42
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 49
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static getResourceField()Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    .line 27
    const-class v2, Landroid/widget/ImageView;

    monitor-enter v2

    .line 28
    :try_start_0
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 30
    :try_start_1
    const-class v1, Landroid/widget/ImageView;

    const-string/jumbo v3, "mResource"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;

    .line 31
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 32
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v0

    .line 33
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    .line 117
    return-void
.end method

.method public static refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V
    .locals 4
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "recursion"    # Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;

    .prologue
    .line 122
    if-eqz p0, :cond_4

    .line 123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 124
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 125
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;

    if-eqz v3, :cond_1

    .line 127
    check-cast v0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;->refreshFont()V

    .line 124
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 130
    if-eqz p2, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {p2, v3}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;->isHandle(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    goto :goto_1

    .line 134
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 121
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4
    return-void
.end method

.method public static refreshFont(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 80
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public static refreshResource(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-eqz p0, :cond_3

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 55
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 56
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;

    if-eqz v3, :cond_1

    .line 58
    check-cast v0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;->refreshResource()V

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 61
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshResource(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 63
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 64
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshResource(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 52
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    return-void
.end method

.method public static refreshResource(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->getImageViewResourceId(Landroid/widget/ImageView;)I

    move-result v0

    .line 74
    .local v0, "resID":I
    if-lez v0, :cond_0

    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public static refreshThemeFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "recursion"    # Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;

    .prologue
    .line 97
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    .line 96
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    goto :goto_0
.end method
