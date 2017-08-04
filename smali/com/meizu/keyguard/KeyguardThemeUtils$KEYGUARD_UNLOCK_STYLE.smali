.class public final enum Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;
.super Ljava/lang/Enum;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEYGUARD_UNLOCK_STYLE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

.field public static final enum DEFAULT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

.field public static final enum SELECT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

.field public static final enum SLIDE:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->DEFAULT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    const-string/jumbo v1, "SLIDE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->SLIDE:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    const-string/jumbo v1, "SELECT"

    invoke-direct {v0, v1, v4}, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->SELECT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    .line 344
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->DEFAULT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->SLIDE:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->SELECT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->$VALUES:[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 344
    const-class v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    return-object v0
.end method

.method public static values()[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->$VALUES:[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    return-object v0
.end method
