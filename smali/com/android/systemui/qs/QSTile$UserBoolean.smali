.class public final enum Lcom/android/systemui/qs/QSTile$UserBoolean;
.super Ljava/lang/Enum;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "UserBoolean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/qs/QSTile$UserBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum BACKGROUND_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum USER_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;


# instance fields
.field public final intermediate:Z

.field public final userInitiated:Z

.field public final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    new-instance v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string/jumbo v1, "USER_TRUE"

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 448
    new-instance v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string/jumbo v5, "USER_FALSE"

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 449
    new-instance v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string/jumbo v5, "USER_INPROGRESS"

    move v6, v10

    move v7, v3

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 450
    new-instance v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string/jumbo v5, "BACKGROUND_TRUE"

    move v6, v11

    move v7, v2

    move v8, v3

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 451
    new-instance v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string/jumbo v5, "BACKGROUND_FALSE"

    move v6, v12

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 452
    new-instance v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string/jumbo v5, "BACKGROUND_INPROGRESS"

    const/4 v6, 0x5

    move v7, v2

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 446
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/qs/QSTile$UserBoolean;

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->$VALUES:[Lcom/android/systemui/qs/QSTile$UserBoolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .param p3, "userInitiated"    # Z
    .param p4, "value"    # Z
    .param p5, "intermediate"    # Z

    .prologue
    .line 456
    .local p0, "this":Lcom/android/systemui/qs/QSTile$UserBoolean;, "Lcom/android/systemui/qs/QSTile<TTState;>.UserBoolean;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 457
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 458
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 459
    iput-boolean p5, p0, Lcom/android/systemui/qs/QSTile$UserBoolean;->intermediate:Z

    .line 456
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$UserBoolean;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 446
    const-class v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/QSTile$UserBoolean;
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->$VALUES:[Lcom/android/systemui/qs/QSTile$UserBoolean;

    return-object v0
.end method
