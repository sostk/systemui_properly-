.class public Lcom/meizu/flyme/activeview/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static SHOW_ERR_WNR_LOG:Z = false

.field private static SHOW_INFO_DEBUG_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "LogUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_ERR_WNR_LOG:Z

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_INFO_DEBUG_LOG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static closeLog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_INFO_DEBUG_LOG:Z

    .line 22
    sput-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_ERR_WNR_LOG:Z

    .line 23
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_INFO_DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "LogUtil"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_INFO_DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_ERR_WNR_LOG:Z

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "LogUtil"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_ERR_WNR_LOG:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_INFO_DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "LogUtil"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_INFO_DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "meizu_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 38
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_ERR_WNR_LOG:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_ERR_WNR_LOG:Z

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "LogUtil"

    .line 75
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lcom/meizu/flyme/activeview/utils/LogUtil;->SHOW_ERR_WNR_LOG:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
