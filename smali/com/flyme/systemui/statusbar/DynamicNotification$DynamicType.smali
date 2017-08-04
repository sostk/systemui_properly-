.class public final enum Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
.super Ljava/lang/Enum;
.source "DynamicNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

.field public static final enum Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

.field public static final enum Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

.field public static final enum None:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    const-string/jumbo v1, "Anim"

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    new-instance v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    const-string/jumbo v1, "Active"

    invoke-direct {v0, v1, v3}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    new-instance v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->None:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    sget-object v1, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->None:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->$VALUES:[Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v0
.end method

.method public static values()[Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->$VALUES:[Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v0
.end method
