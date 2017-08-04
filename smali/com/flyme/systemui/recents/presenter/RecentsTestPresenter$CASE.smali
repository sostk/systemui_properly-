.class public final enum Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;
.super Ljava/lang/Enum;
.source "RecentsTestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CASE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

.field public static final enum DOWN_2_CANCEL:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

.field public static final enum DOWN_2_COMPLETE:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

.field public static final enum DOWN_MOVE_NOUP:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

.field public static final enum DOWN_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

.field public static final enum UP_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    const-string/jumbo v1, "DOWN_2_COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_2_COMPLETE:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    new-instance v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    const-string/jumbo v1, "DOWN_2_CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_2_CANCEL:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    new-instance v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    const-string/jumbo v1, "DOWN_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    new-instance v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    const-string/jumbo v1, "UP_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->UP_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    new-instance v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    const-string/jumbo v1, "DOWN_MOVE_NOUP"

    invoke-direct {v0, v1, v6}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_MOVE_NOUP:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_2_COMPLETE:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_2_CANCEL:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->UP_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_MOVE_NOUP:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->$VALUES:[Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    return-object v0
.end method

.method public static values()[Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->$VALUES:[Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    return-object v0
.end method
