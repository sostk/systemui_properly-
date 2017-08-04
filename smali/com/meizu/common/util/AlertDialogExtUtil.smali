.class public Lcom/meizu/common/util/AlertDialogExtUtil;
.super Ljava/lang/Object;
.source "AlertDialogExtUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/AlertDialogExtUtil$ButtonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertDialogExtUtil"

.field public static final TITLE_CENTER_HIGHLIGHT:I = 0x1

.field private static alertDialogClazz:Ljava/lang/Class;

.field private static setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

.field private static setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

.field private static setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

.field private static setMaxHeightMethod:Ljava/lang/reflect/Method;

.field private static setMessageMethod:Ljava/lang/reflect/Method;

.field private static setTitleStyleMethod:Ljava/lang/reflect/Method;

.field private static setWidthMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 28
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->setWidthMethod:Ljava/lang/reflect/Method;

    .line 29
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->setMaxHeightMethod:Ljava/lang/reflect/Method;

    .line 30
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->setMessageMethod:Ljava/lang/reflect/Method;

    .line 31
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

    .line 32
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

    .line 33
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

    .line 34
    sput-object v0, Lcom/meizu/common/util/AlertDialogExtUtil;->setTitleStyleMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method public static setAutoShowSoftInput(Landroid/app/AlertDialog;Z)Z
    .locals 8
    .param p0, "target"    # Landroid/app/AlertDialog;
    .param p1, "show"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 92
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v7

    .line 94
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 100
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 102
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return v6

    :cond_2
    const-class v1, Landroid/app/AlertDialog;

    .line 95
    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 96
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    const-string/jumbo v2, "setAutoShowSoftInput"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

    .line 97
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setAutoShowSoftInputMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return v6

    .line 108
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlertDialogExtUtil"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutoShowSoftInput fail to be invoked.Caused by:"

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

.method public static setButtonTextColor(Landroid/app/AlertDialog;II)Z
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "whichButton"    # I
    .param p2, "textColorRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 78
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_2

    .line 81
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 76
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    return v1

    .line 78
    .restart local v0    # "button":Landroid/widget/Button;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setButtonUnDismissOnClick(Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "whichButton"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 248
    if-eqz p0, :cond_1

    .line 249
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 250
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_2

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 248
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    return-void

    .line 250
    .restart local v0    # "button":Landroid/widget/Button;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Lcom/meizu/common/util/AlertDialogExtUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/common/util/AlertDialogExtUtil$1;-><init>(Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static setCustEditViewHasMargin(Landroid/app/AlertDialog;Z)Z
    .locals 8
    .param p0, "target"    # Landroid/app/AlertDialog;
    .param p1, "flag"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 214
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v7

    .line 216
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 222
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 223
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return v6

    :cond_2
    const-class v1, Landroid/app/AlertDialog;

    .line 217
    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 218
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    const-string/jumbo v2, "setCustEditViewHasMargin"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

    .line 219
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 220
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setCustEditViewHasMarginMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return v6

    .line 230
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlertDialogExtUtil"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustEditViewHasMargin fail to be invoked.Caused by:"

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

.method public static setListViewLayoutWidth(Landroid/app/AlertDialog;I)Z
    .locals 8
    .param p0, "target"    # Landroid/app/AlertDialog;
    .param p1, "width"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 307
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v7

    .line 309
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 315
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 317
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return v6

    :cond_2
    const-class v1, Landroid/app/AlertDialog;

    .line 310
    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 311
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    const-string/jumbo v2, "setListViewLayoutWidth"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

    .line 312
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 313
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setListViewLayoutWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    return v6

    .line 323
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlertDialogExtUtil"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setListViewLayoutWidth fail to be invoked.Caused by:"

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

.method public static setMaxHeight(Landroid/app/AlertDialog;I)Z
    .locals 8
    .param p0, "target"    # Landroid/app/AlertDialog;
    .param p1, "maxHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v7

    .line 156
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 162
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMaxHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMaxHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 164
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMaxHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return v6

    :cond_2
    const-class v1, Landroid/app/AlertDialog;

    .line 157
    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 158
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    const-string/jumbo v2, "setMaxHeight"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMaxHeightMethod:Ljava/lang/reflect/Method;

    .line 159
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMaxHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 160
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMaxHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return v6

    .line 169
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlertDialogExtUtil"

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxHeight fail to be invoked.Caused by:"

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

.method public static setMessage(Landroid/app/AlertDialog;Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p0, "target"    # Landroid/app/AlertDialog;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "alignType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 187
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v7

    .line 189
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 195
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMessageMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 196
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMessageMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 197
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMessageMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return v6

    :cond_2
    const-class v1, Landroid/app/AlertDialog;

    .line 190
    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 191
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    const-string/jumbo v2, "setMessage"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMessageMethod:Ljava/lang/reflect/Method;

    .line 192
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMessageMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 193
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setMessageMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return v6

    .line 203
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlertDialogExtUtil"

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMessage fail to be invoked.Caused by:"

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

.method public static setTitleStyle(Landroid/app/AlertDialog;I)Z
    .locals 8
    .param p0, "target"    # Landroid/app/AlertDialog;
    .param p1, "style"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 125
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v7

    .line 127
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 133
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setTitleStyleMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setTitleStyleMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 135
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setTitleStyleMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return v6

    :cond_2
    const-class v1, Landroid/app/AlertDialog;

    .line 128
    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 129
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    const-string/jumbo v2, "setTitleStyle"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setTitleStyleMethod:Ljava/lang/reflect/Method;

    .line 130
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setTitleStyleMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 131
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setTitleStyleMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return v6

    .line 141
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlertDialogExtUtil"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTitleStyle fail to be invoked.Caused by:"

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

.method public static setWidth(Landroid/app/AlertDialog;I)Z
    .locals 8
    .param p0, "target"    # Landroid/app/AlertDialog;
    .param p1, "width"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 43
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v7

    .line 45
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 51
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setWidthMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return v6

    :cond_2
    const-class v1, Landroid/app/AlertDialog;

    .line 46
    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    .line 47
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->alertDialogClazz:Ljava/lang/Class;

    const-string/jumbo v2, "setWidth"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setWidthMethod:Ljava/lang/reflect/Method;

    .line 48
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    sget-object v1, Lcom/meizu/common/util/AlertDialogExtUtil;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return v6

    .line 59
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlertDialogExtUtil"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWidth fail to be invoked.Caused by:"

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
