.class public Lcom/meizu/common/util/PopupWindowUtils;
.super Ljava/lang/Object;
.source "PopupWindowUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowUtils"

.field private static adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

.field private static clazz:Ljava/lang/Class;

.field private static popLayoutModeClazz:Ljava/lang/Class;

.field private static popUpClazz:Ljava/lang/Class;

.field private static popupLayoutModeClazz:Ljava/lang/Class;

.field private static setContentHeightMethod:Ljava/lang/reflect/Method;

.field private static setLayoutModeMethod:Ljava/lang/reflect/Method;

.field private static setPopupLayoutModeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    .line 18
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    .line 20
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->popUpClazz:Ljava/lang/Class;

    .line 21
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    .line 23
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    .line 24
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->popupLayoutModeClazz:Ljava/lang/Class;

    .line 27
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustWindowPositionForMz(Ljava/lang/Object;Z)Z
    .locals 8
    .param p0, "popupObject"    # Ljava/lang/Object;
    .param p1, "adjust"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 67
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v7

    .line 69
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->popUpClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 75
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 77
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return v6

    .line 70
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->popUpClazz:Ljava/lang/Class;

    .line 71
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string/jumbo v2, "adjustWindowPositionForMz"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    .line 72
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return v6

    .line 84
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PopupWindowUtils"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#adjustWindowPositionForMz fail to be invoked.Caused by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContentHeight(Landroid/widget/ListPopupWindow;I)Z
    .locals 8
    .param p0, "listPopupWindow"    # Landroid/widget/ListPopupWindow;
    .param p1, "height"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 36
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 57
    :cond_0
    return v6

    .line 38
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 44
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return v6

    :cond_2
    const-class v1, Landroid/widget/ListPopupWindow;

    .line 39
    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    .line 40
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string/jumbo v2, "setContentHeight"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    .line 41
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return v6

    .line 53
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PopupWindowUtils"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContentHeight fail to be invoked.Caused by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v7
.end method

.method public static setLayoutMode(Ljava/lang/Object;I)Z
    .locals 8
    .param p0, "popupObject"    # Ljava/lang/Object;
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 102
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v7

    .line 104
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 110
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PopupWindowUtils"

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#setLayoutMode fail to be invoked.Caused by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    .line 106
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string/jumbo v2, "setLayoutMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    .line 107
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    return v6
.end method

.method public static setPopupLayoutMode(Ljava/lang/Object;I)Z
    .locals 8
    .param p0, "popupObject"    # Ljava/lang/Object;
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 135
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v7

    .line 137
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 143
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return v6

    .line 138
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    .line 139
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string/jumbo v2, "setPopupLayoutMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    .line 140
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 141
    sget-object v1, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return v6

    .line 151
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PopupWindowUtils"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "popupObject#setPopupLayoutMode fail to be invoked.Caused by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
