.class public Lcom/flyme/systemui/recents/misc/Console;
.super Ljava/lang/Object;
.source "Console.java"


# static fields
.field public static Enabled:Z

.field public static final mTimeLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flyme/systemui/recents/misc/Console;->Enabled:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v0, "Recents"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public static trimMemoryLevelToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 177
    sparse-switch p0, :sswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :sswitch_0
    const-string/jumbo v0, "UI Hidden"

    return-object v0

    .line 181
    :sswitch_1
    const-string/jumbo v0, "Running Moderate"

    return-object v0

    .line 183
    :sswitch_2
    const-string/jumbo v0, "Background"

    return-object v0

    .line 185
    :sswitch_3
    const-string/jumbo v0, "Running Low"

    return-object v0

    .line 187
    :sswitch_4
    const-string/jumbo v0, "Moderate"

    return-object v0

    .line 189
    :sswitch_5
    const-string/jumbo v0, "Critical"

    return-object v0

    .line 191
    :sswitch_6
    const-string/jumbo v0, "Complete"

    return-object v0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_3
        0xf -> :sswitch_5
        0x14 -> :sswitch_0
        0x28 -> :sswitch_2
        0x3c -> :sswitch_4
        0x50 -> :sswitch_6
    .end sparse-switch
.end method
