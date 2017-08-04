.class public final enum Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;
.super Ljava/lang/Enum;
.source "RecentsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/RecentsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecentsDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

.field public static final enum BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

.field public static final enum LEFT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

.field public static final enum RIGHT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->LEFT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    new-instance v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    new-instance v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->RIGHT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->LEFT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->RIGHT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->$VALUES:[Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    return-object v0
.end method

.method public static values()[Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->$VALUES:[Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    return-object v0
.end method
