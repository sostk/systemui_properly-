.class public final enum Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;
.super Ljava/lang/Enum;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEYGUARD_SLIDE_ORIENTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

.field public static final enum DOWN:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

.field public static final enum LEFT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

.field public static final enum RIGHT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

.field public static final enum UP:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->LEFT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->RIGHT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->UP:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v5}, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->DOWN:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    .line 348
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->LEFT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->RIGHT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->UP:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->DOWN:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->$VALUES:[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    const-class v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    return-object v0
.end method

.method public static values()[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->$VALUES:[Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    return-object v0
.end method
