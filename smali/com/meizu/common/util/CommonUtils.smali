.class public Lcom/meizu/common/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtils"

.field private static isFlymeOS:Ljava/lang/Boolean;

.field private static isFlymeOS4:Ljava/lang/Boolean;

.field private static mMethodGetString:Ljava/lang/reflect/Method;

.field private static sIsFlymeRom:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    .line 29
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    .line 30
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PreferenceActivity_setActionBarToTop(Landroid/preference/PreferenceActivity;Z)Z
    .locals 1
    .param p0, "activity"    # Landroid/preference/PreferenceActivity;
    .param p1, "toTop"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public static TextView_setEmojiAlphaEnabled(Landroid/widget/TextView;Z)Z
    .locals 9
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 126
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    :goto_0
    return v7

    :cond_0
    :try_start_0
    const-string/jumbo v2, "android.widget.TextView"

    .line 128
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setEmojiAlphaEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    .line 133
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return v8

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CommonUtils"

    const-string/jumbo v3, "TextView.setEmojiAlphaEnabled fail to be invoked!"

    .line 136
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static TextView_startSelectionActionMode(Landroid/widget/TextView;)Z
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    :goto_0
    return v5

    :cond_0
    :try_start_0
    const-string/jumbo v2, "android.widget.TextView"

    .line 150
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "startSelectionActionMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 152
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CommonUtils"

    const-string/jumbo v3, "TextView.startSelectionActionMode fail to be invoked!"

    .line 154
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    :try_start_0
    const-class v0, Landroid/os/Build;

    .line 86
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const-string/jumbo v1, "getString"

    const/4 v2, 0x1

    .line 87
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    .line 88
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 93
    return-object v5
.end method

.method public static isFlymeOS()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 42
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4()Z

    move-result v0

    .line 43
    .local v0, "isFlymeOS4":Z
    if-nez v0, :cond_1

    .line 46
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    .line 48
    :goto_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 41
    .end local v0    # "isFlymeOS4":Z
    :cond_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 44
    .restart local v0    # "isFlymeOS4":Z
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 51
    return v2
.end method

.method public static isFlymeOS4()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 63
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .local v1, "display":Ljava/lang/String;
    const-string/jumbo v2, "ro.build.description"

    .line 64
    invoke-static {v2}, Lcom/meizu/common/util/CommonUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "description":Ljava/lang/String;
    const-string/jumbo v2, "Flyme OS 4"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    .line 71
    :goto_0
    sget-object v2, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 62
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "display":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 65
    .restart local v0    # "description":Ljava/lang/String;
    .restart local v1    # "display":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 69
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    goto :goto_0

    .line 71
    .end local v0    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 74
    return v3

    .restart local v0    # "description":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, ".*"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public static isFlymeRom()Z
    .locals 9

    .prologue
    .line 183
    sget-object v4, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 199
    .local v2, "property":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .end local v2    # "property":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "ro.meizu.rom.config"

    .restart local v2    # "property":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    .line 186
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 187
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "unknown"

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "romConfig":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 191
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v4, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "romConfig":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CommonUtils"

    const-string/jumbo v5, "CommonUtil.isFlymeRom() fail to be invoked!"

    .line 194
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v4, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "romConfig":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "true"

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v4, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDarkStatusBarIcon(Landroid/view/Window;Z)Z
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "on"    # Z

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createSpannableStringBuilder(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textsize"    # I
    .param p3, "textcolor"    # I

    .prologue
    const/16 v4, 0x22

    const/4 v3, 0x0

    .line 168
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .local v0, "style":Landroid/text/SpannableStringBuilder;
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 172
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
